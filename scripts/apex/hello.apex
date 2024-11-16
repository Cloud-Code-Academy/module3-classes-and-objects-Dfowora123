// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

/* string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar); */

public static String removeDuplicateWords(String sentence) {
    // Split the sentence into words
    String[] wordArray = sentence.split(' ');
    System.debug('List contains: ' + wordArray);

    // Create a set to store unique words
    Set<String> uniqueSet = new Set<String>(wordArray);
    System.debug('Set contains: ' + uniqueSet);

    // Join the unique words back into a sentence
    String result = String.join(new List<String>(uniqueSet), ' ');

    // Return the sentence with unique words
    return result;
}

// Call the method
System.debug(removeDuplicateWords('Hello Hello Salesforce Salesforce'));
