package com.travelblog.web;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.travelblog.DAO.EmpDao;

import com.travelblog.Form.Employee;

@Controller
public class HomeController {
	
	@Autowired    
    private EmpDao dao;
	
    @RequestMapping(value = "/Nav", method = RequestMethod.GET)
    public ModelAndView showNavForm() {
   	 ModelAndView model = new ModelAndView("TravelHome");
   	 
   	Employee emp=dao.getEmpById(123); 
   	
   	model.addObject("empName", emp.getEmployee_name());
    model.addObject("empAdr", emp.getEmployee_address());
   	 return model;
    }
   

}
