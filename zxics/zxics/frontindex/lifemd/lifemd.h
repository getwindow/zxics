//
//  lifemd.h
//  zxics
//
//  Created by johnson on 14-8-4.
//  Copyright (c) 2014年 moko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "lifemdcellTableViewCell.h"
#import "MJRefresh.h"
#import "lifemdDetail.h"

@interface lifemd : UIViewController
{
    NSInteger page;
    NSMutableArray * lfmdlist;
}
@property (weak, nonatomic) IBOutlet UITableView *lifetable;
@property (weak, nonatomic) IBOutlet UINavigationBar *UINavigationBar;

@end
