/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db_demo;

/**
 *
 * @author Abdul Majeed
 */
public class doctors {
    //int id;
    String name;
    String contact;
    String specialization;
    String salary;
    doctors(String name,String contact,String specialization,String salary)
    {
       //this.id = id;
       this.name =name;
       this.contact = contact;
       this.salary = salary;
       this.specialization=specialization;
    
    }
    
    
    String getName()
    {
    
       return name;
    }
    
    
    String getContact()
    {
    
       return contact;
    }
    String getSpecialization()
    {
    
       return specialization;
       
    }
    String getSalary()
    {
    
       return salary;
    }
    
    
}
