package cafe;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.DB;
import crypt.BCrypt;

public class CafeDAO {

	public void insertBcypt(CafeDTO dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
		conn=DB.getConn();
		String sql="insert into cafe values(?,?,?) ";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, dto.getId());
		String passwd=BCrypt.hashpw(dto.getPasswd(), BCrypt.gensalt());
		pstmt.setString(2, passwd);
		pstmt.setString(3, dto.getName());
		pstmt.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
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
	}

	public String login_cafe(CafeDTO dto) {
		String result="";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String sql="select*from cafe where id=? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				String passwd=rs.getString("passwd");
				if(BCrypt.checkpw(dto.getPasswd(), passwd)) {
					result=rs.getString("name")+"님 환영합니다";
				}else {
					result="로그인 실패";
				}
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
		return result;
	}

}
