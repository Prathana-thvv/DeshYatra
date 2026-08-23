package com.deshyatra.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

public class Booking {
    private int bookingId;
    private int userId;
    private int packageId;
    private Date travelDate;
    private int travelers;
    private String roomType;   // "Standard", "Deluxe", "Suite"
    private String status;     // "Pending", "Confirmed", "Cancelled"
    private BigDecimal amount;
    private String notes;
    private Timestamp createdAt;

    public Booking() {}

    public Booking(int bookingId, int userId, int packageId, Date travelDate, int travelers,
                    String roomType, String status, BigDecimal amount, String notes) {
        this.bookingId = bookingId;
        this.userId = userId;
        this.packageId = packageId;
        this.travelDate = travelDate;
        this.travelers = travelers;
        this.roomType = roomType;
        this.status = status;
        this.amount = amount;
        this.notes = notes;
    }

    public int getBookingId() { return bookingId; }
    public void setBookingId(int bookingId) { this.bookingId = bookingId; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getPackageId() { return packageId; }
    public void setPackageId(int packageId) { this.packageId = packageId; }

    public Date getTravelDate() { return travelDate; }
    public void setTravelDate(Date travelDate) { this.travelDate = travelDate; }

    public int getTravelers() { return travelers; }
    public void setTravelers(int travelers) { this.travelers = travelers; }

    public String getRoomType() { return roomType; }
    public void setRoomType(String roomType) { this.roomType = roomType; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public BigDecimal getAmount() { return amount; }
    public void setAmount(BigDecimal amount) { this.amount = amount; }

    public String getNotes() { return notes; }
    public void setNotes(String notes) { this.notes = notes; }

    public Timestamp getCreatedAt() { return createdAt; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
}