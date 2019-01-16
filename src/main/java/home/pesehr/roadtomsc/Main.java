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
        Config conf = new Config(5,3);
        conf.addMachine(new Machine(0,10,10,Machine.Type.cloud));
        conf.addMachine(new Machine(1,2,10,Machine.Type.fog));
        conf.addMachine(new Machine(2,2,10,Machine.Type.fog));

        conf.addTask(new Task(1,1,5,100,10));
        conf.addTask(new Task(2,1,5,100,10));
        conf.addTask(new Task(3,3,5,100,10));
        conf.addTask(new Task(4,3,10,100,10));
        conf.addTask(new Task(5,2,10,100,10));


        try {
            IloCplex cplex = new IloCplex();
            Model model = new Model(cplex, conf);
            model.variables().objective().constraints();
            cplex.exportModel("simulation.lp");

            if (cplex.solve()) {
                System.out.println();
                System.out.println(" Solution Status = " + cplex.getStatus());
                System.out.println();
                System.out.println(" cost = " + cplex.getObjValue());
                int cloud = 0;
                int dcloud = 0;
                int dfog = 0;
                for (int j = 0; j < conf.getNumOfTasks(); j++) {
                    int cost = conf.getTasks().get(j).getRequiredComputingPower()/conf.getMachines().get(0).getComputingPower()
                            + conf.getTasks().get(j).getSizeOfData()/conf.getMachines().get(0).getLinkRate();
                    cloud += conf.getTasks().get(j).getWeight()*(-conf.getTasks().get(j).getDeadline()
                            + cost);
                    if(cost > conf.getTasks().get(j).getDeadline())
                        dcloud+=conf.getTasks().get(j).getWeight();
                }
                System.out.println("cloud cost = " + cloud);
                System.out.println("deadline cost cloud = " + dcloud);
                for (int i = 0; i < conf.getNumOfMachines(); i++) {
                    for (int j = 0; j < conf.getNumOfTasks()+2; j++) {
                        for (int k = 0; k < conf.getNumOfTasks()+2; k++) {
                            try {
                                if (cplex.getValue(model.x[i][j][k]) > 0 && k < conf.getNumOfTasks()+1) {
                                    System.out.println("Task Number " + k + " execute on machine " + i + " after " + j + " with cost:"+
                                            cplex.getValue(model.c[k]) +" deadline:" + conf.getTasks().get(k-1).getDeadline() );
                                    if(conf.getTasks().get(k-1).getDeadline() <     cplex.getValue(model.c[k]))
                                        dfog+=conf.getTasks().get(k-1).getWeight();
                                }
                            }catch (IloCplex.UnknownObjectException ignored){

                            }
                        }
                    }
                }
                System.out.println("deadline cost fog = " + dfog);
                System.out.println();
            }
        } catch (IloException e) {
            e.printStackTrace();
        }




    }
}
