/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toechart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Types;
import javax.swing.JOptionPane;
import net.proteanit.sql.DbUtils;
import static toechart.SubPathwayPage.jobTable;

/**
 *
 * @author Dara
 */
public class DbConnect 
{
    private Connection con;
    private Statement st;
    private ResultSet rs;
    private PreparedStatement pst;
    
    DbConnect()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycareer","root","");
            st = con.createStatement();
            System.out.println("Database is connected");
        }
        catch(Exception e)
        {
            System.out.println("Error: " + e.getMessage());
        }
    }
    
    public void insertToDatabase(String firstName, String lastName, String middleName,
                                 String dateOfBirth, String gender, String address, String mobilePhone, String landlinePhone, 
                                 String educationLevel, String email, String password1, String accountType)
    {
        try
        {
            String insertString = "INSERT INTO users(user_id, firstName, lastName, middleName, dateOfBirth, gender, address, mobilePhone, landlinePhone, educationLevel, email, password1, account_type)"
                                + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement preStatement = con.prepareStatement(insertString);
            preStatement.setNull(1, Types.NULL);
            preStatement.setString(2, firstName);
            preStatement.setString(3, lastName);
            preStatement.setString(4, middleName);
            preStatement.setString(5, dateOfBirth);
            preStatement.setString(6, gender);
            preStatement.setString(7, address);
            preStatement.setString(8, mobilePhone);
            preStatement.setString(9, landlinePhone);
            preStatement.setString(10, educationLevel);
            preStatement.setString(11, email);
            preStatement.setString(12, password1);
            preStatement.setString(13, accountType);
            preStatement.execute();
            
            System.out.println("Inserted to the database");
        }
        catch(Exception ex)
        {
            System.out.println("Something is wrong in the Insert String  " + ex);
        }
                
    }
    
    public boolean CheckLogin(String email, String password1)
    {
        boolean check = false;
        
        try
        {   
            st =  con.createStatement();
            String sq = "SELECT * FROM users WHERE email = '" + email + "' AND password1 = '" + password1 + "'";
            rs = st.executeQuery(sq);
            
            while(rs.next())
            {
                check = true;
            }
            
            if(check == false)
            {
                System.out.println("Login is not correct");
            }
        }
        catch(Exception e)
        {
            System.out.println("Error: " + e.getMessage());
        }
        return check;
    }
    
    public String industrySelect()
    {
        try
        {
            st = con.createStatement();
            String sq = "SELECT * FROM industries";
            rs = st.executeQuery(sq);
            
            while(rs.next())
            {
                PathwayPage.cbxIndustries.addItem(rs.getString(2));
            }
        }
        catch(Exception e)
        {
            System.out.println("Error :" + e.getMessage());
        }
        return rs.toString();
    }
    
    public void categorySelect(int id)
    {
        try
        {
            System.out.println("Category is working");
            id = id + 1;
            st = con.createStatement();
            String catSelect = "SELECT * FROM Categories WHERE industries_industry_id = '"+ id +"'";
            rs = st.executeQuery(catSelect);
            
            while(rs.next())
            {
                PathwayPage.cbxCategories.addItem(rs.getString(2));
            }
        }
        catch(Exception e)
        {
            System.out.println("Error : " + e.getMessage());
        }
    }
    
    public void pathwaySelect(int id, int id2)
    {
        try
        {
            System.out.println("Pathway is working");
             // <editor-fold defaultstate="collapsed" desc="Category IDs">      
            if (id2==0) 
            {
                id = id + 1;
            }           
            if(id2==1)
            {
                id = id + 7;
            }
            if(id2==2)
            {
                id = id + 10;
            }
            if (id2==3) 
            {
                id = id + 13; 
            }
            //</editor-fold>
            id2 = id2 + 1;
            st = con.createStatement();
            String catSearch = "SELECT * FROM career_path WHERE categories_category_id = '"+ id +"' AND industries_industry_id = '"+ id2 +"'";
            rs = st.executeQuery(catSearch);
            while(rs.next())
            {
                PathwayPage.cbxPathway.addItem(rs.getString(2));
            }
        }
        catch(Exception e)
        {
            System.out.println("Error : " + e.getMessage());
        }
    }
    
    public void jobTable(int id, int id2)
    {
        try
        {
            System.out.println("Sub Pathway is working");
            id = id + 1;
            id2 = id2 + 1;
            String pathwaySearch = "SELECT salary, job_description FROM job_outcomes WHERE career_path_career_path_id = '"+ id +"' AND career_path_categories_category_id = '"+ id2 +"'";
            pst = con.prepareStatement(pathwaySearch);
            rs = pst.executeQuery();
            SubPathwayPage.jobTable.setModel(DbUtils.resultSetToTableModel(rs));
        }
        catch(Exception e)
        {
            
        }
    }
    
    
//     public void update_table()
//    {
//        try
//        {
//            String sql = "SELECT * FROM job_outcomes";
//            pst = con.prepareStatement(sql);
//            rs = pst.executeQuery();
//            jobTable.setModel(DbUtils.resultSetToTableModel(rs));
//        }
//        catch(Exception e)
//        {
//            JOptionPane.showMessageDialog(null, e);
//        }
//    }
}
