//
//  surveylist.h
//  zxics
//
//  Created by johnson on 14-8-5.
//  Copyright (c) 2014年 moko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "surveylistCell.h"

@interface surveylist : UIViewController
{
    NSMutableArray *list;
    NSInteger page;
}
@property(retain , nonatomic) NSString * btntag;//在线业主

@property (weak, nonatomic) IBOutlet UINavigationBar *UINavigationBar;
@property (weak, nonatomic) IBOutlet UITableView *surveyTView;
@property (weak, nonatomic) IBOutlet UINavigationItem *UINavigationItem;

@end
