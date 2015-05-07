//
//  Deck.h
//  DeckCartasVirtual
//
//  Created by Pro on 07/05/15.
//  Copyright (c) 2015 Infnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
