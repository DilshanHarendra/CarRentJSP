/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

/**
 *
 * @author Dilshan
 */
public class DeleteMsg extends AddNew{
     private  String id;
     private Dbconnect db;
   
     
     
     
   public void setId(String id) {
        this.id = id;
    }

    @Override
    public String inserDb() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String updateDb() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getData() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String deleteDb() {
        
    String r="";
     String query="DELETE FROM `vehicle` WHERE id= \'"+this.id.trim()+"' LIMIT 1";
     r= db.deleteRow(query);
    
    return  r;
    }
   
   
   
}
