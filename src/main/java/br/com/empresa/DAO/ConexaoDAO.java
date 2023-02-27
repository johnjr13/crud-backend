package br.com.empresa.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDAO {

    public Connection conexaoBD() throws Exception {

        Connection con = null;
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/sistemclient?user=root&password=root";
            con = DriverManager.getConnection(url);
        return con;
    }
}
