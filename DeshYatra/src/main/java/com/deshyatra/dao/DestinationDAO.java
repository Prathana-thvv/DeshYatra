package com.deshyatra.dao;

import com.deshyatra.model.Destination;
import com.deshyatra.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DestinationDAO {

    public List<Destination> getAll() {
        List<Destination> list = new ArrayList<>();
        String sql = "SELECT * FROM destinations ORDER BY name";
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

    public Destination getById(int destinationId) {
        String sql = "SELECT * FROM destinations WHERE destination_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, destinationId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) return mapRow(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean insert(Destination d) {
        String sql = "INSERT INTO destinations (name, region, description, base_price, image_url) VALUES (?, ?, ?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, d.getName());
            ps.setString(2, d.getRegion());
            ps.setString(3, d.getDescription());
            ps.setBigDecimal(4, d.getBasePrice());
            ps.setString(5, d.getImageUrl());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean update(Destination d) {
        String sql = "UPDATE destinations SET name=?, region=?, description=?, base_price=?, image_url=? WHERE destination_id=?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, d.getName());
            ps.setString(2, d.getRegion());
            ps.setString(3, d.getDescription());
            ps.setBigDecimal(4, d.getBasePrice());
            ps.setString(5, d.getImageUrl());
            ps.setInt(6, d.getDestinationId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean delete(int destinationId) {
        String sql = "DELETE FROM destinations WHERE destination_id = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, destinationId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private Destination mapRow(ResultSet rs) throws SQLException {
        Destination d = new Destination();
        d.setDestinationId(rs.getInt("destination_id"));
        d.setName(rs.getString("name"));
        d.setRegion(rs.getString("region"));
        d.setDescription(rs.getString("description"));
        d.setBasePrice(rs.getBigDecimal("base_price"));
        d.setImageUrl(rs.getString("image_url"));
        return d;
    }
}