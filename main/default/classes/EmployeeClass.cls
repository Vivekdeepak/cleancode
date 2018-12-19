/*
*  class name should be noun
*  For example :- Customer, Account AddressParser etc
*/
// THE NAME OF THIS CLASS IS NOT CORRECT USED TO MAKE
// SEQUENCE THAT IT (IT SHOULD NOT CONTAIN CLASS IN IT)
public class EmployeeClass {

    // Class should follow
    // SINGLE RESPONSIBILITY PRINCIPLE (SRP)
    // which means class should have only one purpose
    // if the single purpose is broad then you can
    // split the class in multiple classes or hierarchy
    // of class

    // Sample class names

    // Employee
    // EmployeeFinanceHandler
    // EmployeeLeavesHandler
    // etc...

    // Employee class should have only basic information
    // or functions related to employee

    // EmployeeFinanceHandler only caters to Finance related details
    // of employee
    class EmployeeFinanceHandler extends EmployeeClass {}

    // EmployeeLeavesHandler only caters to leaves related details
    // of employee
    class EmployeeLeavesHandler extends EmployeeClass {}

}
