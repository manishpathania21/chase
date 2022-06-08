package utils;

import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import java.util.Map;

import static io.restassured.RestAssured.given;

public class RestExchange {
    public static Response postWithHeader(Map<String,String> headers,String endpoint, String requestBody){
        RequestSpecification request ;
        RequestSpecBuilder builder;
        builder  = new RequestSpecBuilder();
        System.out.println("the request sent is -> " + requestBody);
        builder.setBody(requestBody);
        request = builder.build();

        return  given()
                .headers(headers)
                .spec(request)
                .when()
                .post(endpoint);

    }
    public static Response patchWithHeader(Map<String,String> headers,String endpoint, String requestBody){
        RequestSpecification request ;
        RequestSpecBuilder builder;
        builder  = new RequestSpecBuilder();
        builder.setBody(requestBody);
        System.out.println("the request sent is -> " + requestBody);
        request = builder.build();

        return  given()
                .headers(headers)
                .spec(request)
                .when()
                .patch(endpoint);

    }
    public  static Response getResponse(String endpoint){
        return given()
                .when()
                .get(endpoint);
    }
    public  static Response deleteResource(String endpoint){
        return given()
                .when()
                .delete(endpoint);
    }
}
