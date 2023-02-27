package br.com.empresa.resource;

import br.com.empresa.DAO.ClientDAO;
import br.com.empresa.DTO.ClientDTO;
import br.com.empresa.service.ClientService;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import java.util.List;

import static java.lang.System.out;

@Path("clients")
public class ClientResource {

	private ClientDAO clientDAO;
	// private String CHARSET_UTF_8;

	@Inject
	private ClientService clientService;

	@PostConstruct
	private void init() {
	}

	@POST
	@Path("/insert")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertClient(ClientDTO cliente) {

		try {
			this.clientService.inserirCliente(cliente);

		} catch (Exception e) {
			return e.getMessage();
		}

		return "Inserido com sucesso";
	}

	@GET
	@Path("/list")
	@Produces(MediaType.APPLICATION_JSON)
	public List<ClientDTO> listClients() {
		return this.clientService.listarClientes();
	}

	//busca por id
	@GET
	@Path("/list/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public ClientDTO listClientById(@PathParam("id") int id) {
		return this.clientService.listClientById(id);
	}
	
	@PUT
	@Path("/update")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response updateClient(ClientDTO cliente) {
		
		 this.clientService.updateClient(cliente);
		 return Response.ok().build();
	}

	@DELETE
	@Path("/delete/{id}")
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteClient(@PathParam("id") Integer id) {
                try {
			this.clientService.deletClient(id);

		} catch (Exception e) {
               return e.getMessage();
		}
                
                return "Removido com sucesso";

	}
}
