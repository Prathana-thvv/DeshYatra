package com.deshyatra.model;

import java.math.BigDecimal;

public class TourPackage {
    private int packageId;
    private int destinationId;
    private String name;
    private int durationDays;
    private int durationNights;
    private BigDecimal price;
    private String description;

    public TourPackage() {}

    public TourPackage(int packageId, int destinationId, String name, int durationDays,
                        int durationNights, BigDecimal price, String description) {
        this.packageId = packageId;
        this.destinationId = destinationId;
        this.name = name;
        this.durationDays = durationDays;
        this.durationNights = durationNights;
        this.price = price;
        this.description = description;
    }

    public int getPackageId() { return packageId; }
    public void setPackageId(int packageId) { this.packageId = packageId; }

    public int getDestinationId() { return destinationId; }
    public void setDestinationId(int destinationId) { this.destinationId = destinationId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public int getDurationDays() { return durationDays; }
    public void setDurationDays(int durationDays) { this.durationDays = durationDays; }

    public int getDurationNights() { return durationNights; }
    public void setDurationNights(int durationNights) { this.durationNights = durationNights; }

    public BigDecimal getPrice() { return price; }
    public void setPrice(BigDecimal price) { this.price = price; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}