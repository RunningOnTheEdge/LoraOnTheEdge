package main.java.home.pesehr.roadtomsc.model;

import ilog.concert.*;
import ilog.cplex.IloCplex;
import main.java.home.pesehr.roadtomsc.domain.Machine;

public class Model {

  private IloCplex modeler;

  private Config cfg;

  public IloIntVar[][][] x;

  public IloIntVar[] c;
  public IloIntVar[] y;
  public IloIntVar[] z;
  public IloIntVar m;
  public IloIntVar w;

  private IloIntVar[][][] p;
  public IloIntVar[] l;
  private int deadlineWeight = 100;

  public Model(IloCplex modeler, Config cfg) {
    this.modeler = modeler;
    this.cfg = cfg;

  }

  public Model variables() throws IloException {

    x = new IloIntVar[this.cfg.getNumOfMachines()][this.cfg.getNumOfTasks() + 2][this.cfg.getNumOfTasks() + 2];
    for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
      for (int j = 0; j < this.cfg.getNumOfTasks() + 2; j++) {
        for (int k = 0; k < this.cfg.getNumOfTasks() + 2; k++) {
          x[i][j][k] = modeler.boolVar("X_" + i + "_" + j + "_" + k);
        }
      }
    }

    c = new IloIntVar[this.cfg.getNumOfTasks() + 1];
    for (int j = 0; j < this.cfg.getNumOfTasks() + 1; j++) {
      c[j] = modeler.intVar(-10000, 10000, "c" + j);
    }
    c[0] = modeler.intVar(0, 0, "c0");

    p = new IloIntVar[this.cfg.getNumOfMachines()][this.cfg.getNumOfTasks() + 2][this.cfg.getNumOfTasks() + 2];
    for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
      for (int j = 0; j < this.cfg.getNumOfTasks() + 2; j++) {
        for (int k = 0; k < this.cfg.getNumOfTasks() + 2; k++) {
          p[i][j][k] = modeler.intVar(0, 10000, "P_" + i + "_" + j + "_" + k);
        }
      }
    }

    y = new IloIntVar[this.cfg.getNumOfTasks()];
    for (int j = 0; j < this.cfg.getNumOfTasks(); j++) {
      y[j] = modeler.boolVar("y_" + (j + 1));
    }

    z = new IloIntVar[this.cfg.getNumOfTasks()];
    for (int j = 0; j < this.cfg.getNumOfTasks(); j++) {
      z[j] = modeler.boolVar("z_" + (j + 1));
    }

    m = modeler.intVar(0, 10000, "m");
    w = modeler.intVar(0, 10000, "m");
    return this;
  }

  public Model objective2() throws IloException {
    IloLinearNumExpr expr = this.modeler.linearNumExpr();
    for (int i = 1; i < this.cfg.getNumOfTasks() + 1; i++) {
      IloIntVar temp = modeler.intVar(-1 * this.cfg.getTasks().get(i - 1).getDeadline(),
              -1 * this.cfg.getTasks().get(i - 1).getDeadline(), "D" + (i));
      expr.addTerm(this.cfg.getTasks().get(i - 1).getWeight(), c[i]);
      expr.addTerm(this.cfg.getTasks().get(i - 1).getWeight(), temp);

    }
    this.modeler.addMinimize(expr);
    return this;
  }


  public Model objective3() throws IloException {
    IloQuadIntExpr expr = this.modeler.quadIntExpr();
    for (int i = 1; i < this.cfg.getNumOfTasks() + 1; i++) {

      // expr.addTerm(this.cfg.getTasks().get(i-1).getWeight()*200000,y[i-1]);
      expr.addTerm((int) Math.pow(10,1-this.cfg.getTasks().get(i - 1).getWeight()), modeler.intVar(1, 1, "1"), c[i]);
      for (int j = 0; j < this.cfg.getNumOfTasks(); j++)
        expr.addTerm(this.cfg.getTasks().get(i - 1).getSizeOfData(), modeler.intVar(1, 1, "11"), x[0][j][i]);
      expr.addTerm(this.cfg.getTasks().get(i - 1).getWeight() * 10000, z[i - 1], m);
    }


    this.modeler.addMinimize(expr);
    return this;
  }

  public Model objective() throws IloException {
    IloLinearNumExpr expr = this.modeler.linearNumExpr();
    for (int i = 0; i < this.cfg.getNumOfTasks(); i++) {

      expr.addTerm(this.cfg.getTasks().get(i).getWeight(), y[i]);

    }
    this.modeler.addMinimize(expr);
    return this;
  }

  public Model constraints() throws IloException {
    firstConstraint();
    secondConstraint();
    thirdConstraint();
    forthConstraint();
    fifthConstraint();
    sixthConstraint();
    seventhConstraint();
    eighthConstraint();
    // ninthConstraint();
    return this;
  }

  private void firstConstraint() throws IloException {
    for (int j = 1; j < this.cfg.getNumOfTasks() + 1; j++) {
      IloLinearNumExpr first = this.modeler.linearNumExpr();
      for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
        for (int k = 0; k < this.cfg.getNumOfTasks() + 1; k++) {
          if (k != j)
            first.addTerm(1, x[i][k][j]);
        }
      }
      this.modeler.addEq(first, 1,
              String.format("first_constraint"));

    }
  }

  private void secondConstraint() throws IloException {
    for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
      IloLinearNumExpr second = this.modeler.linearNumExpr();
      if (this.cfg.getMachines().get(i).getType() == Machine.Type.fog) {
        for (int k = 1; k < this.cfg.getNumOfTasks() + 1; k++) {
          second.addTerm(1, x[i][0][k]);

        }
        this.modeler.addLe(second, 1,
                String.format("second_constraint"));
      }

    }
  }


  private void thirdConstraint() throws IloException {
    for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
      for (int j = 1; j < this.cfg.getNumOfTasks() + 1; j++) {
        IloLinearNumExpr x1 = this.modeler.linearNumExpr();
        IloLinearNumExpr x2 = this.modeler.linearNumExpr();
        for (int k = 0; k < this.cfg.getNumOfTasks() + 1; k++) {
          x1.addTerm(1, x[i][k][j]);
        }
        for (int k = 1; k < this.cfg.getNumOfTasks() + 2; k++) {
          x2.addTerm(1, x[i][j][k]);
        }
        this.modeler.addEq(x1, x2, "third_constraint");
      }
    }
  }

  private void forthConstraint() throws IloException {
    for (int j = 1; j < this.cfg.getNumOfTasks() + 1; j++) {
      IloIntExpr x5 = null;
      for (int i = 0; i < this.cfg.getNumOfTasks() + 1; i++) {
        if (i == j)
          continue;
        IloIntExpr x3 = null;
        IloIntExpr x4 = null;
        for (int k = 0; k < this.cfg.getNumOfMachines(); k++) {
          if (this.cfg.getMachines().get(k).getType() == Machine.Type.fog) {
            IloIntExpr x1 = modeler.prod(x[k][i][j], this.cfg.getTasks().get(j - 1).getRequiredComputingPower() /
                    this.cfg.getMachines().get(k).getComputingPower());
            if (x3 == null)
              x3 = modeler.sum(x1, p[k][i][j]);
            else
              x3 = modeler.sum(x3, modeler.sum(x1, p[k][i][j]));

          } else {
            int cost = this.cfg.getTasks().get(j - 1).getSizeOfData() /
                    this.cfg.getMachines().get(k).getLinkRate() +
                    this.cfg.getTasks().get(j - 1).getRequiredComputingPower() /
                            this.cfg.getMachines().get(k).getComputingPower();
            x4 = modeler.prod(cost, x[k][i][j]);
          }
        }
        if (x3 != null && x4 != null) {
          if (x5 == null) {
            x5 = modeler.sum(x3, x4);
          } else
            x5 = modeler.sum(x5, modeler.sum(x3, x4));
        }
      }
      if (x5 != null)
        this.modeler.addEq(c[j], x5, "forth_constraint");
    }
  }

  private void fifthConstraint() throws IloException {

    for (int i = 0; i < this.cfg.getNumOfMachines(); i++) {
      for (int j = 0; j < this.cfg.getNumOfTasks() + 1; j++) {
        for (int k = 0; k < this.cfg.getNumOfTasks() + 1; k++) {
          if (k == j || this.cfg.getMachines().get(i).getType() == Machine.Type.cloud)
            continue;
          this.modeler.addLe(p[i][j][k], modeler.prod(x[i][j][k], 10000), "fifth_constraint");
          this.modeler.addLe(p[i][j][k], c[j], "fifth_constraint");
          this.modeler.addGe(p[i][j][k], modeler.diff(c[j], modeler.prod(10000, modeler.diff(1, x[i][j][k]))), "fifth_constraint");
        }
      }
    }
  }

  private void sixthConstraint() throws IloException {
    for (int k = 0; k < this.cfg.getNumOfTasks(); k++) {
      this.modeler.addGe(modeler.sum(modeler.diff(cfg.getTasks().get(k).getDeadline(), c[k + 1]), modeler.prod(y[k], 100000)), 0, "sixthConstraint");
    }
  }

  private void seventhConstraint() throws IloException {
    for (int k = 0; k < this.cfg.getNumOfTasks(); k++) {
      this.modeler.addEq(modeler.sum(z[k], y[k]), 1, "seventhConstraint");
    }
  }

  private void eighthConstraint() throws IloException {

    this.modeler.addEq(100, modeler.sum(m, modeler.sum(z)), "eighthConstraint");

  }


  private void ninthConstraint() throws IloException {

    this.modeler.addEq(w, modeler.sum(x[0][0]), "ninthConstraint");

  }
}
