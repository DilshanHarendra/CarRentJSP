
package com;


import static java.lang.System.out;
import java.sql.*;



public class Dbconnect {
      private Connection con;
   private Statement st;
   private ResultSet rs;
   private String url,user,pass;
   
   public Dbconnect(){
       url="jdbc:mysql://localhost/carrent";
       user="root";
       pass="";
      try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
             st=con.createStatement();
     
        } catch (Exception ex) {
          out.println("Error "+ ex);
        } 
   }
   
   public String DbInsert(String query){
       String r="Error";
       try {
           st.executeUpdate(query) ;
           r="Success";
          } 
       catch (SQLException e) {
           r=""+ e;
       }
       return r;
   }
   
   public  String DbgetOneRow(String query1){
       String r= "Error";
       
       try {
           rs= st.executeQuery(query1);
          
           if (rs.next()) {
             
              r= rs.getString(1)+"/"+rs.getString(2)+"/"+rs.getString(3)
                      +"/"+rs.getString(4)+"/"+rs.getString(5)+"/"+rs.getString(6)+"/"
                      +rs.getString(7)+"/"+rs.getString(8)+"/"+rs.getString(9)+"/"+rs.getString(10)+"/"+rs.getString(11) ;
              
           }else{
               r="NoValue";
           }
       } catch (Exception e) {
            r="Error "+ e;
       }
       return r;
   }

  
public  String getAllRow(String query){
       String r= "",x=" ";
    
       try {
          
             
             
          rs= st.executeQuery(query);
ResultSetMetaData rsmd = rs.getMetaData();
                      int col= rsmd.getColumnCount();
                      int j ;
         while (rs.next()) {
             for(j=1; j < col; j++){
              x+=rs.getString(j)+"/";
          }
          x+=rs.getString(j);
             
            r+=x+"~";
            x="";
         }
        
           
       } catch (Exception e) {
            r="Error "+ e;
       }
       return r;
   }






public String deleteRow(String query ){
   String r="Error";
       try {
           PreparedStatement preparedStatement =con.prepareStatement(query);
           preparedStatement.executeUpdate();
           r="Success";
          } 
       catch (Exception e) {
           r="Error"+ e;
       }
       return r; 
    
}

public String updateRow(String query ){
   String r="Error";
       try {
           PreparedStatement preparedStatement =con.prepareStatement(query);
           preparedStatement.executeUpdate();
           r="Success";
          } 
       catch (Exception e) {
           r="Error"+ e;
       }
       return r; 
    
}


  
  
 
  
  
}
