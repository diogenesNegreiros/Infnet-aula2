//
//  Card.m
//  DeckCartasVirtual
//
//  Created by Pro on 07/05/15.
//  Copyright (c) 2015 Infnet. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1; }
    }
    return score;
}

@end
