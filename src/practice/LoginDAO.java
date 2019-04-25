package practice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.DB;

public class LoginDAO {
	public String listCheck(String userid, String passwd) {
		String name=null;
		Connection conn=null;
		PreparedStatement pstmt= null;
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String sql = " select name from cafe where userid=? and passwd=? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, passwd);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				name=rs.getString("name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(pstmt!=null)pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return name;
	}
}
