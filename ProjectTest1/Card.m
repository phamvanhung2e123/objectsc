//
//  Card.m
//  ProjectTest1
//
//  Created by phamvanhung on 2014/08/13.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "Card.h"

@interface Card()

@end
@implementation Card

- (int)match:(NSArray *)othersCards
{
    int score = 0;
    for (Card * card in othersCards){
        if([card.contents isEqualToString:self.contents]){
            score=1;
        }
    }
    return score;
}

@end    
