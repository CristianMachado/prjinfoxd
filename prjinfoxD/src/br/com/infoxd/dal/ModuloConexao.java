package br.com.infoxd.dal;
import java.sql.*;

public class ModuloConexao {
    
    // Metodo que estabelece a conexao com o banco de dados
    
    public static Connection conector (){
        
        java.sql.Connection conexao = null;
        
        // a linha abaixo chama o driver de conexao
        
        String driver = "com.mysql.jdbc.Driver";
        // armazenar as informações a conexao do banco
        
        String url= "jdbc:mysql://localhost:3306/dbinfoxd";
        String user = "root";
        String password = "";
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
                    
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
        
    }
    
}
