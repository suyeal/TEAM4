package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.domain.MemberBean;

public class MemberDAO {

	static DataSource source = null;

	static {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			source = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
////////////�����-�α���///////////////////
	public static MemberBean checkMember(String email, String pw) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement("SELECT * FROM MEMBER WHERE EMAIL=? AND PW = ?");
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				return new MemberBean(rset.getInt("MEMBER_NUM"), rset.getString("EMAIL"), rset.getString("NAME"), rset.getString("PHONE"), rset.getString("LOCAL"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset, pstmt, con);
		}
		return null;
	}
////////////�����-�α���///////////////////
////////////�����-ȸ��Ż��(��Ʈ����)///////////////////
public static boolean wantDel(int memberNum){
Connection con = null;
PreparedStatement pstmt = null;
boolean result = false;
int result2 = 0;
System.out.println(memberNum);
try {
	con = source.getConnection();
	pstmt = con.prepareStatement("DELETE FROM WANT_MC WHERE PUPPY_NUM = (SELECT PUPPY_NUM FROM PUPPY WHERE MEMBER_NUM = ?)");
	pstmt.setInt(1, memberNum);
	
	result2 = pstmt.executeUpdate();
	
	if (result2== 1) {
		System.out.println("���񼺰�");
		result = true;
	} else {
		System.out.println("�������");
		result = false;
	}
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	close(pstmt, con);
}
return result;
}
////////////�����-ȸ��Ż��(��ġ����)///////////////////
	public static boolean matchDel(int memberNum){
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		int result2 = 0;
		System.out.println(memberNum);
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement("DELETE FROM MC_PUPPY WHERE PUPPY_NUM = (SELECT PUPPY_NUM FROM PUPPY WHERE MEMBER_NUM = ?)");
			pstmt.setInt(1, memberNum);
			
			result2 = pstmt.executeUpdate();
			
			if (result2== 1) {
				System.out.println("���񼺰�");
				result = true;
			} else {
				System.out.println("�������");
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		return result;
	}
////////////�����-ȸ��Ż��(����������)///////////////////
	public static boolean puppyDel(int memberNum){
		Connection con = null;
		
		PreparedStatement pstmt = null;
		boolean result = false;
		System.out.println(memberNum);
		int result2 = 0;
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement("DELETE FROM PUPPY WHERE MEMBER_NUM = ?");
			pstmt.setInt(1, memberNum);
			
			result2 = pstmt.executeUpdate();
			
			if (result2== 1) {
				System.out.println("���񼺰�");
				result = true;
			} else {
				System.out.println("�������");
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		return result;
	}
////������ ȸ������	
	public static MemberBean joinMember(String email, String pw, String name, String phone, String local) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement("INSERT INTO MEMBER VALUES(SEQ_MEMBER_NUM.NEXTVAL,?,?,?,?,?)");
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, local);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		return null;
	}
	
////////////�����-ȸ��Ż��(�������)///////////////////
	public static boolean memberDel(int memberNum){
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		int result2 = 0;
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement("DELETE FROM MEMBER WHERE MEMBER_NUM = ?");
			pstmt.setInt(1, memberNum);
			System.out.println(memberNum);
			result2 = pstmt.executeUpdate();
			
			if (result2== 1) {
				System.out.println("���񼺰�");
				result = true;
			} else {
				System.out.println("�������");
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		return result;
		}
////////////�����-Ż��///////////////////
	
//������ ��� ������Ʈ//
	public static void updateMember(MemberBean mb) throws SQLException{
		Connection con =  null;
		PreparedStatement pstmt = null;		
		String query 
		    = "UPDATE MEMBER SET PW = ?, PHONE = ?, LOCAL = ? WHERE MEMBER_NUM = ?";				
		try{		
		    con = source.getConnection();			
				
		    pstmt = con.prepareStatement(query);
		    pstmt.setString(1,mb.getPw());
		    pstmt.setString(2,mb.getPhone());		
		    pstmt.setString(3,mb.getLocal());
		    pstmt.setInt(4,mb.getMemberNum());
		    pstmt.executeQuery();
				
		}catch(SQLException s){
		    s.printStackTrace();
		    throw s;		
		}finally{
		    close(pstmt,con);
		}	
    }
	//������ ��� ������Ʈ//
	// Ŭ���� ����������������������������������
	public static void close(Statement pstmt, Connection con) {
		try {
			if (pstmt != null) {
				pstmt.close();
				pstmt = null;
			}
			if (con != null) {
				con.close();
				con = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rset, Statement pstmt, Connection con) {
		try {
			if (rset != null) {
				rset.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// Ŭ���� ����������������������������������
}
