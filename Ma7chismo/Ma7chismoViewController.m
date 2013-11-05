//
//  Ma7chismoViewController.m
//  Ma7chismo
//
//  Created by Akshay Bakshi on 11/3/13.
//  Copyright (c) 2013 akshaybakshi. All rights reserved.
//

#import "Ma7chismoViewController.h"
#import "PlayingCardDeck.h"


@interface Ma7chismoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;

@end

@implementation Ma7chismoViewController

-(Deck *) deck{
    if(!_deck)
    { NSLog(@"Creating deck");
        _deck = [self createDeck];}
    return _deck;
}

-(Deck *) createDeck{
    return [[PlayingCardDeck alloc] init];
}

-(void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"FlipCount changed to %d", self.flipCount);
}
- (IBAction)touchCardButton:(UIButton *)sender {
    
    if([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        
        Card *card = [self.deck drawRandomCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        NSLog(@"%@",card.contents);
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}


@end
