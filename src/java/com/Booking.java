
package com;


import java.util.*;


public class Booking extends AddNew{
    private  String vpackage,catogory,Sdate,message,id,uid,Edate,picTime,numVehicle;

    
     private Dbconnect db;
   private Date dt;
   
   
     public Booking(){
          db = new Dbconnect();
          dt = new Date();
     }
    
     public  String inserDb(){
         String r="";
     id="Bo"+UUID.randomUUID().toString();
     
    String query="INSERT INTO `booking`(`id`, `userid`, `startDate`, `endDate`, `pickuptime`, `package`, `vehiclecatogory`, `noOfVehicles`, `bookDate`, `status`) "
            + "VALUES ('"
             +id+"','"+uid+"','" + Sdate+"','"+Edate+"','"+picTime+"','"+ vpackage+"','"+catogory+"','"+numVehicle+"',now(),'Pending')";
     r=db.DbInsert(query);
       
             
    return  r;
    
    
         
     }
    public  String updateDb(){
        String r="";
    String query="UPDATE `booking` SET status='confirm' WHERE id= \'"+this.id.trim()+"' LIMIT 1";
     r= db.updateRow(query);
    
    return  r;
    }
    
    
    
    public   String getData(){
        String r="";
    
    
    return  r;
    }
    public   String deleteDb(){
       
    String r="";
       
      String query="DELETE FROM `booking` WHERE id= \'"+this.id.trim()+"' LIMIT 1";
     r= db.deleteRow(query);
   
  
    
    return  r;
    }

    public void setVpackage(String vpackage) {
        this.vpackage = vpackage;
    }

    public void setCatogory(String catogory) {
        this.catogory = catogory;
    }

    public void setSdate(String Sdate) {
        this.Sdate = Sdate;
    }

    public void setEdate(String Edate) {
        this.Edate = Edate;
    }

    public void setNumVehicle(String numVehicle) {
        this.numVehicle = numVehicle;
    }
    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setPicTime(String picTime) {
        this.picTime = picTime;
    }

    public void setId(String id) {
        this.id = id;
    }
   

    
    
}
