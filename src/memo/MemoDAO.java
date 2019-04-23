package memo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.DB;

public class MemoDAO {
	public List<MemoDTO> listMemo() {
		List<MemoDTO> items=new ArrayList<>();
		Connection conn=null; //db접속
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DB.getConn();
			String sql="select * from memo order by idx desc";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemoDTO dto=new MemoDTO();//레코드 1개를 dto에 저장
				dto.setIdx(rs.getInt("idx"));
				dto.setWriter(rs.getString("writer"));
				dto.setMemo(rs.getString("memo"));
				dto.setPost_date(rs.getString("post_date"));
				items.add(dto);//리스트에 dto를 추가
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(pstmt!=null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//finally
		return items;//리스트를 리턴함
	}
}
