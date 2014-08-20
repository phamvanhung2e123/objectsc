//
//  Card.h
//  ProjectTest1
//
//  Created by phamvanhung on 2014/08/13.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChossen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match: (NSArray *)othersCards;

@end
