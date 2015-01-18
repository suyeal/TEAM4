package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import model.domain.PuppyBean;
//이진희코드
public class PuppyDAO {
    private static DataSource source = null;
	
    static{	
		try{
		    Context ctx = new InitialContext();			
		    source = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");	
		    System.out.println(source);
		}catch(Exception e) {
		    e.printStackTrace();
		}			
    }
    
    public static void insert(PuppyBean bean) throws SQLException{
		Connection con =  null;
		PreparedStatement ppstmt = null;		
		try{
		    con = source.getConnection();
		    
		    ppstmt = con.prepareStatement("insert into PUPPY values(SEQ_PUPPY_NUM.NEXTVAL,?,?,?,?,?,?,?,?)");			
		    ppstmt.setString(1, bean.getPuppyName());
		    ppstmt.setInt(2, bean.getPuppyAge());
		    ppstmt.setString(3, bean.getPuppyGender());
		    ppstmt.setString(4, bean.getPuppyKind());	
		    ppstmt.setString(5, bean.getPuppySize());	
		    ppstmt.setInt(6, bean.getMemberNum());	
		    ppstmt.setString(7, bean.getSmallPic());	
		    ppstmt.setString(8, bean.getBigPic());	
		    ppstmt.executeUpdate();			
		    
		}finally{
		    close(con, ppstmt);
		}	
    }

    public static void delete(String puppyNum) throws SQLException{
		Connection conn = null;
		PreparedStatement ppstmt = null;
		try{
		    conn = source.getConnection();					
		    
		    ppstmt = conn.prepareStatement("delete from PUPPY where PUPPY_NUM=?");
		    ppstmt.setString(1, puppyNum);
		    ppstmt.executeUpdate();
		}finally{
		    close(conn, ppstmt);
		}
    }

    public static void update(PuppyBean bean) throws SQLException{
		Connection con =  null;
		PreparedStatement ppstmt = null;		
		String query 
		    = "update PUPPY set PUPPY_SIZE=?, SMALL_PIC=?, BIG_PIC=? where PUPPY_NUM=?";
		
		try{		
		    con = source.getConnection();			
				
		    ppstmt = con.prepareStatement(query);
		    ppstmt.setString(1, bean.getPuppySize());
		    ppstmt.setString(2, bean.getSmallPic());
		    ppstmt.setString(3, bean.getBigPic());
		    ppstmt.setInt(4, bean.getPuppyNum());
		    
			ppstmt.executeQuery();
				
		}catch(SQLException s){
		    s.printStackTrace();
		    throw s;		
		}finally{
		    close(con, ppstmt);
		}	
    }

    public static ArrayList getPuppy() throws SQLException{		
		Connection conn = null;
		PreparedStatement ppstmt = null;
		ResultSet rset = null;
		ArrayList allList = null;
		
		try{
			conn = source.getConnection();
			ppstmt = conn.prepareStatement("select * from PUPPY");
			rset = ppstmt.executeQuery();
			allList = new ArrayList();
			
			while(rset.next()){
				allList.add(new PuppyBean(rset.getInt(1), rset.getString(2), rset.getInt(3), 
						rset.getString(4), rset.getString(5), rset.getString(6), rset.getInt(7), 
						rset.getString(8), rset.getString(9)));
			}
			
		}finally{
			close(conn, ppstmt, rset);
		}
		return allList;
    }
    //수열
    public static void updatePuppy(PuppyBean pb) throws SQLException{
		Connection con =  null;
		PreparedStatement ppstmt = null;		
		String query 
		    = "UPDATE PUPPY SET PUPPY_NAME= ?, PUPPY_KIND = ?, PUPPY_GENDER = ?, PUPPY_AGE = ?, PUPPY_SIZE = ? WHERE MEMBER_NUM = ?";				
		try{		
		    con = source.getConnection();			
				
		    ppstmt = con.prepareStatement(query);
		    ppstmt.setString(1,pb.getPuppyName());
		    ppstmt.setString(2,pb.getPuppyKind());
		    ppstmt.setString(3,pb.getPuppyGender());		
		    ppstmt.setInt(4,pb.getPuppyAge());
		    ppstmt.setString(5,pb.getPuppySize());
		    ppstmt.setInt(6,pb.getMemberNum());
		    System.out.println(pb.getMemberNum());
			ppstmt.executeQuery();
				
		}catch(SQLException s){
		    s.printStackTrace();
		    throw s;		
		}finally{
		    close(con, ppstmt);
		}	
    }
    //수열
	
    private static void close(Connection conn, Statement pstmt, ResultSet rset) throws SQLException{
    	if(rset!=null){
    		rset.close();
    		rset = null;
    	}
		if(pstmt!=null){
			pstmt.close();
			pstmt = null;
		}
		if(conn!=null){
			conn.close();
			conn = null;
		}
    }
    
    private static void close(Connection conn, Statement pstmt) throws SQLException{
    	if(pstmt!=null){
			pstmt.close();
			pstmt = null;
		}
		if(conn!=null){
			conn.close();
			conn = null;
		}
    }
}




