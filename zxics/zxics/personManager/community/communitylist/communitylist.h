//
//  communitylist.h
//  zxics
//
//  Created by johnson on 14-8-9.
//  Copyright (c) 2014年 moko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "communityCell.h"
#import "floorlist.h"

@interface communitylist : UIViewController
{
    NSMutableArray *list;
    NSInteger page;
}

@property (weak, nonatomic) IBOutlet UINavigationBar *UINavigationBar;
@property (weak, nonatomic) IBOutlet UINavigationItem *UINavigationItem;
@property (weak, nonatomic) IBOutlet UITableView *comTView;
@end
