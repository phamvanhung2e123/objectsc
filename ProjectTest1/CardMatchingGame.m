//
//  CardMatchingGame.m
//  ProjectTest1
//
//  Created by phamvanhung on 2014/10/01.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "CardMatchingGame.h"
@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards;// of Card

@end


@implementation CardMatchingGame

- (NSMutableArray *)cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Desk *)deck
{
    self = [super init];
    if(self){
        for(int i=0; i < count; i++){
            Card *card = [deck drawRandomCard];
            if(card){
                [self.cards addObject:card];
                
            }else{
                self = nil;
                break;
            }
        }
    }
    return self;
}

- (Card *)cardAtIndex:(NSUInteger)index
{
    return (index < [self.cards count]) ? self.cards[index]:nil;
}


static const int MISMATCH_PENALTY = 2;
static const int COST_TO_CHOOSE = 2;
- (void)chooseCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    if(!card.isMatched){
        if(card.isChossen){
            card.chosen = NO;
        } else{
            for (Card *otherCard in self.cards){
                if(otherCard.isChossen && !otherCard.isMatched){
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore){
                        self.score += matchScore;
                        card.matched = YES;
                        otherCard.matched = YES;
                    }else{
                        self.score -= MISMATCH_PENALTY;
                        otherCard.chosen = NO;
                    }
                }
                self.score -= COST_TO_CHOOSE;
                card.chosen = YES;
            }
        }
    }
}

@end
