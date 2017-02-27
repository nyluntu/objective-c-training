//
//  main.m
//  07_numbers
//

/*
 In Objective-C programming language, in order to save 
 the basic data types like int, float, bool in object form,
 
 Objective-C provides a range of methods to work with 
 NSNumber and important ones are listed in following table.
 
 https://www.tutorialspoint.com/objective_c/objective_c_numbers.htm
 
 
 */

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject

-(NSNumber *)multiplyA:(NSNumber *)number1
            withNumber:(NSNumber *)number2;

@end

@implementation SampleClass

-(NSNumber *)multiplyA:(NSNumber *)number1
            withNumber:(NSNumber *)number2 {
    
    float floatNumber1 = [number1 floatValue];
    float floatNumber2 = [number2 floatValue];
    float total = floatNumber1 * floatNumber2;
    
    NSNumber *result = [NSNumber numberWithFloat:total];
    
    return result;
}

@end

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        SampleClass *sampleClass = [[SampleClass alloc]init];
        NSNumber *number1 = [NSNumber numberWithFloat:10.5];
        NSNumber *number2 = [NSNumber numberWithFloat:5.7];
        
        NSNumber *result = [sampleClass multiplyA:number1 withNumber:number2];
        NSString *resultString = [result stringValue];
        
        NSLog(@"Product id is : %@", resultString);
    }
    
    return 0;
}
