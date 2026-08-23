package com.deshyatra.model;

import java.sql.Timestamp;

public class Review {
    private int reviewId;
    private int userId;
    private int destinationId;
    private int rating; // 1-5
    private String comment;
    private Timestamp createdAt;

    public Review() {}

    public Review(int reviewId, int userId, int destinationId, int rating, String comment) {
        this.reviewId = reviewId;
        this.userId = userId;
        this.destinationId = destinationId;
        this.rating = rating;
        this.comment = comment;
    }

    public int getReviewId() { return reviewId; }
    public void setReviewId(int reviewId) { this.reviewId = reviewId; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getDestinationId() { return destinationId; }
    public void setDestinationId(int destinationId) { this.destinationId = destinationId; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

    public String getComment() { return comment; }
    public void setComment(String comment) { this.comment = comment; }

    public Timestamp getCreatedAt() { return createdAt; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
}