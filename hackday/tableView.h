//
//  tableView.h
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "question.h"

@interface tableView : UITableViewController <UITableViewDataSource,UITableViewDelegate>
@property (strong,nonatomic) NSMutableArray *data;

@end
