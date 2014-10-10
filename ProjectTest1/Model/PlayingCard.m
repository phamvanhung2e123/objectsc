//
//  PlayingCard.m
//  ProjectTest1
//
//  Created by phamvanhung on 2014/08/06.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)match:(NSArray *)othersCards
{
    int score = 0;
    if ([othersCards count] == 1){
        id card = [othersCards firstObject];
        if([card isKindOfClass:[PlayingCard class]]){
            PlayingCard *otherCard = (PlayingCard*)card;
            if ( [self.suit isEqualToString:otherCard.suit]){
                score = 1;
            }else if(self.rank == otherCard.rank){
                score = 4;
            }
        }
    }
    return score;
}

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
}

@synthesize suit= _suit;

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSArray *)validSuits
{
    return @[@"♣︎",@"♠︎",@"♦︎",@"♥︎"];
}

+ (NSUInteger) maxRank
{
    return [[self rankStrings] count]-1;
}

- (void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank]){
        _rank=rank;
    }
}

- (void)setSuit:(NSString *)suit
{
    //NSLog(@"%@",suit);
    if ([[PlayingCard validSuits]containsObject: suit]) {
        _suit=suit;
    }
}


- (NSString *)suit
{
   
    //NSLog(@"%@",_suit);
    return _suit ? _suit : @"?";
}
@end
