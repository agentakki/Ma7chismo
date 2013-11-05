//
//  PlayingCard.h
//  Ma7chismo
//
//  Created by Akshay Bakshi on 11/4/13.
//  Copyright (c) 2013 akshaybakshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+(NSUInteger) maxRank;

@end
