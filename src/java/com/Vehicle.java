
package com;

import java.util.UUID;


public class Vehicle extends AddNew{
   private  String vehicleNimber,chasinumber,seats,catogory,message,id;
     private Dbconnect db;
   
     
     public Vehicle(){
    db = new Dbconnect();
      
   
   }
   
    public  String inserDb(){
    String r="Error";
    id="Ve"+UUID.randomUUID().toString();
    String query="INSERT INTO `vehicle`(`id`, `vehiclenumber`, `chasilenumber`, `seats`, `catogory`) VALUES ('"
             +id+"','" + vehicleNimber+"','"+chasinumber+"','"+seats+"','"+catogory+"')";
     r=db.DbInsert(query);
        if (r.startsWith("java.sql.SQLIntegrityConstraintViolationException: Duplicate entry")) {
                r="Vehicle Number or Chasi Number  Alredy Exist";
            }
             
    return  r;
    }
    public  String updateDb(){
     String r="";
    
    
    return  r;
    }
    public    String getData(){
     String r="";
    
    
    return  r;
    }
    public   String deleteDb(){
     String r="";
     String query="DELETE FROM `vehicle` WHERE id= \'"+this.id.trim()+"' LIMIT 1";
     r= db.deleteRow(query);
    
    return  r;
    }

    public void setVehicleNimber(String vehicleNimber) {
        this.vehicleNimber = vehicleNimber;
    }

    public void setChasinumber(String chasinumber) {
        this.chasinumber = chasinumber;
    }

    public void setSeats(String seats) {
        this.seats = seats;
    }

    public void setCatogory(String catogory) {
        this.catogory = catogory;
    }

    public void setId(String id) {
        this.id = id;
    }
   
   
   
   
   
   
   
}
