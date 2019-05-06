package emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import config.DB;

public class EmpDAO {
	public void insert_batch() {
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=DB.getConn();
			conn.setAutoCommit(false);//자바에서는 DB커밋을 해주었다. 이것을 하면 자동 커밋을 해제 할수 있다.트랜젝션처리 때문에 그럼
			String sql="insert into emp2(empno, ename, deptno) values(?,?,?) ";
			pstmt=conn.prepareStatement(sql);
			long before=System.currentTimeMillis();//실행전 시간 처리
			for(int i=1; i<=100000; i++) {

				pstmt.setInt(1, i);
				pstmt.setString(2, "kim"+i);
				pstmt.setInt(3, i);
				pstmt.addBatch();//일괄처리 작업 예약,  이거 실행하면 시간 획기적으로 줄어든다.//실행시간 값 : 276
				//pstmt.close();
			}
			//pstmt.executeUpdate();
			pstmt.executeBatch();//일괄처리 작업 실행
			long after = System.currentTimeMillis();// 실행 후 시간 처리
			conn.commit();//수동 커밋
			conn.setAutoCommit(true);// 다음 작업을 위해 오토커밋으로 설정됨.
			System.out.println("실행시간 값 : "+(after-before));
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if(conn!=null) conn.rollback();//롤백
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
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
}
