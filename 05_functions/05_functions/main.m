//
//  main.m
//  05_functions
//
#import <Foundation/Foundation.h>

/*
 DEFINING METHOD
 
 - (return_type) method_name:( argumentType1 )argumentName1
 joiningArgument2:( argumentType2 )argumentName2 ...
 joiningArgumentn:( argumentTypen )argumentNamen
 {
 body of the function
 }
 */

@interface SampleClass : NSObject

-(int) max:(int)number1 secondNumber:(int)number2;

@end

@implementation SampleClass

-(int) max:(int)number1 secondNumber:(int)number2 {
    
    int result;
    
    if(number1 > number2)
        result = number1;
    else
        result = number2;
    
    return result;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int a = 100;
        int b = 200;
        int result;
        
        SampleClass *sampleClass = [[SampleClass alloc]init];
        result = [sampleClass max:a secondNumber:b];
        
        NSLog(@"Max value is : %d", result);
    }
    return 0;
    
   
}
