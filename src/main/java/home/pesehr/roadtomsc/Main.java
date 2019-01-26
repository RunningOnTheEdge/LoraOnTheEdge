package main.java.home.pesehr.roadtomsc;

import ilog.concert.IloException;
import ilog.cplex.CplexI;
import ilog.cplex.IloCplex;
import main.java.home.pesehr.roadtomsc.domain.Machine;
import main.java.home.pesehr.roadtomsc.domain.Task;
import main.java.home.pesehr.roadtomsc.model.Config;
import main.java.home.pesehr.roadtomsc.model.Model;

public class Main {
  public static void main(String[] args) {
    Config conf = new Config(10, 2);
    conf.addMachine(new Machine(0, 20, 10, Machine.Type.cloud));
    conf.addMachine(new Machine(1, 10, 10, Machine.Type.fog));
    // conf.addMachine(new Machine(2,10,10,Machine.Type.fog));

    conf.addTask(new Task(1, 1, 200, 213, 1440));
    conf.addTask(new Task(2, 1, 200, 234, 1345));
    conf.addTask(new Task(3, 1, 200, 785, 2345));
    conf.addTask(new Task(4, 1, 200, 800, 234));
    conf.addTask(new Task(5, 1, 200, 565, 124));
    conf.addTask(new Task(1, 1, 200, 213, 1440));
    conf.addTask(new Task(2, 1, 200, 234, 1345));
    conf.addTask(new Task(3, 1, 200, 785, 2345));
    conf.addTask(new Task(4, 1, 200, 800, 234));
    conf.addTask(new Task(5, 1, 200, 565, 124));
    conf.addTask(new Task(1, 1, 200, 213, 1440));
    conf.addTask(new Task(2, 1, 200, 234, 1345));
    conf.addTask(new Task(3, 1, 200, 785, 2345));
    conf.addTask(new Task(4, 1, 200, 800, 234));
    conf.addTask(new Task(5, 1, 200, 565, 124));
    conf.addTask(new Task(1, 1, 200, 213, 1440));
    conf.addTask(new Task(2, 1, 200, 234, 1345));
    conf.addTask(new Task(3, 1, 200, 785, 2345));
    conf.addTask(new Task(4, 1, 200, 800, 234));
    conf.addTask(new Task(5, 1, 200, 565, 124));

    try {
      IloCplex cplex = new IloCplex();
      Model model = new Model(cplex, conf);
      model.variables().objective3().constraints();
      cplex.exportModel("simulation.lp");

      if (cplex.solve()) {
        System.out.println();
        System.out.println(" Solution Status = " + cplex.getStatus());
        System.out.println();
        System.out.println(" cost = " + cplex.getObjValue());
        int cloud = 0;
        int dcloud = 0;
        int dfog = 0;
        int cfog = 0;
        int ccfog = 0;
        for (int j = 0; j < conf.getNumOfTasks(); j++) {
          int cost = conf.getTasks().get(j).getRequiredComputingPower() / conf.getMachines().get(0).getComputingPower()
                  + conf.getTasks().get(j).getSizeOfData() / conf.getMachines().get(0).getLinkRate();
//                    cloud += conf.getTasks().get(j).getWeight()*(-conf.getTasks().get(j).getDeadline()
//                            + cost);
          cloud += cost;
//          cloud = Math.max(cost, cloud);

          if (cost > conf.getTasks().get(j).getDeadline())
            dcloud += conf.getTasks().get(j).getWeight();
        }
        System.out.println("cloud cost = " + cloud);
        System.out.println("deadline cost cloud = " + dcloud);
        for (int i = 0; i < conf.getNumOfMachines(); i++) {
          for (int j = 0; j < conf.getNumOfTasks() + 2; j++) {
            for (int k = 1; k < conf.getNumOfTasks() + 2; k++) {
              try {
                if (cplex.getValue(model.x[i][j][k]) > 0 && k < conf.getNumOfTasks() + 1) {
                  System.out.print("Task Number " + k + " execute on machine " + i + " after " + j + " with cost:" +
                          cplex.getValue(model.c[k]) + " deadline:" + conf.getTasks().get(k - 1).getDeadline());
                  System.out.print(" z " + cplex.getValue(model.z[k - 1]));
                  System.out.println(" y " + cplex.getValue(model.y[k - 1]));

//                  if (i == 0)
//                    ccfog = Math.max(ccfog, (int) cplex.getValue(model.c[k]));
//                  else
                    cfog += cplex.getValue(model.c[k]);
                  // System.out.println(" l "+  cplex.getValue(model.l[k-1]));
                  if (conf.getTasks().get(k - 1).getDeadline() < cplex.getValue(model.c[k]))
                    dfog += conf.getTasks().get(k - 1).getWeight();
                }
              } catch (IloCplex.UnknownObjectException ignored) {

              }
            }
          }
        }
        System.out.println(" cost fog = " + Math.max(cfog,ccfog));
        System.out.println("deadline cost fog = " + dfog);
        System.out.println();

      }
    } catch (IloException e) {
      e.printStackTrace();
    }


  }
}
