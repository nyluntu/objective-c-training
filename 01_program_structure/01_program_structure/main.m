//
//  main.m
//  01_program_structure
//
//  Created by Sovelluskontti on 27/02/2017.
//  Copyright © 2017 Sovelluskontti. All rights reserved.
//

// Import is preprocessor command that tells compiler to import
// Foundation.h file before compilation.
#import <Foundation/Foundation.h>

// Declaring interface, inherits from NSObject.
// NSObject is base class for all objects.
@interface SampleClass:NSObject

// Declaring method to interface, not return anything.
- (void)sampleMethod;

@end // end of interface

// Implements SampleClass interface
@implementation SampleClass

// Implements required methods. Method just log string to debug windows.
- (void)sampleMethod{
    NSLog(@"STRUCTURE EXAMPLE: Hello, World! \n");
}

@end // end of implementation

// Main program.
int main()
{
    // Initialize new object instance.
    SampleClass *sampleClass = [[SampleClass alloc]init];
    
    // Call sampleMethod method.
    [sampleClass sampleMethod];
    
    // Terminates the main program.
    // Main program return value 0.
    return 0;
}
