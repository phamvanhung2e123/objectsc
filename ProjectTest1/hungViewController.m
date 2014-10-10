//
//  hungViewController.m
//  ProjectTest1
//
//  Created by phamvanhung on 2014/05/13.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "hungViewController.h"
#import "PlayingCardDesk.h"
#import "PlayingCard.h"
#import "CardMatchingGame.h"
@interface hungViewController ()

@property (nonatomic, strong) Desk *deck;
@property (nonatomic, strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation hungViewController

- (CardMatchingGame *)game
{
    if(!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    return _game;
}



- (Desk *)createDeck
{
    return [[PlayingCardDesk alloc] init];
}



- (IBAction)touchCardButton:(UIButton *)sender
{
    int cardIndex = (int)[self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
    NSLog(@"fefef");
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons){
        int cardIndex = (int)[self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        NSLog (@"%d", card.isChossen);
        NSLog (@"%d", card.isMatched);
        //cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text =  [NSString stringWithFormat:@"Score : %d", (int)self.game.score];
}


- (NSString *)titleForCard:(Card *)card
{
    return card.isChossen ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card
{
    return [UIImage imageNamed:card.isChossen ? @"cardfront" :@"cardback"];
}


@end
