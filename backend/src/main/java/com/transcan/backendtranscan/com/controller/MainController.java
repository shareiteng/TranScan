package com.transcan.backendtranscan.com.controller;

import com.transcan.backendtranscan.domain.SearchRide;
import com.transcan.backendtranscan.domain.UserInfo;
import com.transcan.backendtranscan.services.SearchRideService;
import com.transcan.backendtranscan.services.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.BindResult;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path = "/index")
@CrossOrigin
public class MainController {
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private SearchRideService searchRideService;

    private ResponseEntity<Map<String, String>> getErrorMap(BindingResult result){

        Map<String, String> errorMap = new HashMap<>();



        for(FieldError error: result.getFieldErrors()){
            errorMap.put(error.getField(), error.getDefaultMessage());
        }

        return new ResponseEntity<Map<String, String>>(errorMap, HttpStatus.BAD_REQUEST);
    }


    @PostMapping(path = "/addNewUser")
    public ResponseEntity<?> addNewUser (@Valid @RequestBody UserInfo userInfo, BindingResult result) {

        if(result.hasErrors()) return getErrorMap(result);


        UserInfo newUser=userInfoService.save(userInfo);
        return new ResponseEntity<UserInfo>(newUser,HttpStatus.CREATED);
    }
    @PostMapping(path = "/addSearchDrive")
    public ResponseEntity<?> addSearchDrive (@Valid @RequestBody SearchRide searchRide, BindingResult result) {

        if(result.hasErrors()) return getErrorMap(result);

        SearchRide newRide=searchRideService.save(searchRide);
        return new ResponseEntity<SearchRide>(newRide,HttpStatus.CREATED);
    }


    //need to handle exception
    @RequestMapping(path = "/login")
    public @ResponseBody boolean get(@RequestParam String email,@RequestParam String password){
        Iterable<UserInfo> n = userInfoService.findAll();

        for (UserInfo c :n) {

            if(password.equals(c.getPassword())&& email.equals((c.getEmail())))
                return true;
        }
        return false;


    }
    @GetMapping(path = "/all")
    public @ResponseBody Iterable<UserInfo> getAllUsers(){
        return userInfoService.findAll();
    }

}
