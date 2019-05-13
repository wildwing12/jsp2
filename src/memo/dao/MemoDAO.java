package memo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import memo.dto.MemoDTO;
import sqlmap.MybatisManager;

public class MemoDAO {
	//여기서는 ArrayList를 쓰면 에러가 난다.(mybatis 시스템상 타입을
	//고정시켜둔다.
	public List<MemoDTO> listMemo(String searchkey, String search){
		//mybatis 실행 객체 생성
		//MybatisManager.getInstance()=>SqlSessionFactory
		//openSession()은 sqlSession객체를 가르킨다.
		//SqlSession은 기존에 했던 Connection, PreparedStatement, ResultSet
		//모두 가지고 있다.(다 함축)
		//여기서 SqlSession하나를 쓰는건 sever.context.xml에서 maxTotal="50" 설정 중
		//1개의 리소스를 이미 써버리는 것이다. 
		SqlSession session=MybatisManager.getInstance().openSession();
		//memo.xml에 저장될 sql문장을 실행
		//namespace.id 예)여기서는 네임스페이스는 memo이다.
		List<MemoDTO> list=null;
		try {
			if(searchkey.equals("writer_memo")) {//이름, 메모로 검색
				list=session.selectList("memo.listAll", search);
			}else {
				Map<String,String> map=new HashMap<>();
				map.put("searchkey", searchkey);
				map.put("search", search);
				//입력 매개 변수는 1개만 전달 할 수 있음
				//(searchkey,search)두개를 쓸 수 없다.
				list=session.selectList("memo.list", map);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();//mybaits 객체 닫기
		}
		return list;
	}

	public void insertMemo(MemoDTO dto) {
		//mybatis 실행 객체 생성
		SqlSession session=MybatisManager.getInstance().openSession();
		session.insert("memo.insert", dto);//레코드 추가, insert메소드는  파라미터 1개 밖에 허용안됨
		session.commit();//수동커밋, mybaties는 자동 커밋을 막았다.
		session.close();
	}
}
