//
//  Ma7chismoViewController.m
//  Ma7chismo
//
//  Created by Akshay Bakshi on 11/3/13.
//  Copyright (c) 2013 akshaybakshi. All rights reserved.
//

#import "Ma7chismoViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface Ma7chismoViewController ()
@property (strong, nonatomic) Deck* deck;
@property (nonatomic, strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;


@end

@implementation Ma7chismoViewController

-(Deck *) deck{
    if(!_deck)
    { NSLog(@"Creating deck");
        _deck = [self createDeck];}
    return _deck;
}

-(CardMatchingGame *) game{
    if(!_game) _game = [[CardMatchingGame alloc] initCardWithCount:[self.cardButtons count]
                                                         usingDeck:[self createDeck]];
    return _game;
}
-(Deck *) createDeck{
    return [[PlayingCardDeck alloc] init];
}

//-(void) setFlipCount:(int)flipCount{
//    _flipCount = flipCount;
//    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
//    NSLog(@"FlipCount changed to %d", self.flipCount);
//}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    int cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

-(void) updateUI{
    for(UIButton * cardButton in self.cardButtons){
        int cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card * card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

-(NSString *) titleForCard:(Card *) card{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *) backgroundImageForCard:(Card *) card{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}

@end
