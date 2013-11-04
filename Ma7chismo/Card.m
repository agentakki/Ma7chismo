//
//  Card.m
//  Ma7chismo
//
//  Created by Akshay Bakshi on 11/3/13.
//  Copyright (c) 2013 akshaybakshi. All rights reserved.
//

#import "Card.h"

@interface Card ()

@end

@implementation Card

-(int) matchCard: (NSArray *) otherCards {
    int score = 0;
    
    for(Card *card in otherCards)
    {
        if([card.contents isEqualToString:self.contents])
            score=1;
    }
    return score;
}

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view.
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}



@end
