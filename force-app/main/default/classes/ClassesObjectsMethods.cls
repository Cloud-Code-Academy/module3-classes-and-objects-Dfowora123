/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Dami Fowora
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        String helloSf = 'Hello, Salesforce!'; // Initialize a String with 'Hello, Salesforce!'
       Integer len = helloSf.length();
        String helloSfLength = string.valueOf(len);

        String substring = helloSf.substringBefore(',');
       // System.debug(substring);
        String helloSfLower = helloSf.toLowerCase();
        List<String> helloList = new List<String>{helloSfLength, substring, helloSfLower };
        // Get the length of the String        
        // Get a substring of the String of the first 5 characters
        // Convert the String to lower case
        
        // Return the list with the string data
        // In the first position add the string length
        // In the second position add the substring
        // In the third position add the string in lower case
      //  System.debug(helloList);
        return helloList; // Replace null with the variable you used to store the result
    } //practiceStringMethods();

    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
            Boolean pre = input.startsWith('Sales');
            Boolean ends = input.endsWith('Force');
            Boolean con = input.contains('Awesome');

            List<Boolean> resultList = new List<Boolean> {pre, ends, con};
            //System.debug(resultList);
        // Check if the string starts with 'Sales'
        
        // Check if the string ends with 'Force'
        
        // Check if the string contains 'Awesome'
        
        return resultList; // Replace null with the variable you used to store the result
    } //checkStringContent('Salesforce is Awesome!');

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into words
        //List <String> uniqueList = sentence.split(' ');
        String [] uniqueList = sentence.split(' ');
       // System.debug('List contains ' + uniqueList);

       Set<String> uniqueSet = new Set<String>(uniqueList);
       String result = String.join(new List<String>(uniqueSet), ' ');
        //System.debug('Set contains ' + uniqueSet);
        // Create a set to store the unique words

        // Add each word to the set

        // Join the unique words back into a sentence

        // Return the sentence with unique words
        return result; // Replace null with the variable you used to store the result
    } //removeDuplicateWords('Hello Hello Salesforce Salesforce');

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
       Integer result = 0; // Initialize the result Integer
        List<String> vowels = new List<String>{'a', 'e', 'i', 'o', 'u'};
      
        for (Integer i = 0; i < str.length(); i++){

            String splitchar = str.substring(i, i + 1);
            if (vowels.contains(splitchar)){

                result++;
            }
        }
        System.debug(result);
        /*
        for () {
            // get individual charactersfrom the string - hint use substring or split
            // check if the character is a vowel
            // if it is a vowel, increment the result Integer
        }
        */

        return result; // Replace null with the variable you used to store the result
    } //countVowels('tell');

    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        // The list of scientists' names
        String concat = '';
        List<string> result = new List<string>();
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};
        //System.debug(scientistNames.size());
        for (Integer i = 0; i < scientistNames.size(); i++) {
            string element = scientistNames.get(i);
           
            if (element.toLowerCase().contains('g')) {
                result.add(element);
            }  
        }        
       
        // The variable to store the concatenated string

        // Loop through the list of scientists' names

            // If the name doesn't contain the letter 'G', skip this iteration

            // Add the name to the result string, followed by a comma
       //   String resulte =  string.join(result, ',');
        // Remove the last comma from the result string
       // System.debug(resulte);
        return string.join(result, ','); // Replace null with the variable you used to store the result
    } //findTheScientist();

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        // Square the input numbers using the Math.pow() function
        Double ra = Math.pow(a, 2);
        Double rb = Math.pow(b, 2);
        Double rdiff = Math.abs(ra - rb);
        // Calculate the absolute difference using Math.abs() function
        System.debug(rdiff);
        // Return the result
        return rdiff; // Replace null with the variable you used to store the result
    } //calculateDifferenceOfSquares(3, 4);

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {

        // Use Math class to generate number between 50 and 100

        Integer randomNumber = (Integer) Math.floor(Math.random() * 51) + 50;

        // Return the random integer
        return randomNumber; // Replace null with the variable you used to store the result
    }

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        // Get the todays date
        date dr = date.today();
        string form = dr.format();
       // System.debug(form);

        // Format the current date

        // Return the result
        return form; // Replace null with the variable you used to store the result
    }// getCurrentDate();

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {


        Map<String, Integer> dayofweekmap = new Map<String, Integer> {};
        // Define a map of day of the week as a key and day number as the value
        // Monday = 1, Tuesday = 2, etc.
        dayofweekmap.put('Monday', 1);
        dayofweekmap.put('Tuesday', 2);
        dayofweekmap.put('Wednesday', 3);
        dayofweekmap.put('Thursday', 4);
        dayofweekmap.put('Friday', 5);
        dayofweekmap.put('Saturday', 6);
        dayofweekmap.put('Sunday', 7);
        // Get the day name using .format('EEEE');
         String myday = dt.formatGmt('EEEE');
        // Get the day number from the map using the day name
        integer num = dayofweekmap.get(myday);
        // Return the result as a string
        return num.toString(); // Replace null with the variable you used to store the result
    }


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        //Double diffindays = 0;
        Integer re = 0;
       Integer d1year = 0;
        Integer d2year = 0;

      
        if (d1 == null || d2 == null) {
            //throw new IllegalArgumentException('Date values cannot be null');
            return null;
        } 
        else {
            d1year = d1.year();
            d2year = d2.year();
           // diffindays = Math.abs(d2.daysBetween(d1) / 365.2422) ;
           // re = diffindays.intValue();
           re = Math.abs(d2year-d1year);

        }
        // Subtract the difference in years
        //System.debug(diff);

        //return Math.round(diffindays); // Replace null with the variable you used to store the result
        return re;
    }//calculateDifferenceOfSquares(2008, 1, 1, 2024, 1, 1);

    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
        // Declare three public instance variables - title, author, pages
      Public String title; // title
      Public String author;// author
      Public Integer pages; // pages
       String strresult;
    
        // Book constructor to initialize the title and author
        public Book(String title, string author) {
            // Initialize the title and author
            this.author = author;
            //this.pages = pages;
            this.title = title;
        }
    
        // Method that returns the details of the book
        public String getBookDetails() {
            strresult = 'Title: '+ title +', Author: '+ author;
            // return A string containing the details of the book in the format "Title: <title>, Author: <author>"
            return strresult; // Replace null with the variable you used to store the result
        }
    }
    

    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        // Create a Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book Link = new Book('A Brief History of Time','Stephen Hawking');
        // Call the getBookDetails method on the book object to get the details of the book
        
        // Return the details of the book
        return link.getBookDetails(); // Replace null with the variable you used to store the result
    }

    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {
        // Create a list of books
        List<book> mybookList = new List <book>();
         // Update the title and author of myBook1
        myBook1.author = 'J.K. Rowling';
        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.pages = 352 ; // Update the pages for myBook1 to 352

       // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"

       Book mybook2 = new Book ('A Brief History of Time', 'Stephen Hawking');
       mybook2.pages = 256;

       mybookList.add(myBook1);
       mybookList.add(myBook2);
       // system.debug(mybookList);
       

        

        // Update the pages for A Brief History of Time to 256

        // Add the book to the list
        
        return mybookList; // Replace null with the variable you used to store the result      
    } //generateBookList(myBook1);


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
       Private String Name; // Declare private two instance variables - (TEXT) name and (Number) age
       Private Integer Age;
       

         // Constructor to initialize the name and age
       Public Person (String Name, integer Age){
        this.name = Name;
        this.Age = Age; 
       }      
    Public String introduceYourself (){
     //   string value = 'Hello, my name is' + Name + ' and I am' + Age + ' years old.' ;
     String value = 'Hello, my name is ' + Name + ' and I am ' + Age + ' years old.';
       return value;
    }
        // Method introduceYourself that returns the details of the person        
        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."
    // Getter method that returns the name of the person
        Public String getname (){
        return Name;

    }
        // Getter method that returns the age of the person

        Public Integer getage (){
            return Age;
    
        }
       

        // Setter method that sets the name of the person
        Public void setname (String Name){
            this.Name = Name;
    
        }
        

        // Setter method that sets the age of the person

        // Setter method that sets the name of the person
        Public void setage (Integer Age){
            this.Age = Age;
    
        }
    }

    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails() {
        List<String> results = new List<String>();
        // Create a new instance of Person class

        
        // Name the person 'John Doe' and set the age to 28
        Person j = new Person ('John Doe', 28);
      //  String inp = j.introduceYourself() + ', ' + j.getname() + ', ' +  j.getage();
       // results.add(inp);
       // System.debug(results);
       String intro = j.introduceYourself();
      string gname =  j.getname();
      string gage = j.getage().toString();
      results.add(intro);
      results.add(gname);
      results.add(gage);


        // Add the details of the person using the introduceYourself method

        // Get the name of the person using the getter method and add it to the list

        // Get the age of the person using the getter method and add it to the list
        
        return results; // Replace null with the variable you used to store the result
    } //personDetails();

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        // Create a new instance of the Person class using the provided name and age
        Person B = new person(name, age);
        // Return the new instance of the Person class
        return B; // Replace null with the variable you used to store the result
    }

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {

        // Loop through each name in the provided list of names

        List<person> newperson = new List<person>();
        String currentname ;

        for (Integer i = 0; i < names.size(); i++) {
            currentname = names.get(i);
            Person currentp = new person(currentname, age);
            newperson.add(currentp);
            
        }
       // System.System.debug(newperson);
            // Create a new Person object for each name
            
            // Add the new Person object to the list of Person objects
        
        
        // Return the list of Person objects
        return newperson; // Replace null with the variable you used to store the result
    }


    /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
        integer x = person1.getage();
        integer y = person2.getage();
       // if (x == null && y == null) {
            
        
        if (x > y) 
        {
            return person1;
        } 
        else if (y > x) 
        {
            return person2;
        }
        else 
        {
                return person1;
         }
        
       // return null; // Replace null with the variable you used to store the result
    }//}
}