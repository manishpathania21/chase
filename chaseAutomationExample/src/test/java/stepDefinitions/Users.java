package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import org.junit.Assert;
import utils.EndPoints;
import utils.RestExchange;
import utils.TestContext;
import java.util.List;

public class Users {
    private TestContext testContext;
    public Users(TestContext testContext) {
        this.testContext = testContext;
    }
    RestExchange restExchange;
    @Given("when I get all the users with the response code {int}")
    public void whenIGetAllTheUsersWithTheResponseCode(int statusCode) {
        String endpoint = testContext.BASE_URL + EndPoints.GET_USERS;
        testContext.response = restExchange.getResponse(endpoint);
        System.out.println("The response received is " + testContext.response.prettyPrint());
        Assert.assertTrue(statusCode== testContext.response.statusCode());
    }

    @When("I search a user by {string} with {int}")
    public void iSearchAUserByWith(String userId, int statusCode) {
        String endpoint = testContext.BASE_URL + EndPoints.GET_USERS_byId.replace("{userid}", userId);
        Response response = restExchange.getResponse(endpoint);
        Assert.assertTrue(statusCode==response.statusCode());
        if(statusCode==200) {
            System.out.println("The response received is " + response.prettyPrint());
            JsonPath jsonPathEvaluator = response.jsonPath();
            String id = jsonPathEvaluator.get("id").toString();
            Assert.assertTrue(id.equalsIgnoreCase(userId));
        }
    }

    @Then("validate the list of the users populated")
    public void validateTheListOfTheUsersPopulated() {
        List<Integer> userIDs = testContext.response.jsonPath().getList("id");
        Assert.assertFalse(userIDs.isEmpty());
    }
}
