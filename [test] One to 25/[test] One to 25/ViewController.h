//
//  ViewController.h
//  [test] One to 25
//
//  Created by sonnet on 13. 2. 14..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *menuLabel;
    
    UILabel *timerTable;
    NSTimer *stopTimer;
    NSDate  *startDate;
    BOOL    scoring;
}

// button
@property (strong, nonatomic) IBOutlet UIButton *startButton;
@property (strong, nonatomic) IBOutlet UIButton *scoreButton;
@property (strong, nonatomic) IBOutlet UIButton *returnToMenu;
@property (strong, nonatomic) IBOutlet UILabel *menuLabel;
// timer
@property (strong, nonatomic) IBOutlet UILabel *timerTable;
@property (strong, nonatomic) IBOutlet NSTimer *stopTimer;
@property (strong, nonatomic) IBOutlet NSDate  *startDate;
// RankView
@property (retain, nonatomic) IBOutlet UIView *rankView;
// BoardView
@property (retain, nonatomic) IBOutlet UIView *boardView;
// Board Button
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8;
@property (strong, nonatomic) IBOutlet UIButton *button9;
@property (strong, nonatomic) IBOutlet UIButton *button10;
@property (strong, nonatomic) IBOutlet UIButton *button11;
@property (strong, nonatomic) IBOutlet UIButton *button12;
@property (strong, nonatomic) IBOutlet UIButton *button13;
@property (strong, nonatomic) IBOutlet UIButton *button14;
@property (strong, nonatomic) IBOutlet UIButton *button15;
@property (strong, nonatomic) IBOutlet UIButton *button16;
@property (strong, nonatomic) IBOutlet UIButton *button17;
@property (strong, nonatomic) IBOutlet UIButton *button18;
@property (strong, nonatomic) IBOutlet UIButton *button19;
@property (strong, nonatomic) IBOutlet UIButton *button20;
@property (strong, nonatomic) IBOutlet UIButton *button21;
@property (strong, nonatomic) IBOutlet UIButton *button22;
@property (strong, nonatomic) IBOutlet UIButton *button23;
@property (strong, nonatomic) IBOutlet UIButton *button24;
@property (strong, nonatomic) IBOutlet UIButton *button25;

// button
- (IBAction)menuButtonClicked:(id)sender;
- (IBAction)returnToMenuClicked:(id)sender;

// timer
- (IBAction)startPressed:(id)sender;
- (IBAction)stopPressed:(id)sender;
- (IBAction)resetPressed:(id)sender;
- (IBAction)rankPressed:(id)sender;
- (void) updateTimer;

// one to 25
- (void) hideBoard;
- (void) revealBoard; // buttonAllocators (when 25 meets) call writeRank

// board
- (int) buttonAllocators;
- (int) touchCount;
- (IBAction)writeRank:(id)sender; // write seconds into a scoreboard

@end
