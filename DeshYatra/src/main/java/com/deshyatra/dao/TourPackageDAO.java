package com.deshyatra.dao;

import com.deshyatra.model.TourPackage;
import com.deshyatra.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TourPackageDAO {

    public List<TourPackage> getAll() {
        List<TourPackage> list = new ArrayList<>();
        String sql = "SELECT * FROM packages ORDER BY name";
        try (Connection con = DBConnection.getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                list.add(mapRow(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<TourPackage> getByDestination(int destinationId) {
        List<TourPackage> list = new ArrayList<>();
        String sql = "SELECT * FROM packages WHERE destination_id = ? ORDER BY name";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, destinationId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    list.add(mapRow(rs));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public TourPackage getById(int packageId) {
        String sql = "SELECT * FROM packages WHERE package_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, packageId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) return mapRow(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean insert(TourPackage p) {
        String sql = "INSERT INTO packages (destination_id, name, duration_days, duration_nights, price, description) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, p.getDestinationId());
            ps.setString(2, p.getName());
            ps.setInt(3, p.getDurationDays());
            ps.setInt(4, p.getDurationNights());
            ps.setBigDecimal(5, p.getPrice());
            ps.setString(6, p.getDescription());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean update(TourPackage p) {
        String sql = "UPDATE packages SET destination_id=?, name=?, duration_days=?, duration_nights=?, price=?, description=? WHERE package_id=?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, p.getDestinationId());
            ps.setString(2, p.getName());
            ps.setInt(3, p.getDurationDays());
            ps.setInt(4, p.getDurationNights());
            ps.setBigDecimal(5, p.getPrice());
            ps.setString(6, p.getDescription());
            ps.setInt(7, p.getPackageId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean delete(int packageId) {
        String sql = "DELETE FROM packages WHERE package_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, packageId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private TourPackage mapRow(ResultSet rs) throws SQLException {
        TourPackage p = new TourPackage();
        p.setPackageId(rs.getInt("package_id"));
        p.setDestinationId(rs.getInt("destination_id"));
        p.setName(rs.getString("name"));
        p.setDurationDays(rs.getInt("duration_days"));
        p.setDurationNights(rs.getInt("duration_nights"));
        p.setPrice(rs.getBigDecimal("price"));
        p.setDescription(rs.getString("description"));
        return p;
    }
}