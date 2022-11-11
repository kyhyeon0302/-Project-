package com.hyeon.app2;

import org.junit.*;
import org.junit.runner.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.context.*;
import org.springframework.context.support.*;
import org.springframework.jdbc.datasource.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;
import java.util.Date;
import javax.sql.*;
import java.io.IOException;
import java.sql.*;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class DBConnectionTest2Test {
    @Autowired
    DataSource ds; // 컨테이너로부터 자동 주입받는다.

    @Test
    public void InsertUserTest() throws Exception {
        User user = new User("hohohoo", "1234", "abc", "aaa@aaa.com", new Date(), "facebook", new Date());
        deleteAll();
        int rowCnt = insertUser(user);

        assertTrue(rowCnt==1);
    }



    //삭제하는 메서드 구현.
    private void deleteAll() throws Exception{
        Connection conn = ds.getConnection();

        String sql = "delete from user_info";
        PreparedStatement pstmt = conn.prepareStatement(sql); //SQL Injection 공격, 성능향상
        pstmt.executeUpdate(); // insert, delete, update
    }


    public int deleteUser(String id) throws Exception {
        Connection conn = ds.getConnection();

        String sql = "delete from user_info where id = ? ";
        PreparedStatement pstmt = conn.prepareStatement(sql); //SQL Injection 공격, 성능향상
        pstmt.setString(1,id);
        return pstmt.executeUpdate();
    }



    @Test //여러번 테스트 해도 통과 하도록 작성해야 한다.
    public void selectUserTest() throws Exception {
        deleteAll();
        User user = new User("asdf2", "1234", "abc", "aaa@aaa.com", new Date(), "facebook", new Date());
        int rowCnt = insertUser(user);
        User user2 = selectUser("asdf2");

        assertTrue(user.getId().equals("asdf2"));
    }


    @Test
    public void deleteUserTest() throws Exception {
        deleteAll();
        int rowCnt = deleteUser("asdf");
        assertTrue(rowCnt==0);

        User user = new User("hohohoo", "1234", "abc", "aaa@aaa.com", new Date(), "facebook", new Date());
        rowCnt = insertUser(user);
        assertTrue(rowCnt == 1);

        rowCnt = deleteUser(user.getId());
        assertTrue(rowCnt == 1);

        assertTrue(selectUser(user.getId()) == null);
    }


    //매개변수로 받은 사용자 정보로 user_info 테이블을 update히는 메서드 깃허브에 있음.
    public int updateUser(User user) throws Exception {
        return 0;
    }


    //사용자 정보를 select하는 메서드 구현
    public User selectUser(String id) throws Exception {
        Connection conn = ds.getConnection();

        String sql = "select * from user_info where id = ? ";

        PreparedStatement pstmt = conn.prepareStatement(sql); //SQL Injection 공격, 성능향상
        pstmt.setString(1,id);
        ResultSet rs = pstmt.executeQuery(); // select

        if(rs.next()) {
            User user = new User();
            user.setId(rs.getString(1));
            user.setPwd(rs.getString(2));
            user.setName(rs.getString(3));
            user.setName(rs.getString(4));
            user.setBirth(new Date(rs.getDate(5).getTime()));
            user.setSns(rs.getString(6));
            user.setReg_date(new Date((rs.getTimestamp(7).getTime())));
            return user;

        }
        return null;
    }


    //사용자 정보를 user_info 테이블에 저장하는 메서드
    public int insertUser(User user) throws Exception {
        Connection conn = ds.getConnection();
//        insert into user_info (id, pwd, name, email, birth, sns, reg_date)
//        values ('hyeon','dydgus12', 'smith', 'aa@aaa.com', '2022-11-11', 'facebook', now());



        String sql = "insert into user_info values (?,?,?,?,?,?, now()) ";


        PreparedStatement pstmt = conn.prepareStatement(sql); //SQL Injection 공격, 성능향상
        pstmt.setString(1, user.getId());
        pstmt.setString(2, user.getPwd());
        pstmt.setString(3, user.getName());
        pstmt.setString(4, user.getEmail());
        pstmt.setDate(5, new java.sql.Date(user.getBirth().getTime()));
        pstmt.setString(6, user.getSns());

        int rowCnt = pstmt.executeUpdate(); // insert, delete, update
        return rowCnt;


    }

    @Test
    public void jdbcConnectionTest() throws Exception {
//        ApplicationContext ac = new GenericXmlApplicationContext("file:src/main/webapp/WEB-INF/spring/**/root-context.xml");
//        DataSource ds = ac.getBean(DataSource.class);

        Connection conn = ds.getConnection(); // 데이터베이스의 연결을 얻는다.

        System.out.println("conn = " + conn);
        assertTrue(conn!=null);
    }
}
