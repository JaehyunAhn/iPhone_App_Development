//
//  ViewController.h
//  [test] PageControl
//
//  Created by sonnet on 13. 2. 15..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : NSObject
{
    UIWindow *window;
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIPageControl *pageControl;
    NSMutableArray *viewControllers;
    BOOL pageControlUsed;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;
@property (nonatomic, retain) NSMutableArray *viewControllers;

- (IBAction)changePage:(id)sender;

@end
