//
//  CardMatchingGame.h
//  ProjectTest1
//
//  Created by phamvanhung on 2014/10/01.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Desk.h"
@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck: (Desk *)deck;

@property (nonatomic, readonly) NSInteger score;

@end
