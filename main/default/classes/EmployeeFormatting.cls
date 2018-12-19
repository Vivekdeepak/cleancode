// THE NAME OF THIS CLASS IS NOT CORRECT USED TO MAKE
// SEQUENCE THAT IT
// This class highlights the do's and don'ts of formatting 
// in code
public class EmployeeFormatting {

    // VERTICAL FORMATTING   
    /* Vertical formatting is something the way a class is read from top to bottom.
    * Declare global variables at top.
    * Declare local variable closest, to where it is used.
    * Write the functions from top to bottom based on their usage
    * Spacing between function should be one line, if there is no comments
    * if you are not adding parenthesis in a single line if or for make sure 
    * to add a line gap for next thing.
    * parameters in function should have a space between them after comma 
    */

    // HORIZONTAL ALIGNMENT
    /* any statement in code or query should fit into the reading 
    *  screen. 
    *  No need to add unnecessary spaces to align variables
    *  No need to add unnecessary line spaces 
    *  Indentation should be proper, single tab space between new  
    *  variables,loops, function call is enough to make it clear
    */

    // Example :- 
    // below example shows all this with comments
    
    // Don't do this - unnecessary spaces to align variables
    public String    employeeName;
    public Integer   employeeNumber;
    public Integer   employeeHolidayDiscount;

    //Correct Way
    public String employeeName;
    public Integer employeeNumber;
    public Integer employeeHolidayDiscount;

    public void iAmTheFirstMethod(){
        Integer loopCounter = 0; // local variable declaration is correct here, closest to use
        for(loopCounter;loopCounter < 30;loopCounter++)
            iAmTheWrongExample(loopCounter,loopCounter+1);
        // this line space is required to add clarity because loop does not have parenthesis
        iAmTheCorrectExample(5,6);
    }

    // there is unnecessary space here it should be only one line
    
    // comments added to highlight all the thing wrong with this function
    public void iAmTheWrongExample(Integer start,Integer end){  // no space between parameter after comma        
        try{
            // this query/line does not fit in the reading screen correct way is in the next method
            for(Customer customer : [SELECT Id,Name,Phone,Email,DateOfBirth,HomeAddress,Age,Height,Color,Gender,TotalYearsOfExperiance FROM Customer WHERE Age < 45 AND TotalYearsOfExperiance > 10]){
        
        } // bad Indentation
        }catch(Exception exp){
             
        }
        // additional space
    }

    // correct way
    public void iAmTheCorrectExample(Integer start, Integer end){        
        try {            
            for(Customer customer : [SELECT Id,Name,Phone,Email,DateOfBirth,HomeAddress,
                                    Age,Height,Color,Gender,TotalYearsOfExperiance 
                                    FROM Customer 
                                    WHERE Age < 45]){
            
            }
        }catch(Exception exp){

        }
    }
}