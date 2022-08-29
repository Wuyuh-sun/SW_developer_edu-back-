package com.example.demo.home;


import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	@GetMapping("/")
	public String home() {
		return "Hello world";
	}
	
	@GetMapping("/profile")
	public String profile() {
		return "{\"page\":\"Profile\",\"message\":\"Hello world\"}";
	}
	
	@GetMapping("/ex/json01")
	public String JsonEx() {
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("page", "My Page");
		jsonObj.put("message","Ok JSON");
		
		System.out.println(jsonObj.toString(2));
		
		return jsonObj.toString(2);
	}
	@GetMapping("/ex/json02")
	public String jsonListEx() {
		JSONArray jsonArr = new JSONArray();
		JSONObject json = null;
		
		json = new JSONObject();
		jsonArr.put(json);
		json.put("id", "hong");
		json.put("name", "È«±æµ¿");
		
//		json = new JSONObject();
		jsonArr.put(json);
		json.put("id", "kim");
		json.put("name", "±è±æµ¿");
		
//		json = new JSONObject();
		jsonArr.put(json);
		json.put("id", "park");
		json.put("name", "¹Ú±æµ¿");
		
		System.err.println(jsonArr.toString(1));
		
		return jsonArr.toString(1);
	}
}
