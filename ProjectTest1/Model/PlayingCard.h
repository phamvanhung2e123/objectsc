//
//  PlayingCard.h
//  ProjectTest1
//
//  Created by phamvanhung on 2014/08/06.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong,nonatomic) NSString *suit;
@property(nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger) maxRank;

@end
