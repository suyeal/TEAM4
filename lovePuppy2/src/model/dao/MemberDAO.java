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
////////////서상욱-로그인///////////////////
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
////////////서상욱-로그인///////////////////

	// 클로즈 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	public static void close(Statement stmt, Connection con) {
		try {
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
			if (con != null) {
				con.close();
				con = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rset, Statement stmt, Connection con) {
		try {
			if (rset != null) {
				rset.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// 클로즈 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
}
