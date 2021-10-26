package bdd.automação.api.testes.steps.api.testes.steps;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import java.util.Map;
import org.apache.http.HttpStatus;
import io.restassured.http.ContentType;



public class StepsDefinition {
	
 
		
	@Given("^faço um POST para endpoint da api$")
	public void façoPostEndpointApi() {
		
		addURI = "localhost:8080/pessoas";
		System.out.printIn("add URL  : +addURI");

  		  }
	
	@When("^envio um POST com os dados para o endpoint$")
	public void envioPostRequest() {
		headers = new HttpHeaders ():
		headers.add("Accept", "aplication/json");
		headers.add("Content-Type", "application/json")
}
	
}
