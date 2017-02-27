//
//  main.m
//  04_constants
//
#import <Foundation/Foundation.h>

//#define LENGTH 10
//#define WIDTH 5
//#define NEWLINE '\n'

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Define constants using #define preprocessor
        // or const keyword.
        const int  LENGTH = 10;
        const int  WIDTH  = 5;
        const char NEWLINE = '\n';
        
        int area;
        
        area = LENGTH * WIDTH;
        
        NSLog(@"Value of area : %d", area);
        NSLog(@"%c", NEWLINE);
    }
    return 0;
}
