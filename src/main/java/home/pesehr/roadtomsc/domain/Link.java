package main.java.home.pesehr.roadtomsc.domain;

public class Link {
    /**
     * link bandwidth
     */
    private int bandwidth;
    private int source;
    private int destination;

    public Link(int bandwidth, int source, int destination) {
        this.bandwidth = bandwidth;
        this.source = source;
        this.destination = destination;
    }

    public int getBandwidth() {
        return bandwidth;
    }

    public int getSource() {
        return source;
    }

    public int getDestination() {
        return destination;
    }
}
