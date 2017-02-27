//
//  main.m
//  03_variables
//

#import <Foundation/Foundation.h>

// Variable declaration
extern int a,b;
extern int c;
extern float f;

int main() {
    
    // Variable definition
    int a,b;
    int c;
    float f;
    
    // Actual initialization
    a = 10;
    b = 20;
    
    c=a+b;
    
    NSLog(@"Value of c : %d \n", c);
    
    f = 70.0/3.0;
    NSLog(@"Value of f : %f \n", f);
    
    return 0;
}

/*
 Same concept applies on function declaration where you provide 
 a function name at the time of its declaration and its actual 
 definition can be given anywhere else. In the following example, 
 it's explained using C function and as you know Objective-C 
 supports C style functions also:
 
 // function declaration
 int func();
 
 int main()
 {
 // function call
 int i = func();
 }
 
 // function definition
 int func()
 {
 return 0;
 }
 */
