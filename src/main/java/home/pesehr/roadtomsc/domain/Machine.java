package main.java.home.pesehr.roadtomsc.domain;

public class Machine {
    int id;
    public enum Type {
        cloud,
        fog
    }
    int computingPower;
    int linkRate;
    Type type;

    public Machine(int id, int computingPower, int linkRate, Type type) {
        this.id = id;
        this.computingPower = computingPower;
        this.linkRate = linkRate;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public int getComputingPower() {
        return computingPower;
    }

    public int getLinkRate() {
        return linkRate;
    }

    public Type getType() {
        return type;
    }
}
