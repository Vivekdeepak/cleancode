// This class highlights Excpetion handling 
// in code
public class EmployeeException {

    // Simple rule of Exception handling is always think about the
    // worst case scenario and handle excpetion
    // always try to use try catch where there are chance for execptions
    // for example DML, object manipulation etc required exp handling

    // 1. try to thow exceptions rather than returning nulls
    // Example

    public void sampleMethod(){
        Employee emp = getEmployee('');
        if(emp != null){ // unnecessary null check in the parent method
            // some logic 
        }
    }

    public Employee getEmployee(String employeeId){
        Employee emp = Database.query('SELECT ... FROM Employee WHERE ID ='+employeeId);
        return emp; // Emp can be null also 
    }

    // correct way
    public void sampleMethod(){
        try {
            Employee emp = getEmployee('');
        }catch(EmployeeNotFound e){
            // logic
        }
    }

    public Employee getEmployee(String employeeId){
        Employee emp = Database.query('SELECT ... FROM Employee WHERE ID ='+employeeId);
        if(emp == null){
            throw new EmployeeNotFound();
        }
        return emp; 
    }

    public class EmployeeNotFound extends Exception {}

    // 2. Do not pass null 
    // returning null is bad but passing null into params is worse
    // try to handle posibilities of null before passing into a method class

    public Decimal calculateArea(Decimal l, Decimal b){
        return l*b; // if any of this param is null then it will throw null pointer exception
        // try to avoid adding error message when the call is made to this method
    }
}