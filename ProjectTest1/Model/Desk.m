//
//  Desk.m
//  ProjectTest1
//
//  Created by phamvanhung on 2014/08/06.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "Desk.h"

@interface Desk()
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation Desk

- (NSMutableArray * )cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
    
    
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
    
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    if([self.cards count]){
        unsigned index = arc4random()%[self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
    
}

@end
