//
//  complainlist.h
//  zxics
//
//  Created by johnson on 14-8-5.
//  Copyright (c) 2014年 moko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "complainCell.h"
#import "complainAdd.h"
#import "complainDetail.h"

@interface complainlist : UIViewController
{
    NSMutableArray *list;
    NSInteger page;
}
@property (weak, nonatomic) IBOutlet UINavigationBar *UINavigationBar;
@property (weak, nonatomic) IBOutlet UITableView *complaintTView;

@end
