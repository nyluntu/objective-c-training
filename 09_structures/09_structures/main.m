//
//  main.m
//  09_structures
//

/*
 
 https://www.tutorialspoint.com/objective_c/objective_c_structures.htm
 
 struct [structure tag]
 {
 member definition;
 member definition;
 ...
 member definition;
 } [one or more structure variables];
 */

#import <Foundation/Foundation.h>

// __unsafe_unretained is used because ARC new rules.
// Automatic Reference Counting (ARC)
struct Books {
    __unsafe_unretained NSString *title;
    __unsafe_unretained NSString *author;
    __unsafe_unretained NSString *subject;
    int book_id;
};

@interface SampleClass:NSObject

/* function declaration */
- (void) printBook:( struct Books) book ;

@end

@implementation SampleClass

- (void) printBook:( struct Books) book
{
    NSLog(@"Book title : %@\n", book.title);
    NSLog(@"Book author : %@\n", book.author);
    NSLog(@"Book subject : %@\n", book.subject);
    NSLog(@"Book book_id : %d\n", book.book_id);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct Books Book1;        /* Declare Book1 of type Book */
        struct Books Book2;        /* Declare Book2 of type Book */
        
        /* book 1 specification */
        Book1.title = @"Objective-C Programming";
        Book1.author = @"Nuha Ali";
        Book1.subject = @"Objective-C Programming Tutorial";
        Book1.book_id = 6495407;
        
        /* book 2 specification */
        Book2.title = @"Telecom Billing";
        Book2.author = @"Zara Ali";
        Book2.subject = @"Telecom Billing Tutorial";
        Book2.book_id = 6495700;
        
        /* print Book1 info */
        NSLog(@"Book 1 title : %@\n", Book1.title);
        NSLog(@"Book 1 author : %@\n", Book1.author);
        NSLog(@"Book 1 subject : %@\n", Book1.subject);
        NSLog(@"Book 1 book_id : %d\n", Book1.book_id);
        
        /* print Book2 info */
        NSLog(@"Book 2 title : %@\n", Book2.title);
        NSLog(@"Book 2 author : %@\n", Book2.author);
        NSLog(@"Book 2 subject : %@\n", Book2.subject);
        NSLog(@"Book 2 book_id : %d\n", Book2.book_id);
        
        SampleClass *sampleClass = [[SampleClass alloc]init];
        /* print Book1 info */
        [sampleClass printBook: Book1];
        
        /* Print Book2 info */
        [sampleClass printBook: Book2];
    }
    return 0;
}
