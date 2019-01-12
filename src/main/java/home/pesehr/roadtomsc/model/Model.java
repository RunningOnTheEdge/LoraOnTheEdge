package main.java.home.pesehr.roadtomsc.model;

import ilog.concert.*;
import main.java.home.pesehr.roadtomsc.domain.Machine;

public class Model {

    private IloModeler modeler;

    private Config cfg;

    private IloIntVar[][][] x;

    private IloIntVar[] c;

    public Model(IloModeler modeler, Config cfg) {
        this.modeler = modeler;
        this.cfg = cfg;

    }

    public Model variables() throws IloException {

        x = new IloIntVar[this.cfg.getNumOfMachines()][this.cfg.getNumOfTasks()+2][this.cfg.getNumOfTasks()+2];
        for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
            for (int j = 0; j < this.cfg.getNumOfTasks()+2; j++) {
                for (int k = 0; k < this.cfg.getNumOfTasks()+2; k++) {
                    x[i][j][k] = modeler.boolVar(i+j+k+"");
                }
            }
        }

        c = new IloIntVar[this.cfg.getNumOfTasks() + 1];
        for (int j = 0; j < this.cfg.getNumOfTasks()+1; j++) {
            c[j] = modeler.intVar(0, Integer.MAX_VALUE,j+"");
        }

        return this;
    }

    public Model objective() throws IloException {

        for (int i = 0; i < this.cfg.getNumOfTasks()+1; i++) {
            IloIntExpr expr = modeler.prod(this.cfg.getTasks().get(i).getWeight(),
                    modeler.sum(-1 * this.cfg.getTasks().get(i).getDeadline(), c[i]));
            this.modeler.addMinimize(expr);
        }
        return this;
    }

    public Model constraints() throws IloException {
        firstConstraint();
        secondConstraint();
        thirdConstraint();
        forthConstraint();
        return this;
    }

    private void firstConstraint() throws IloException {
        for (int j = 1; j < this.cfg.getNumOfTasks()+1; j++) {
            IloLinearNumExpr first = this.modeler.linearNumExpr();
            for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
                for (int k = 1; k < this.cfg.getNumOfTasks() + 1; k++) {
                    first.addTerm(1,x[i][k][j]);
                }
            }
            this.modeler.addLe(first, 1,
                    String.format("first_constraint"));

        }
    }

    private void secondConstraint() throws IloException {
        for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
            IloLinearNumExpr second = this.modeler.linearNumExpr();
         if(this.cfg.getMachines().get(i).getType() == Machine.Type.fog)
            for (int k = 1; k < this.cfg.getNumOfTasks() + 1; k++) {
                second.addTerm(1,x[i][0][k]);
            }
            this.modeler.addLe(second, 1,
                    String.format("second_constraint"));
        }
    }


    private void thirdConstraint() throws IloException {
        for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
            for (int j = 1; j < this.cfg.getNumOfTasks()+1; j++) {
                IloLinearNumExpr x1 = this.modeler.linearNumExpr();
                IloLinearNumExpr x2 = this.modeler.linearNumExpr();
                for (int k = 0; k < this.cfg.getNumOfTasks() ; k++) {
                    x1.addTerm(1,x[i][k][j]);
                }
                for (int k = 1; k < this.cfg.getNumOfTasks()+1 ; k++) {
                    x2.addTerm(1,x[i][j][k]);
                }
                this.modeler.eq(x1,x2,"third_constraint");
            }
        }
    }

    private void forthConstraint() throws IloException {
        for (int j = 1; j < this.cfg.getNumOfTasks()+1; j++){
            IloLinearNumExpr forth = this.modeler.linearNumExpr();
            for (int i = 0; i < this.cfg.getNumOfTasks()+1; i++){
                for (int k = 0; k < this.cfg.getNumOfMachines(); k++) {
                    if(this.cfg.getMachines().get(k).getType() == Machine.Type.fog)
                    {
                        forth.addTerm(1, (IloNumVar) modeler.prod(x[k][i][j],
                                modeler.sum(c[j],this.cfg.getTasks().get(j).getRequiredComputingPower()/
                        this.cfg.getMachines().get(k).getComputingPower())));
                    }else{
                        forth.addTerm(1, (IloNumVar) modeler.prod(x[k][i][j],
                                this.cfg.getTasks().get(j).getSizeOfData()/
                                        this.cfg.getMachines().get(k).getLinkRate()+
                               this.cfg.getTasks().get(j).getRequiredComputingPower()/
                                        this.cfg.getMachines().get(k).getComputingPower()));
                    }
                }
            }
            this.modeler.eq(c[j],forth,"forth_constraint");
        }
    }

}
