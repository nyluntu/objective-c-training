//
//  main.m
//  08_pointers
//

/*
 
 Read more: 
 https://www.tutorialspoint.com/objective_c/objective_c_pointers.htm
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int  var1;
        char var2[10];
        
        NSLog(@"Address of var1 variable: %x\n", &var1  );
        NSLog(@"Address of var2 variable: %x\n", &var2  );
        
        int  var = 20;   /* actual variable declaration */
        int  *ip;        /* pointer variable declaration */
        
        ip = &var;  /* store address of var in pointer variable*/
        
        NSLog(@"Address of var variable: %x\n", &var  );
        
        /* address stored in pointer variable */
        NSLog(@"Address stored in ip variable: %x\n", ip );
        
        /* access the value using the pointer */
        NSLog(@"Value of *ip variable: %d\n", *ip );
    }
    return 0;
}
