//
//  TSTViewController.m
//  ViewControllerCategories
//
//  Created by Hisma Mulya S on 3/28/14.
//  Copyright (c) 2014 mamaz. All rights reserved.
//

#import "TSTViewController.h"
#import "TSTViewController+TSTViewCategories.h"

@interface TSTViewController ()

@property(nonatomic,strong) UITableView *table;

@end

@implementation TSTViewController
@synthesize helloString = _helloString;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // this will print string declared in categories
    _helloString = @"Hello string";
    [self printString:@"Hello..."];
    
    self.table = [[UITableView alloc]init];
    self.table.frame = self.view.frame;
    self.table.delegate   = self; // delegate and datasource is written in categories
    self.table.dataSource = self;
    [self.view addSubview:self.table];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
