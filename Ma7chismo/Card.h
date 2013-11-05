//
//  Card.h
//  Ma7chismo
//
//  Created by Akshay Bakshi on 11/3/13.
//  Copyright (c) 2013 akshaybakshi. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;

@property (nonatomic, getter = isMatched) BOOL matched;
@property (nonatomic, getter = isChosen) BOOL chosen;

-(int)match:(NSArray *) otherCards;

@end
