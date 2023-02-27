package br.com.empresa.service;

import br.com.empresa.DAO.ClientDAO;
import br.com.empresa.DTO.ClientDTO;

import javax.ejb.Stateless;
import javax.ws.rs.core.Response;

import java.util.List;

@Stateless
public class ClientService {


	public void inserirCliente(ClientDTO cliente){

		ClientDAO clientDAO = new ClientDAO();
		try {
			clientDAO.insertClient(cliente);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}

	public List<ClientDTO> listarClientes(){

		ClientDAO clientDAO = new ClientDAO();
		List<ClientDTO> list = null;

		try {
			list = clientDAO.listClient();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}
        
       public ClientDTO listClientById(int id){

    	   ClientDAO clientDAO = new ClientDAO();
		   ClientDTO cliente = null;

		try {
			cliente = clientDAO.listClientById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cliente;

	}
        
        
        
        public void deletClient(Integer id){

		ClientDAO clientDAO = new ClientDAO();
		try {
			ClientDTO cliente = clientDAO.listClientById(id);
			
			if(cliente == null) {
				throw new Exception("Cliente inexistente");
			}
			
			clientDAO.deletClient(cliente);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}
        
        public void updateClient(ClientDTO cliente){

    		ClientDAO clientDAO = new ClientDAO();
    		try {
    			clientDAO.updateClient(cliente);
    		} catch (Exception e) {
    			throw new RuntimeException(e);
    		}
    		
        }
        
}
