//
//  PlayingCardDesk.m
//  ProjectTest1
//
//  Created by phamvanhung on 2014/08/06.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "PlayingCardDesk.h"

#import "PlayingCard.h"

@implementation PlayingCardDesk

- (instancetype) init
{
    self = [super init];
    if(self){
        for(NSString *suit in [PlayingCard validSuits]){
            for(NSUInteger rank = 1; rank <=[PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc]init];
                [card setSuit:suit];
                [card setRank:rank];
                [self addCard:card];
            }
        }
    }
    return self;
}



@end
