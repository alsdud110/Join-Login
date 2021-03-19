package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;



public class MemberDto {
	 private static MemberDto instance = new MemberDto();
	    
	    public static MemberDto getInstance() {
	        return instance;
	    }
	   
	    private Connection getConnection() throws Exception {
	        Context initCtx = new InitialContext();
	        Context envCtx = (Context) initCtx.lookup("java:comp/env");
	        DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
	        return ds.getConnection();
	    }
	    
	    public void insertMember(MemberDao member) throws Exception{
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	    	
	    	try {
	    		conn = getConnection();
	    		
	    		String sql = "insert into login values(?,?,?,?,?);";
	    		pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, member.getId());
	    		pstmt.setString(2, member.getPasswd());
	    		pstmt.setString(3, member.getName());
	    		pstmt.setString(4, member.getEmail());
	    		pstmt.setString(5, member.getAddress());
	    		pstmt.executeUpdate();
	    		System.out.println("insert success!");
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("insert failed");
	    	}finally {
//	    		if (rs != null) 
//					try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) 
	            	try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) 
	            	try { conn.close(); } catch(SQLException ex) {}
	    	}
	    }
	    
	    public int userCheck(String id, String passwd) throws Exception{
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	    	ResultSet rs = null;
	    	int x = -1;
	    	String dbpasswd = "";
	    	try {
	    		conn = getConnection();
	    		String sql = "select passwd from login where id = ?";
	    		pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, id);
	    		rs = pstmt.executeQuery();
	    		
	    		if(rs.next()) {
	    			dbpasswd = rs.getString("passwd");
	    			if(dbpasswd.equals(passwd)) {
	    				x = 1;
	    			}else {
	    				x = 0;
	    			}
	    		}
	    		
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("insert failed");
	    	}finally {
//	    		if (rs != null) 
//					try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) 
	            	try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) 
	            	try { conn.close(); } catch(SQLException ex) {}
	    	}
	    	
	    	return x;
	    }
	    
	    public MemberDao getUserInfo(String id) throws Exception{
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	    	ResultSet rs = null;
	    	MemberDao member = null;
	    	
	    	try {
	    		conn = getConnection();
	    		String sql = "select * from login where id = ?";
	    		pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, id);
	    		rs = pstmt.executeQuery();
	    		
	    		if(rs.next()) {
	    			member = new MemberDao();
	    			member.setId(rs.getString("id"));
	    			member.setPasswd(rs.getString("passwd"));
	    			member.setName(rs.getString("name"));
	    			member.setEmail(rs.getString("email"));
	    			member.setAddress(rs.getString("address"));
	    		}
	    		System.out.println("로드 성공");
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("로드 실패");
	    	}finally {
	    		if (rs != null) 
					try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) 
	            	try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) 
	            	try { conn.close(); } catch(SQLException ex) {}
	    	}
	    	return member;
	    }
	    
	    public void updateMember(MemberDao member) throws Exception{
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	    	
	    	try {
	    		conn = getConnection();
	    		String sql = "update login set name = ?, email = ?, address = ? where id = ?";
	    		pstmt = conn.prepareStatement(sql);
	    		
	    		pstmt.setString(1, member.getName());
	    		pstmt.setString(2, member.getEmail());
	    		pstmt.setString(3, member.getAddress());
	    		pstmt.setString(4, member.getId());
	    		pstmt.executeUpdate();
	    		System.out.println("업데이트 성공!");
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("업데이트 실패");
	    	}finally {
	            if (pstmt != null) 
	            	try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) 
	            	try { conn.close(); } catch(SQLException ex) {}
	    	}
	    }
	    
	    public void deleteMember(String id) throws Exception{
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	    	
	    	try {
	    		conn = getConnection();
	    		String sql = "delete from login where id = ?";
	    		pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, id);
	    		pstmt.executeUpdate();
	    		System.out.println("삭제 성공!");
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("삭제 실패");
	    	}finally {
	            if (pstmt != null) 
	            	try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) 
	            	try { conn.close(); } catch(SQLException ex) {}
	    	}
	    }
	    
	    
	    
	    @SuppressWarnings("resource")
		public void modifyPasswd(String id, String passwd, String newPasswd) throws Exception{
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	    	ResultSet rs = null;
	    	String sql = "";
	    	
	    	try {
	    		conn = getConnection();
	    		sql = "select passwd from login where id = ?";
	    		pstmt = conn.prepareStatement(sql);
	    		pstmt.setString(1, id);
	    		rs = pstmt.executeQuery();
	    		
	    		if(rs.next()) {
	    			if(passwd.equals(rs.getString("passwd"))) {
	    				sql = "update login set passwd = ? where id = ?";
	    				pstmt = conn.prepareStatement(sql);
	    				pstmt.setString(1, newPasswd);
	    				pstmt.setString(2, id);
	    				pstmt.executeUpdate();
	    			}
	    		}
	    		System.out.println("변경완료!");
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("비밀번호 수정 실패");
	    	}finally {
	            if (pstmt != null) 
	            	try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) 
	            	try { conn.close(); } catch(SQLException ex) {}
	    	}
	    }
}
