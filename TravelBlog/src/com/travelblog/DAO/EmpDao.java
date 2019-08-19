package com.travelblog.DAO;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import com.travelblog.Form.Employee;    
    
public class EmpDao {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    

public Employee getEmpById(int employee_id){    
    String sql="select * from employee where employee_id=?";    
    return template.queryForObject(sql, new Object[]{employee_id},new BeanPropertyRowMapper<Employee>(Employee.class));    
}    

        
}    

