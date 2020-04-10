
package com;



import java.util.UUID;





public class User extends AddNew{
 
    private String fname,lname,mail,address,city,uname,pass,nic,dlicen,phone,id;
    private Dbconnect db;
   
   
            
            
            
   public User(){
       db = new Dbconnect();
      
      
   }
 
    public  String inserDb(){
        String id =UUID.randomUUID().toString();
    String re="Error";
    String query ="INSERT INTO userdetails(id, fname,lname,mail,dlicense,nic,address,city,phone,username,passwords) VALUES ('"
                   +id+"','" + fname+"','"+lname+"','"+mail+"','"+dlicen+"','"+nic+"','"+address+"','"+city+"','"
                  +phone+"','"+uname+"','"+pass+"')";
      
              re=db.DbInsert(query);
        
            if (re.startsWith("java.sql.SQLIntegrityConstraintViolationException:")) {
                re="Username Alredy Tacken Enter Another Username";
            }else if(re.equals("Success")){
               re="id"+id;
               
            }
      return re;
    }
    
    
    public String logUser(){
        String re="Error",x;
         String query="SELECT * FROM userdetails WHERE username='"+uname+"' " ;
         x=db.DbgetOneRow(query);
         
        if (!x.equals("NoValue")) {
            String value[]=x.split("/");
            if (value[10].equals(pass)) {
                re="id"+value[0];
            }else{
                re="Incorrect Password";
            }
        }else{
            re="Incorrect Username";
        }
        return  re;
    }
    
    
    
    public   String updateDb(){
       String r="";
       
        String query="UPDATE `userdetails` SET `mail`='"+this.mail +"',`address`='"+this.address+"',`city`='"+this.city+"',`phone`='"+this.phone+"' WHERE id= '"+this.id.trim()+"' LIMIT 1";
     r= db.deleteRow(query);
       
       
       
       
    return r;
    }
    
    public   String ChangePassword(){
       String r="";
       
        String query="UPDATE `userdetails` SET `passwords`='"+this.pass +"' WHERE id= '"+this.id.trim()+"' LIMIT 1";
     r= db.deleteRow(query);
       
       
       
       
    return r;
    }
    
    
    
    public    String getData(){
    String r="";
  
 
    
  return r; 
    }

    
    
   
    
    
    
    
    public   String deleteDb(){
       String r="";
       
      String query="DELETE FROM userdetails WHERE id= \'"+this.id.trim()+"' LIMIT 1";
     r= db.deleteRow(query);
   
    return r;
    }
    
    
    
    
     public void setId(String id) {
        this.id = id;
    }
   
    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public void setDlicen(String dlicen) {
        this.dlicen = dlicen;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
}
