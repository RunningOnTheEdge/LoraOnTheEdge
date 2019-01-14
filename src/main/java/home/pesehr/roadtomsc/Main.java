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
        Config conf = new Config(3,2);
        conf.addMachine(new Machine(0,10,2,Machine.Type.cloud));
        conf.addMachine(new Machine(1,2,10,Machine.Type.fog));

        conf.addTask(new Task(1,1,10,100,10));
        conf.addTask(new Task(2,1,10,100,10));
        conf.addTask(new Task(3,1,100,100,10));
        // conf.addTask(new Task(4,1,10,10,10));
        // conf.addTask(new Task(5,1,10,10,10));

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
                System.out.println();
                for (int i = 0; i < conf.getNumOfMachines(); i++) {
                    for (int j = 0; j < conf.getNumOfTasks()+2; j++) {
                        for (int k = 0; k < conf.getNumOfTasks()+2; k++) {
                            try {
                                if (cplex.getValue(model.x[i][j][k]) > 0 && k < conf.getNumOfTasks()+1) {
                                    System.out.println("Task Number " + k + " execute on machine " + i + " after " + j + " with cost:"+
                                            cplex.getValue(model.c[k]));
                                }
                            }catch (IloCplex.UnknownObjectException ignored){

                            }
                        }
                    }
                }
            }
        } catch (IloException e) {
            e.printStackTrace();
        }




    }
}
