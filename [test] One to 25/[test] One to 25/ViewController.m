//
//  ViewController.m
//  [test] One to 25
//
//  Created by sonnet on 13. 2. 14..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import "ViewController.h"
#import <stdio.h>
#import <stdlib.h>
#import <time.h>

@interface ViewController ()

@end


@implementation ViewController

@synthesize menuLabel; // 가져온다.
@synthesize startButton;
@synthesize scoreButton;
@synthesize timerTable;
@synthesize startDate;
@synthesize stopTimer;
@synthesize rankView;
@synthesize boardView;
@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;
@synthesize button7;
@synthesize button8;
@synthesize button9;
@synthesize button10;
@synthesize button11;
@synthesize button12;
@synthesize button13;
@synthesize button14;
@synthesize button15;
@synthesize button16;
@synthesize button17;
@synthesize button18;
@synthesize button19;
@synthesize button20;
@synthesize button21;
@synthesize button22;
@synthesize button23;
@synthesize button24;
@synthesize button25;

-(IBAction)menuButtonClicked:(id)sender {
    NSString *title = [sender titleForState: UIControlStateNormal];
    NSString *newtext = [[NSString alloc] initWithFormat:@"%@",title];
    menuLabel.text = newtext;
    startButton.hidden=YES;
    scoreButton.hidden=YES;
    [newtext release];
}
-(IBAction)returnToMenuClicked:(id)sender {
    menuLabel.text = @"One to 25";
    startButton.hidden=NO;
    scoreButton.hidden=NO;
    rankView.hidden = YES;
    //NSLog(@"return\n");
}

-(IBAction)startPressed:(id)sender {
    
    scoring = true;
    self.startDate = [NSDate date];
    // Create timer that fires every 100ms.
    NSLog(@"start\n");
    self.stopTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/75.0
                                                    target:self
                                                    selector:@selector(updateTimer)
                                                    userInfo:nil
                                                    repeats:YES];
    [self revealBoard];
    rankView.hidden = YES;
}

-(IBAction)stopPressed:(id)sender {
    scoring = true;
    [self.stopTimer invalidate];
    self.stopTimer = nil;
    [self updateTimer];
    [self hideBoard];
}

-(IBAction)resetPressed:(id)sender {
    if(scoring)
    {
        scoring = false;
        [self.stopTimer invalidate];
        self.stopTimer = nil;
    }
    timerTable.text = @"00:00.00";
    [self hideBoard];
}

-(IBAction)rankPressed:(id)sender
{
    rankView.hidden = NO;
    NSLog(@"open Rank Page\n");
}

-(void) updateTimer {
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:self.startDate];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"mm:ss.SS"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    self.timerTable.text = timeString;
    [dateFormatter release];
}

-(int) buttonAllocators
{
    // allocate 25 button into natural numbers
    int randarr[25] = {0,};
    NSString *temp[25];
    int i, t;
    srand(time(NULL));
    for(i=0; i<25; i++)
    {
        randarr[i] = rand()%25+1;
        for(t=0; t<i; t++)
        {
            if(randarr[i] == randarr[t])
            {
                i--;
                break;
            }
        }
    }
    int marked;
    for(i=0; i<25; i++)
    {
        temp[i] = [NSString stringWithFormat:@"%d",randarr[i]];
        if(randarr[i] == 25)
            marked = i;
    }
    [button1 setTitle:temp[0] forState:UIControlStateNormal];
    [button2 setTitle:temp[1] forState:UIControlStateNormal];
    [button3 setTitle:temp[2] forState:UIControlStateNormal];
    [button4 setTitle:temp[3] forState:UIControlStateNormal];
    [button5 setTitle:temp[4] forState:UIControlStateNormal];
    [button6 setTitle:temp[5] forState:UIControlStateNormal];
    [button7 setTitle:temp[6] forState:UIControlStateNormal];
    [button8 setTitle:temp[7] forState:UIControlStateNormal];
    [button9 setTitle:temp[8] forState:UIControlStateNormal];
    [button10 setTitle:temp[9] forState:UIControlStateNormal];
    [button11 setTitle:temp[10] forState:UIControlStateNormal];
    [button12 setTitle:temp[11] forState:UIControlStateNormal];
    [button13 setTitle:temp[12] forState:UIControlStateNormal];
    [button14 setTitle:temp[13] forState:UIControlStateNormal];
    [button15 setTitle:temp[14] forState:UIControlStateNormal];
    [button16 setTitle:temp[15] forState:UIControlStateNormal];
    [button17 setTitle:temp[16] forState:UIControlStateNormal];
    [button18 setTitle:temp[17] forState:UIControlStateNormal];
    [button19 setTitle:temp[18] forState:UIControlStateNormal];
    [button20 setTitle:temp[19] forState:UIControlStateNormal];
    [button21 setTitle:temp[20] forState:UIControlStateNormal];
    [button22 setTitle:temp[21] forState:UIControlStateNormal];
    [button23 setTitle:temp[22] forState:UIControlStateNormal];
    [button24 setTitle:temp[23] forState:UIControlStateNormal];
    [button25 setTitle:temp[24] forState:UIControlStateNormal];
    return marked;
}


-(int) touchCount
{
    // while(touch index == 25)
    // touch inside 발생
    // count == touch index ? count++ : wrong++
    // return wrong;
  //  int touch_index = 1;
  //  int wrong_count = 0;

    return 0;
}

-(void) hideBoard
{
    boardView.hidden = YES;
    NSLog(@"hide");
}

-(void) revealBoard
{
    boardView.hidden = NO;
    NSLog(@"reveal");
    int marked_25_idx = [self buttonAllocators];
    int touched_25_idx = [self touchCount];
    marked_25_idx=0;
    touched_25_idx=0;
//    if(marked_25_idx == touched_25_idx)
 //   {
  //       [self stopPressed:self];
   //      [self wrtieRank:self];
    //}
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    timerTable.text = @"00:00.00";
    scoring = false;
    rankView.hidden = YES;
    boardView.hidden = YES;
    [self hideBoard];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
