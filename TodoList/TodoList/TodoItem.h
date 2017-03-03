//
//  TodoItem.h
//  TodoList
//
//  Created by Sovelluskontti on 03/03/2017.
//  Copyright © 2017 Sovelluskontti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
