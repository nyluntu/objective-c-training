//
//  main.m
//  02_tokens_in_objective_c
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Tokens!");
    }
    return 0;
}

/*
 Objective-C include many different tokens. Tokens are important to understand basic syntax.
 
 For example, in the hello world example, there is six different tokens.
 
 NSLog
 (
 @
 "Hello, Tokens!"
 )
 ;
 
 SEMICOLONS ;
 - Semicolons are end of the statement.
 - Indicates end of of logical entity
 
 COMMENTS
 - Like this block.
 - Ignored by the compiler.
 
 IDENTIFIERS
 - are used to identify variable
 - are case sensitive
 - not allow following characters @, $, and % within identifiers.
 - identifier isNumber and ISNumber are not the same.
 
 WHITESPACES
 - A line containing only whitespace, possibly with a comment, is known as a blank line, 
 and an Objective-C compiler totally ignores it.
 
 - Whitespace is the term used in Objective-C to describe blanks, tabs, newline characters 
 and comments. Whitespace separates one part of a statement from another and enables 
 the compiler to identify where one element in a statement, such as int, ends and the next 
 element begins. Therefore, in the following statement:
 
 int age;
 
 There must be at least one whitespace character (usually a space) between int and age for 
 the compiler to be able to distinguish them. On the other hand, in the following statement,
 
 fruit = apples + oranges;   // get the total fruit
 
 no whitespace characters are necessary between fruit and =, or between = and apples, although 
 you are free to include some if you wish for readability purpose.
 */
