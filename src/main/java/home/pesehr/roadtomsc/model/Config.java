package main.java.home.pesehr.roadtomsc.model;

import main.java.home.pesehr.roadtomsc.domain.*;

import java.util.ArrayList;

/**
 * Config represents problem configuration
 * by configuration we mean parameters that are given
 * by user.
 */
public class Config {


    private int numOfTasks;

    private int numOfMachines;

    private ArrayList<Machine> machines;

    private ArrayList<Task> tasks;

    public Config(int numOfTasks, int numOfMachines) {
        this.numOfTasks = numOfTasks;
        this.numOfMachines = numOfMachines;
        machines = new ArrayList<>();
        tasks = new ArrayList<>();
    }

    public boolean addTask(Task task){
        if(tasks.size() < numOfTasks)
           tasks.add(task);
        else
            return false;
        return true;
    }


    public boolean addMachine(Machine machine){


        if(machines.size() < numOfMachines)
            machines.add(machine);
        else
            return false;
        return true;
    }

    public boolean isExecutable(){
        return (numOfMachines == machines.size()) && (numOfTasks == tasks.size());
    }

    public int getNumOfTasks() {
        return numOfTasks;
    }

    public int getNumOfMachines() {
        return numOfMachines;
    }

    public ArrayList<Machine> getMachines() {
        return machines;
    }

    public ArrayList<Task> getTasks() {
        return tasks;
    }
}
