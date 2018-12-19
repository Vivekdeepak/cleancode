// THE NAME OF THIS CLASS IS NOT CORRECT USED TO MAKE
// SEQUENCE THAT IT
// This class highlights the do's and don'ts 
// when naming and using a variable 
public class EmployeeVariable {

    // 1. Variables names should explain their
    // purpose and should be pronounceable and searchable
    // For Example :-
    public Integer daysBetweenDates;

    // 2. do not eat words in function and variable names
    // try to write complete words
    // WRONG
    public Integer daysBetDates;

    // 3. Don't try be funny
    // WRONG
    public Integer thisWillCostYouMoney;
    // CORRECT
    public Integer totalMoneyToDeduct;

    // 4. Try to add context whenever possible
    // FROM
    public String firstName;
    public String lastName;
    public String city;
    public String postalCode;

    // TO
    public String employeeFirstName;
    public String employeeLastName;
    public String addressCity;
    public String addressPostalCode;
    public String billingCity;
    public String billingPostalCode;
}
