//
//  questionsDetail.m
//  zxics
//
//  Created by johnson on 14-8-20.
//  Copyright (c) 2014年 moko. All rights reserved.
//

#import "questionsDetail.h"

@interface questionsDetail ()

@end

@implementation questionsDetail

@synthesize qtd;
@synthesize qtSView;
@synthesize titleLabel;
@synthesize contentsLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.UINavigationBar setBackgroundImage:[UIImage imageNamed:@"logo_bg"] forBarMetrics:UIBarMetricsDefault];    
    [self loaddata];
    
}

-(void)loaddata
{
    titleLabel.text=[qtd objectForKey:@"title"];
    
    //内容
    contentsLabel.scrollView.bounces=NO;
    [contentsLabel loadHTMLString:[NSString stringWithFormat:@"<html> \n"
                                   "<head> \n"
                                   "<style type=\"text/css\"> \n"
                                   "body {font-family: \"%@\"; font-size: %f; color: %@;}\n"
                                   "</style> \n"
                                   "</head> \n"
                                   "<body>%@</body> \n"
                                   "</html>", @"宋体", 12.0,@"black",[qtd objectForKey:@"content"]] baseURL:nil];
    CGSize size =CGSizeMake(contentsLabel.frame.size.width,0);
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:nil,NSFontAttributeName,nil];
    
    CGSize  actualsize =[[qtd objectForKey:@"content"] boundingRectWithSize:size options:
                         NSStringDrawingUsesFontLeading |NSStringDrawingUsesLineFragmentOrigin attributes:tdic context:nil].size;
    
    contentsLabel.frame=CGRectMake(contentsLabel.frame.origin.x, contentsLabel.frame.origin.y, contentsLabel.frame.size.width, actualsize.height+24);
    
    qtSView.contentSize=CGSizeMake(320, contentsLabel.frame.size.height+contentsLabel.frame.origin.y-titleLabel.frame.origin.y+10);
    qtSView.showsHorizontalScrollIndicator=NO;//不显示水平滑动线
    qtSView.showsVerticalScrollIndicator=YES;//不显示垂直滑动线
    qtSView.scrollEnabled=YES;
}

-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
