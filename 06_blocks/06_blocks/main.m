//
//  main.m
//  06_blocks
//

/*
 An Objective-C class defines an object that combines data 
 with related behavior. Sometimes, it makes sense just to 
 represent a single task or unit of behavior, rather than 
 a collection of methods.
 
 Blocks are a language-level feature added to C, Objective-C 
 and C++ which allow you to create distinct segments of code 
 that can be passed around to methods or functions as if they 
 were values. Blocks are Objective-C objects which means they 
 can be added to collections like NSArray or NSDictionary. They 
 also have the ability to capture values from the enclosing 
 scope, making them similar to closures or lambdas in other 
 programming languages
 
 # Simple Block declaration syntax
 
 returntype (^blockName)(argumentType);
 
 # Simple block implementation
 
 returntype (^blockName)(argumentType)= ^{
 };
 
 */
#import <Foundation/Foundation.h>

void (^simpleBlock)(void) = ^{
    NSLog(@"This is a block");
};

// Blocks using type definitions.
typedef void (^CompletionBlock)();

@interface SampleClass : NSObject

-(void)performActionWithCompletion:(CompletionBlock)completionBlock;

@end

@implementation SampleClass

-(void)performActionWithCompletion:(CompletionBlock)completionBlock {
    
    NSLog(@"Action performed");
    completionBlock();
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        simpleBlock();
        
        // Blocks can be definited inside methods also.
        double (^multiplyTwoValues)(double, double) =
        ^(double firstValue, double secondValue) {
            return firstValue * secondValue;
        };
        
        double result = multiplyTwoValues(2,4);
        NSLog(@"The result is %f", result);
        
        
        SampleClass *sampleClass = [[SampleClass alloc]init];
        [sampleClass performActionWithCompletion:^{
            NSLog(@"This is a block passed to method.");
        }];
        
    }
    return 0;
}

