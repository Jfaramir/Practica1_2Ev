/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author xp
 */
public class GestorConexion {
    Connection conn1; 
    String cadena_resultado = "";
    String cadena_resultado2 = "";
    String cadena_resultado3 = "";
   
    public GestorConexion() {
        conn1 = null;
        
        
        try {
            String url1 = "jdbc:mysql://localhost:3306/discografica?"
                    + "useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String user = "root";
            String password = "";
            
            conn1 =  DriverManager.getConnection(url1, user, password);
            
            ResultSetMetaData metaDatos = rs.getMetaData();
            
            
            if (conn1 != null) {
                System.out.println("Conectado a discográfica…");
            }
            
            
            
            
            
            
        } catch (SQLException ex) {
            System.out.println("ERROR: dirección o usuario/clave no válida");
            ex.printStackTrace();
        }
    }
    
    
    public void addColumna(String nombre){
        try {
            conn1.setAutoCommit(false);
            
            Statement sta = conn1.createStatement();
        
            sta.executeUpdate("ALTER TABLE album ADD "+ nombre +" VARCHAR(30)");

            sta.close();
            
            conn1.commit();
            
           System.out.println("has añadido una columna");
        } catch (Exception e) {
            System.out.println("Error");
            try {
                    if(conn1 != null){
                        conn1.rollback();
                    }
                } catch (Exception se2) {
                    se2.printStackTrace();
                }
             e.printStackTrace();
        }  
    }
    
    public void CerrarConexion(){
        try {
            conn1.close();
            System.out.println("Conexion cerrada");
        } catch (SQLException e) {
            System.out.println("Error al cerrar la conexion");
            e.printStackTrace();
        }
    }
    
     public String consultaStatement(){
        String fallo = "error";
        
        try {
            conn1.setAutoCommit(false);
            
            Statement sta = conn1.createStatement();
            String query = "SELECT * FROM album WHERE Titulo like 'G%'";
            ResultSet rs = sta.executeQuery(query);
           
            ResultSetMetaData metaDatos = rs.getMetaData();
            
//          Se obtiene el número de columnas.
            int numeroColumnas = metaDatos.getColumnCount();
            
//          Se crea un array de etiquetas para rellenar
            Object[] etiquetas = new Object[numeroColumnas];
            
            // Se obtiene cada una de las etiquetas para cada columna
            for (int i = 0; i < numeroColumnas; i++){
//              Nuevamente, para ResultSetMetaData la primera columna es la 1. 
                etiquetas[i] = metaDatos.getColumnLabel(i + 1); 
            }
            
            modelo.setColumnIdentifiers(etiquetas);
            
            
            
//            conn1.setAutoCommit(false);
//            
//            Statement sta = conn1.createStatement();
//        
//            String query = "SELECT * FROM album WHERE Titulo like 'G%'";
//            ResultSet rs = sta.executeQuery(query);
//            
//            while (rs.next()) {  
//                
//                cadena_resultado = cadena_resultado + rs.getInt("Id");
//                cadena_resultado2 = cadena_resultado2 + rs.getString("Titulo");
//                cadena_resultado3 = cadena_resultado3 + rs.getString("Anno");
////                System.out.println("ID- " + rs.getInt("Id") + ", Titulo " + rs.getString("Titulo") + ", Año " + rs.getString("Anno"));
//            }
//            rs.close();
//            
//            sta.close();
//            
//            conn1.commit(); 
//            
//            System.out.println("Consultado Correctamente");
//            
//            return cadena_resultado;
//           
            
        } catch (Exception e) {
               System.out.println("Error");
               try {
                    if(conn1 != null){
                        conn1.rollback();
                    }
                } catch (Exception se2) {
                    se2.printStackTrace();
                }
               e.printStackTrace();
               return fallo;
        }
    }
}
