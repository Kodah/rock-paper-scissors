//
//  RPSViewController.m
//  RockPaperScissors
//
//  Created by Tom on 12/07/2014.
//  Copyright (c) 2014 SugWare. All rights reserved.
//

#import "RPSViewController.h"
#import "RPSGame.h"

@interface RPSViewController ()

@property (strong, nonatomic) RPSGame *game;
@property (weak, nonatomic) IBOutlet UITextField *p1NameTextField;
@property (weak, nonatomic) IBOutlet UITextField *p2NameTextField;
@property (weak, nonatomic) IBOutlet UILabel *p1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *p2ScoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *p1HandImage;
@property (weak, nonatomic) IBOutlet UIImageView *p2HandImage;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation RPSViewController


-(RPSGame *)game{
    if (!_game) _game = [[RPSGame alloc] initWithPlayer1:[self.p1NameTextField.text length] ? self.p1NameTextField.text : @"P1"
                                              andPlayer2:[self.p2NameTextField.text length] ? self.p1NameTextField.text : @"P2"
];
    
    return _game;
}

-(void)updateUI{
    
    self.p1ScoreLabel.text = [NSString stringWithFormat:@"%@ Score: %d", self.game.player1.playerName, self.game.player1.playerScore];
    self.p2ScoreLabel.text = [NSString stringWithFormat:@"%@ Score: %d", self.game.player2.playerName, self.game.player2.playerScore];
    self.p1HandImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@Left", self.game.player1.playerHand.handShape]];
    self.p2HandImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@Right",self.game.player2.playerHand.handShape]];
    self.statusLabel.text = self.game.status;
    
    [self.view endEditing:YES];
}

- (IBAction)fightButtonPressed:(id)sender {

    self.game.player1.playerName = [self.p1NameTextField.text length] ? self.p1NameTextField.text : @"P1"
;
    self.game.player2.playerName = [self.p2NameTextField.text length] ? self.p1NameTextField.text : @"P2";
                                                                                                     
    self.p1NameTextField.enabled = NO;
    self.p1NameTextField.alpha = 0.7;
    self.p2NameTextField.enabled = NO;
    self.p2NameTextField.alpha = 0.7;
    
    [self.game.player1 pickRandomHand];
    [self.game.player2 pickRandomHand];
    
    [self.game comparePlayerHands];
    
    [self updateUI];
    
//    NSLog(@"%@", self.game.player1.playerHand.handShape);
//    NSLog(@"%@", self.game.player2.playerHand.handShape);
//    NSLog(@"%d", self.game.player1.playerScore);
//    NSLog(@"%d", self.game.player2.playerScore);
//    NSLog(@"%@", self.game.status);
    
}

- (IBAction)resetButtonPressed:(id)sender {
    self.p1NameTextField.enabled = YES;
    self.p1NameTextField.alpha = 1;
    self.p2NameTextField.enabled = YES;
    self.p2NameTextField.alpha = 1;
    
    self.game.player1.playerScore = 0;
    self.game.player2.playerScore = 0;
    self.game.status = @"";
    [self updateUI];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
