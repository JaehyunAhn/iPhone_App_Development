//
//  PageControlExampleViewController.h
//  [test] PageControl
//
//  Created by sonnet on 13. 2. 15..
//  Copyright (c) 2013년 sonnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageControlExampleViewController : UIViewController
{
    IBOutlet UILabel *pageNumberLabel;
    int pageNumber;
}
@property (nonatomic, retain) UILabel *pageNumberLabel;

-(id) initWithPageNumber: (int) page;

@end
