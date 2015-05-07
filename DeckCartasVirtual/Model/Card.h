//
//  Card.h
//  DeckCartasVirtual
//
//  Created by Pro on 07/05/15.
//  Copyright (c) 2015 Infnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;
- (int)match:(NSArray *)otherCards;

@end
