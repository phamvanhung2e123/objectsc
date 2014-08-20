//
//  hungViewController.m
//  ProjectTest1
//
//  Created by phamvanhung on 2014/05/13.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import "hungViewController.h"

@interface hungViewController ()


@property (weak, nonatomic) IBOutlet UILabel *flipslabel;
@property (nonatomic) int flipCount;
@end

@implementation hungViewController

- (void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipslabel.text = [NSString stringWithFormat:@"Flip: %d", _flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    NSLog(@"Hung dai hiep");
    if([sender.currentTitle length]){
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
