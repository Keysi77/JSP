package com.carservice.controller.dao;

        import com.carservice.controller.DbConfing;

        import com.carservice.model.Repair;

        import java.sql.Connection;
        import java.sql.PreparedStatement;
        import java.sql.ResultSet;
        import java.sql.SQLException;
        import java.util.ArrayList;

/**
 * Created by Kanderka on 30.04.2017.
 */
public class RepairImplement implements RepairInterface {

    private DbConfing db;

    public RepairImplement() {
        this.db = new DbConfing();
    }


    @Override
    public ArrayList<Repair> getAllRepairs() {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = db.getConnection();
        try {
            String sql = "SELECT * FROM `repairs` ORDER BY repairs.id_repair DESC";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Repair repair = new Repair();
                repair.setId_repair(rs.getInt("id_repair"));
                //repair.setId_client(rs.getInt("id_client"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                repair.setStatus_repair(rs.getInt("status_repair"));
                repairs.add(repair);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }

    @Override
    public Repair getRepairWhereId(int id_repair) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Repair repair = new Repair();
        con = db.getConnection();
        try {
            String sql = "SELECT * FROM `repairs` WHERE id_repair = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id_repair);
            rs = ps.executeQuery();
            while (rs.next()) {
                repair.setId_repair(rs.getInt("id_repair"));
                //repair.setId_client(rs.getInt("id_client"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                repair.setStatus_repair(rs.getInt("status_repair"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repair;
    }

    @Override
    public ArrayList<Repair> getRepairWhereIdClient(int id_client) {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Repair repair = new Repair();
        con = db.getConnection();
        try {
            String sql = "SELECT * FROM `repairs` WHERE id_client = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id_client);
            rs = ps.executeQuery();
            while (rs.next()) {
                repair.setId_repair(rs.getInt("id_repair"));
                //repair.setId_client(rs.getInt("id_client"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                repair.setStatus_repair(rs.getInt("status_repair"));
                repairs.add(repair);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }

    @Override
    public void addRepair(Repair repair) {
        Connection con = null;
        PreparedStatement ps = null;
        DbConfing db = new DbConfing();
        con = db.getConnection();
        try {
            String sql = "INSERT INTO `repairs` (`client_email`, `car_brand`, `car_model`, `motor_vehicle_licence_plate`, `vin_number`, `what_repair`, `status_repair`) VALUES (?,?,?,?,?,?,'1')";
            ps = con.prepareStatement(sql);
            //ps.setInt(1,repair.getId_client());
            ps.setString(1, repair.getClient_email());
            ps.setString(2, repair.getCar_brand());
            ps.setString(3, repair.getCar_model());
            ps.setString(4, repair.getMotor_vehicle_licence_plate());
            ps.setString(5, repair.getVin_number());
            ps.setString(6, repair.getWhat_repair());
            /*ps.setInt(7, repair.getStatus_repair());*/
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public void deleteRepair(int id_repair) {
        Connection con = null;
        PreparedStatement ps = null;
        DbConfing db = new DbConfing();
        con = db.getConnection();
        try {
            String sql = "DELETE FROM `repairs` WHERE `repairs`.`id_repair` = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id_repair);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public void updateRepairWhereId(Repair repair) {
        Connection con = null;
        PreparedStatement ps = null;
        DbConfing db = new DbConfing();
        con = db.getConnection();

        try {
            String sql = "UPDATE `repairs` SET `client_email` = ?, `car_brand` = ?, `car_model` = ?, `motor_vehicle_licence_plate` = ?, `vin_number` = ?, `what_repair` = ?, `status_repair` = ? WHERE `repairs`.`id_repair` = ?";
            ps = con.prepareStatement(sql);
            //ps.setInt(1, repair.getId_client());
            ps.setString(1, repair.getClient_email());
            ps.setString(2, repair.getCar_brand());
            ps.setString(3, repair.getCar_model());
            ps.setString(4, repair.getMotor_vehicle_licence_plate());
            ps.setString(5, repair.getVin_number());
            ps.setString(6, repair.getWhat_repair());
            ps.setInt(7, repair.getStatus_repair());
            ps.setInt(8, repair.getId_repair());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public ArrayList<Repair> getAllClientsRepairs(String client_email) {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = db.getConnection();
        try {
            String sql = "SELECT * FROM `repairs` WHERE `client_email` = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, client_email);
            rs = ps.executeQuery();
            while (rs.next()) {
                Repair repair = new Repair();
                repair.setId_repair(rs.getInt("id_repair"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                repair.setStatus_repair(rs.getInt("status_repair"));
                repairs.add(repair);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }

    @Override
    public ArrayList<Repair> getAllClientsRepairsWithStatus(String client_email) {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = db.getConnection();
        try {
            /*String sql = "SELECT repairs.id_repair, repairs.client_email, repairs.car_brand, repairs.car_model, repairs.motor_vehicle_licence_plate, repairs.vin_number, repairs.what_repair, repairs.status_repair, status_codes.status FROM repairs, status_codes WHERE repairs.status_repair=status_codes.status AND repairs.client_email= ?";*/
            /*String sql = "SELECT repairs.id_repair, repairs.client_email, repairs.car_brand, repairs.car_model, repairs.motor_vehicle_licence_plate, repairs.vin_number, repairs.what_repair, status_codes.status FROM repairs, status_codes WHERE repairs.status_repair=status_codes.id_status AND repairs.client_email= ?";*/
            String sql = "SELECT repairs.id_repair, repairs.client_email, repairs.car_brand, repairs.car_model, repairs.motor_vehicle_licence_plate, repairs.vin_number, repairs.what_repair, status_codes.id_status, status_codes.status FROM repairs, status_codes WHERE repairs.status_repair=status_codes.id_status AND repairs.client_email= ? ORDER BY repairs.id_repair DESC";
            ps = con.prepareStatement(sql);
            ps.setString(1, client_email);
            rs = ps.executeQuery();
            while (rs.next()) {
                Repair repair = new Repair();
                repair.setId_repair(rs.getInt("id_repair"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                repair.setStatus_repair(rs.getInt("id_status"));
                repair.setStatus(rs.getString("status"));
                repairs.add(repair);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }

    @Override
    public ArrayList<Repair> getAllStatusRepair() {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = db.getConnection();
        try {
            /*String sql = "SELECT status_codes.status, repairs.status_repair FROM status_codes, repairs WHERE status_codes.id_status=repairs.status_repair";*/
            String sql = "SELECT status_codes.status, status_codes.id_status FROM status_codes";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Repair repair = new Repair();
                repair.setStatus(rs.getString("status"));
                repair.setId_status(rs.getInt("id_status"));
//                repair.setStatus_repair(rs.getInt("status_repair"));
                //repair.setId_client(rs.getInt("id_client"));
                repairs.add(repair);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }


    @Override
    public ArrayList<Repair> getAllWaitingRepairs() {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = db.getConnection();
        try {
            /*String sql = "SELECT repairs.id_repair, repairs.client_email, repairs.car_brand, repairs.car_model, repairs.motor_vehicle_licence_plate, repairs.vin_number, repairs.what_repair FROM repairs, status_codes WHERE repairs.status_repair=status_codes.id_status AND status_codes.id_status = '1' ORDER BY repairs.id_repair DESC";*/
            String sql = "SELECT * FROM repairs WHERE repairs.status_repair = '1' ORDER BY repairs.id_repair DESC";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Repair repair = new Repair();
                repair.setId_repair(rs.getInt("id_repair"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                repair.setStatus_repair(rs.getInt("status_repair"));
                repairs.add(repair);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }

    @Override
    public ArrayList<Repair> getAllDoneRepairs() {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = db.getConnection();
        try {
            /*String sql = "SELECT repairs.id_repair, repairs.client_email, repairs.car_brand, repairs.car_model, repairs.motor_vehicle_licence_plate, repairs.vin_number, repairs.what_repair FROM repairs, status_codes WHERE repairs.status_repair=status_codes.id_status AND status_codes.id_status = '1' ORDER BY repairs.id_repair DESC";*/
            String sql = "SELECT * FROM repairs WHERE repairs.status_repair = '3' ORDER BY repairs.id_repair DESC";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Repair repair = new Repair();
                repair.setId_repair(rs.getInt("id_repair"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                repair.setStatus_repair(rs.getInt("status_repair"));
                repairs.add(repair);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }

    @Override
    public ArrayList<Repair> getAllRepairsWithStatusCode(int status_repair) {
        ArrayList<Repair> repairs = new ArrayList<>();
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        con = db.getConnection();
        try {
            /*String sql = "SELECT repairs.id_repair, repairs.client_email, repairs.car_brand, repairs.car_model, repairs.motor_vehicle_licence_plate, repairs.vin_number, repairs.what_repair FROM repairs, status_codes WHERE repairs.status_repair=status_codes.id_status AND status_codes.id_status = '1' ORDER BY repairs.id_repair DESC";*/
            String sql = "SELECT * FROM repairs WHERE repairs.status_repair = ? ORDER BY repairs.id_repair DESC";
            ps = con.prepareStatement(sql);
            ps.setInt(1, status_repair);
            rs = ps.executeQuery();
            while (rs.next()) {
                Repair repair = new Repair();
                repair.setId_repair(rs.getInt("id_repair"));
                repair.setClient_email(rs.getString("client_email"));
                repair.setCar_brand(rs.getString("car_brand"));
                repair.setCar_model(rs.getString("car_model"));
                repair.setMotor_vehicle_licence_plate(rs.getString("motor_vehicle_licence_plate"));
                repair.setVin_number(rs.getString("vin_number"));
                repair.setWhat_repair(rs.getString("what_repair"));
                /*repair.setStatus_repair(rs.getInt("status_repair"));*/
                repairs.add(repair);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return repairs;
    }
}
