//
//  TSTViewController+TSTViewCategories.h
//  ViewControllerCategories
//
//  Created by Hisma Mulya S on 3/28/14.
//  Copyright (c) 2014 mamaz. All rights reserved.
//

#import "TSTViewController.h"

@interface TSTViewController (TSTViewCategories)<UITableViewDelegate, UITableViewDataSource>

-(void)printString:(NSString*)string;

@end
