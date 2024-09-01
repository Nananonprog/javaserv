//package JdbcDaoDemo;
//
//import java.sql.*;
//
//public class JdbcDaoDemo {
//
//    public static void main(String[] args) {
//        StudentDAO dao = new StudentDAO();
//        Student s2 = new Student();
//        s2.rollno = 15;
//        s2.sname = "Archana";
//        dao.addStudent(s2);
//
//        dao.removeStudent(12);
//
//        Student s1 = dao.getStudent(12);
//        System.out.println(s1.sname);
//    }
//}
//class StudentDAO {
//    Connection con = null;
//
//    public Student getStudent(int rollno) {
//        try {
//            String query = "select sname from student where rollno=" + rollno;
//            Student s = new Student();
//            s.rollno = rollno;
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auto_db", "root", "Zelana_03");
//            Statement st = con.createStatement();
//            ResultSet resultSet = st.executeQuery(query);
//            resultSet.next();
//            String name = resultSet.getString(1);
//            s.sname = name;
//            return s;
//        } catch (Exception ex) {
//            System.out.println(ex);
//        }
//        return null;
//    }
//
//    public void addStudent(Student s){
//        try{
//            String query = "INSERT into student values (?,?)";
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/auto_db", "root", "Zelana_03");
//            PreparedStatement preparedStatement = con.prepareStatement(query);
//            preparedStatement.setInt(1, s.rollno);
//            preparedStatement.setString(2,s.sname);
//            preparedStatement.executeUpdate();
//        }catch (Exception ex){
//            System.out.println(ex);
//        }
//
//    }
//}
//    class Student{
//        int rollno;
//        String sname;
//    }
