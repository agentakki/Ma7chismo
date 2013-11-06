//
//  CardMatchingGame.h
//  Ma7chismo
//
//  Created by Akshay Bakshi on 11/5/13.
//  Copyright (c) 2013 akshaybakshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject
-(instancetype) initCardWithCount:(NSUInteger)count usingDeck:(Deck *)deck;
-(void)chooseCardAtIndex:(NSUInteger) index;
-(Card *)cardAtIndex: (NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
