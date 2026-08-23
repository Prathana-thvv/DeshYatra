package com.deshyatra.model;

import java.math.BigDecimal;

public class Destination {
    private int destinationId;
    private String name;
    private String region;
    private String description;
    private BigDecimal basePrice;
    private String imageUrl;

    public Destination() {}

    public Destination(int destinationId, String name, String region, String description,
                        BigDecimal basePrice, String imageUrl) {
        this.destinationId = destinationId;
        this.name = name;
        this.region = region;
        this.description = description;
        this.basePrice = basePrice;
        this.imageUrl = imageUrl;
    }

    public int getDestinationId() { return destinationId; }
    public void setDestinationId(int destinationId) { this.destinationId = destinationId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getRegion() { return region; }
    public void setRegion(String region) { this.region = region; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public BigDecimal getBasePrice() { return basePrice; }
    public void setBasePrice(BigDecimal basePrice) { this.basePrice = basePrice; }

    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
}