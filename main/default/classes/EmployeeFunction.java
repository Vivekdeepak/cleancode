// THE NAME OF THIS CLASS IS NOT CORRECT USED TO MAKE
// SEQUENCE THAT IT
public class EmployeeFunction {

    // FUNCTION SHOULD BE SMALL, VERY SMALL, VERY VERY SMALL
    // 1. Functions should be used for only single task
    // 2. Function names should have verb
    // 3. step down rule :- write functions which are used first, and so on in a class
    public void createEmployeeRecord(){  }

    // one major rule of functions is to be small
    // so try to make functions as small as possible
    // if they are big means there is something wrong
    // Worst scenario if they don't fit inside the reading screen
    // try to break functions into smaller functions
    // For example:-
    //FROM
    public Double calculateSalary(Employee e){
         if(e.Type == 'COMMISSIONED'){
             // some logic 9-10 lines
             return 12.00;
         }else if(e.Type == 'HOURLY'){
             // some other logic 9-10 lines
             return 12.00;
         }else if(e.Type == 'SALARIED'){
            // some other salary 9-10 lines
             return 12.00;
         }
    }

    // above example can be broken into
    // don't be shy in braking functions into
    // smaller function
    // Below is the correct way :-
    
    // CAUTION: Salesforce way of using switch statement is
    // different this is java example
    public Double calculateSalary(Employee e){
        switch on e.Type {
            when 'COMMISSIONED' {
                return calculateCommissionPay(e);
            }
            when 'HOURLY' {
                return calculateHourlyPay(e);
            }
            when 'SALARIED' {
                return calculateSalariedPay(e);
            }    
        }
    }


    public Double calculateCommissionPay(Employee e){
        // logic
        return 12.8;
    }

    public Double calculateHourlyPay(Employee e){
        // logic
        return 12.8;
    }

    public Double calculateSalariedPay(Employee e){
        // logic
        return 12.8;
    }

    // PARAMETERS
    // functions should have max 3 parameters,
    // no param functions :- niladic
    // single param functions :- monadic
    // two param functions :- dyadic
    // three param functions :- triadic
    // more than 3 param functions :- polyadic - it needs justification
    // if you are passing more than 3 that means function
    // is doing more than one thing which breaks the first rule

    // Don't pass Boolean parameter in your function
    // that already means you will check for condition and
    // do different things
    // WRONG 
    public void setTermsAndCondition(String name,String id,Boolean isCustomer){
        // This means you are doing 2 things here
        if(isCustomer){

        }else{

        }
    }
    // BREAK into
    public void setTermsAndConditionForCustomer(String name,String id){}
    public void setTermsAndConditionForOthers(String name,String id){}

    // MORE PARAMETERS
    // if you need to pass more parameters
    // then use an object (WrapperClass) and pass the object
    // as parameter

    // CONSTRUCTORS
    // use static functions insted of overloading constructors to
    // provide more meaning to the statement
    
    // FROM
    // in this example we don't know what is happening when the 
    // two parms are passed to constructor
    EmployeeFunction employeeFunction = new EmployeeFunction(1235.77,'Tony');
    // To
    // this gives better meaning
    EmployeeFunction employeeFunction = EmployeeFunction.setEmployeeSalaryAndName(1235.77,'Tony');
    
    // static method
    public static EmployeeFunction setEmployeeSalaryAndName(Double salary,String name){
        EmployeeFunction employeeFunction = new EmployeeFunction();
        // assign variables
        employeeFunction.salary = salary;
        return employeeFunction;
    }

}
