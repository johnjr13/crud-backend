
package br.com.empresa.DAO;

import br.com.empresa.DTO.ClientDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ClientDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ClientDTO> list = new ArrayList<>();

    // Inserir Cliente
    public void insertClient(ClientDTO clientDTO) throws Exception {
        String sql = "INSERT INTO clientes (nome, cpf, idade) VALUES (?,?,?)";
        con = new ConexaoDAO().conexaoBD();

        try {

            pstm = con.prepareStatement(sql);
            pstm.setString(1, clientDTO.getName());
            pstm.setLong(2, clientDTO.getCpf());
            pstm.setLong(3, clientDTO.getIdade());

            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        	throw new Exception("Erro ao executar SQL"+e);
        }
    }

    // Listar todos Clientes
     public ArrayList<ClientDTO> listClient() throws Exception {

        String sql = "SELECT * FROM clientes";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                ClientDTO clientDTO = new ClientDTO();
                clientDTO.setId(rs.getInt("id"));
                clientDTO.setName(rs.getString("nome"));
                clientDTO.setCpf(rs.getLong("cpf"));
                clientDTO.setIdade(rs.getLong("idade"));

                list.add(clientDTO);
            }

        } catch (Exception e) {
            throw new Exception("Erro ao executar SQL"+e);
        }
        return list;
    }
    // Listar todos Clientes
     public ClientDTO listClientById(int id) throws Exception {

        String sql = "SELECT c.id, c.nome, c.cpf, c.idade FROM clientes c where c.id =  " + id;
        con = new ConexaoDAO().conexaoBD();
        
        ClientDTO clientDTO = null;

        try {
            pstm = con.prepareStatement(sql);
            ///pstm.setInt(1, id);
            rs = pstm.executeQuery(sql);
           
            while (rs.next()) {
                clientDTO = new ClientDTO();
                clientDTO.setId(rs.getInt("id"));
                clientDTO.setName(rs.getString("nome"));
                clientDTO.setCpf(rs.getLong("cpf"));
                clientDTO.setIdade(rs.getLong("idade"));
            }

        } catch (Exception e) {
            throw new Exception("Erro ao executar SQL"+e);
        }
        return clientDTO;
    } 
     
     //delete
     
    public void deletClient(ClientDTO clientDTO) throws Exception{
	    	String sql = "DELETE FROM clientes WHERE id = ?";
	        con = new ConexaoDAO().conexaoBD();
    	
    	 try{
    		 
    		 pstm = con.prepareStatement(sql);
    		 pstm.setInt(1, clientDTO.getId());
    		 
    		 pstm.execute();
    		 pstm.close();
    		 
            
             
         }catch (Exception e){
        	 throw new Exception("Erro ao executar SQL"+e);
         }
    }
    
   public void updateClient(ClientDTO clientDTO) throws Exception{
	    	String sql = "UPDATE clientes SET nome = ?, cpf = ? , idade = ? WHERE id = ?";
	        con = new ConexaoDAO().conexaoBD();
    	
    	 try{
    		 
    		pstm = con.prepareStatement(sql);
    		
                 pstm.setString(1, clientDTO.getName());
                 pstm.setLong(2, clientDTO.getCpf());
                 pstm.setLong(3, clientDTO.getIdade());
                 pstm.setInt(4, clientDTO.getId());
    		 
    		 pstm.execute();
    		 pstm.close();
    		 
            
             
         }catch (Exception e){
        	 throw new Exception("Erro ao executar SQL: "+e);
         }
    }

    

    
}
