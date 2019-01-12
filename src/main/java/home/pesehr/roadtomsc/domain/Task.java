package main.java.home.pesehr.roadtomsc.domain;

public class Task {

    private int id;
    private int weight;
    private int deadline;
    private int sizeOfData;
    private int requiredComputingPower;
    private int assignedMachine;

    public Task(int id, int weight, int deadline, int sizeOfData, int requiredComputingPower) {
        this.id = id;
        this.weight = weight;
        this.deadline = deadline;
        this.sizeOfData = sizeOfData;
        this.requiredComputingPower = requiredComputingPower;
    }

    public int getWeight() {
        return weight;
    }

    public int getDeadline() {
        return deadline;
    }

    public int getSizeOfData() {
        return sizeOfData;
    }

    public int getRequiredComputingPower() {
        return requiredComputingPower;
    }

    public int getAssignedMachine() {
        return assignedMachine;
    }

    public void setAssignedMachine(int assignedMachine) {
        this.assignedMachine = assignedMachine;
    }

    public double getCost() {
        return 0;
    }
}
