//
//  Desk.h
//  ProjectTest1
//
//  Created by phamvanhung on 2014/08/06.
//  Copyright (c) 2014年 phamvanhung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Desk : NSObject
- (void)addCard: (Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
