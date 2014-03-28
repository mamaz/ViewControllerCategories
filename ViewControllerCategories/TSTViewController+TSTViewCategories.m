//
//  TSTViewController+TSTViewCategories.m
//  ViewControllerCategories
//
//  Created by Hisma Mulya S on 3/28/14.
//  Copyright (c) 2014 mamaz. All rights reserved.
//

#import "TSTViewController+TSTViewCategories.h"

@implementation TSTViewController (TSTViewCategories) 

-(void)printString:(NSString*)string
{
    NSLog(@"Hai.. Hai..");
    NSLog(@"%@", self.helloString);
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    
    return cell;
}

@end
