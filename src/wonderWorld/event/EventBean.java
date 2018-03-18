package wonderWorld.event;

import java.sql.*;
import java.util.*;

public class EventBean {
	Connection conn;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/wonderdb";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			
			conn = DriverManager.getConnection(jdbc_url, "wonder", "wonder1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public boolean updateDB(EventBook eventbook) {
		connect();
		
		String sql = "update eventbook set ap_name=?, ap_numOfMem=?, ap_memo=? where ap_id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eventbook.getAp_name());
			pstmt.setInt(2, eventbook.getAp_numOfMem());
			pstmt.setString(3, eventbook.getAp_memo());
			pstmt.setInt(4, eventbook.getAp_id());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	public boolean deleteDB(int ap_id) {
		connect();
		
		String sql = "delete from eventbook where ap_id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,ap_id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	public boolean insertDB(EventBook eventbook) {
		connect();
		
		String sql = "insert into eventbook(ap_id, ap_name, "
				+ "ap_numOfMem, ap_memo) values (?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eventbook.getAp_id());
			pstmt.setString(2, eventbook.getAp_name());
			pstmt.setInt(3, eventbook.getAp_numOfMem());
			pstmt.setString(4, eventbook.getAp_memo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	public EventBook getDB(int ap_id) {
		connect();
		
		String sql = "select * from eventbook where ap_id=?";
		EventBook eventbook = new EventBook();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ap_id);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			eventbook.setAp_id(rs.getInt("ap_id"));
			eventbook.setAp_name(rs.getString("ap_name"));
			eventbook.setAp_numOfMem(rs.getInt("ap_numOfMem"));
			eventbook.setAp_memo(rs.getString("ap_memo"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return eventbook;
	}
	
	public ArrayList<EventBook> getDBList() {
		connect();
		ArrayList<EventBook> eventApList = new ArrayList<EventBook>();
		
		String sql = "select * from eventbook order by ap_id";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				EventBook eventbook = new EventBook();
				
				eventbook.setAp_id(rs.getInt("ap_id"));
				eventbook.setAp_name(rs.getString("ap_name"));
				eventbook.setAp_numOfMem(rs.getInt("ap_numOfMem"));
				eventbook.setAp_memo(rs.getString("ap_memo"));
				
				eventApList.add(eventbook);
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return eventApList;
	}
	
}
