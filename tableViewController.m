//
//  tableViewController.m
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import "tableViewController.h"
#import "question.h"
#import "ViewController.h"

@implementation tableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.myquesions = [[NSMutableArray alloc] init];
    self.data = [[NSMutableArray alloc] init];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    NSString *simpleIdentifier = @"simpleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleIdentifier];
    }
    
    cell.textLabel.text = self.data[indexPath.row];
    */
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    question *curr = [self.data objectAtIndex:indexPath.row];
    cell.textLabel.text = curr.content;
    return cell;
}

- (IBAction)unwindAskList:(UIStoryboardSegue *)segue
{
    ViewController *source = [segue sourceViewController];
    question *item = source.curr;
    if (item != nil) {
        [self.data addObject:item];
        [self.tableView reloadData];
    }
}
@end
