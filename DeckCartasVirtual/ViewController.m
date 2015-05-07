//
//  ViewController.m
//  DeckCartasVirtual
//
//  Created by Pro on 07/05/15.
//  Copyright (c) 2015 Infnet. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *viradasLabel;
@property (nonatomic) int contadorViradas;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Deck *) deck {
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *) createDeck {
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)virarCarta:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"carta_costas"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        Card *randomCard = [self.deck drawRandomCard];
        if (randomCard) {
            [sender setBackgroundImage:[UIImage imageNamed:@"carta_frente"] forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
        }
    }
    self.contadorViradas++;
}

- (void) setContadorViradas:(int)contadorViradas {
    _contadorViradas = contadorViradas;
    self.viradasLabel.text = [NSString stringWithFormat:@"Viradas: %d", self.contadorViradas];
}


@end
