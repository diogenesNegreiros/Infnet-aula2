//
//  PlayingCard.h
//  DeckCartasVirtual
//
//  Created by Pro on 07/05/15.
//  Copyright (c) 2015 Infnet. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
