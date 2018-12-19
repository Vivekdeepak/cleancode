// THE NAME OF THIS CLASS IS NOT CORRECT USED TO MAKE
// SEQUENCE THAT IT
// This class highlights the do's and don'ts of commenting 
// in code
public class EmployeeComment {
    /*
    * Comments can be good as well as unnecessary
    * Below examples will show where all comments can be added 
    * And where it is not required
    */

    // GOOD COMMENTS

    /* 1. Legal Comments
    * Copyright (c) under abc.com etc 
    */

    /* 2. Informative comments
    *  Example :-
    */
    public void someMethod(){
        //This is our best attempt to get a race condition
        //by creating large number of threads.
        for(Interger i = 0;i < 25000;i++){
            //logic
        }
    }

    // 3. Warning comments
    // For example :-
    
    // Don't run unless you 
    // have some time to kill.
    public void runAllTest(){
        
    }

    // 4. TODO comments
    /* Mostly used to highlight that work is still pending
    * or this can be refactored later, most morden day IDE's
    * recognise TODO comments to let the developers know where all
    * changes need to be done 
    * Example of TODO comment
    */

    //TODO: this method need to be bulkified later
    public void dataPurging(){

    }

    // 5. Amlification
    /* Sometimes it is required to explain the importance of
    *  small things which have bigger significance, so that it
    *  cannot be ignored.
    * For Exmaple :-  
    */
    public void dataPurging(String flag){
        // the trim is real important.  It removes the starting
        // spaces that could cause the item to be recognized. 
        // because we cannot control what string we get
        String actualStartTime = flag.trim();
    }

    // 6. Documentation
    /* when you are creating public code or API etc
    *  it is very important that it is well documented
    *  standard javadocs concepts is inbuilt in most IDE's
    *  this becomes very usefull for end user to understand 
    *  the behavior of code. Example :-    
    */

    /**
       @description 

       sample description
       
       @params type 
       @return this will return list of all employees
    */
    public EmployeeComment getAllEmployees(String type){
        return null;
    }


    // BAD COMMENTS

    // 1. Mumbling/Noise 
    
    /* This is Unnecessary comments explaining what is obvious 
    *  and providing detail explanation of what the function 
    *  does etc. 
    *  For example :-
    */

    // there is no comment required here which explian what 
    // this method does
    public EmployeeComment createEmployee(){
        return null;
    }
    
    // String employee name - this is not required here
    // it is clear with the name what it is about 
    public String employeeName;

    // 2. Position Markers
    /* Developers use this type of comments to mark a section 
    *  etc. Which is not required.
    */
    // for example below a position marker comment, and 
    // it is not required
    // DML Actions Below >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    // 3. Closing Brace
    // Below example shows Closing brace comments 
    // which is not required
    public void closingBraceExample(){
        try {
            if(true){

            } // if ends

        } // try ends
        catch(Exception exp){

        } // catch
    } 

    // 4. Commented Code
    // Don't leave code which is commented make sure it is removed

    // 5. Non public code documentation

    // 6. History comments 

}