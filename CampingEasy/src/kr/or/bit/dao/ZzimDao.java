package kr.or.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import kr.or.bit.dto.Board;
import kr.or.bit.dto.Campingjang;
import kr.or.bit.dto.Zzim_List;

public class ZzimDao {
DataSource ds = null;
	
	public ZzimDao() throws NamingException {
		Context context = new InitialContext();
		ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
	}
	
	public int zzimInsert(Campingjang campingjang, Zzim_List zzim_list) {   //찜 리스트 추가
		PreparedStatement pstmt =null;
		Connection conn = null;
		//String sql = "insert all into campingjang(contentid, title, addr1, tel, firstimage) values(?,?,?,?,?) into zzim_List (contentid, id) values(?,?) select * from dual";	
		String sql = "insert all when contentid !=" + campingjang.getContentid() + " then"
				+ "into campingjang(contentid, title, addr1, tel, firstimage) values(?,?,?,?,?)"
				+ "into zzim_list(contentid, id) values(?,?)"
				+ "else "
				+ "into zzim_list(contentid, id) values(?,?)"
				+ "select contentid from campingjang";
		int resultrow = 0;		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, campingjang.getContentid());
			pstmt.setString(2, campingjang.getTitle());
			pstmt.setString(3, campingjang.getAddr1());
			pstmt.setInt(4, campingjang.getTel());
			pstmt.setString(5, campingjang.getFirstimage());
			pstmt.setString(6, zzim_list.getContentid());
			pstmt.setString(7, zzim_list.getId());
			pstmt.setString(8, zzim_list.getContentid());
			pstmt.setString(9, zzim_list.getId());
			
			resultrow = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();//반환
			}catch (Exception e) {
			}
		}
		return resultrow;
	}
	
	
	
	
	
}
