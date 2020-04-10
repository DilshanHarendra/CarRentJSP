/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.sun.net.httpserver.HttpServer;
import javax.servlet.http.HttpServlet;




public abstract class AddNew extends HttpServlet{
    
    protected String table,query;

    public abstract String inserDb();
    public  abstract String updateDb();
    public  abstract  String getData();
    public  abstract String deleteDb();
    
    }

    
