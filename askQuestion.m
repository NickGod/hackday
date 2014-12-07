//
//  askQuestion.m
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import "askQuestion.h"

@implementation askQuestion
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.myquesions = [[NSMutableArray alloc] init];
    //self.data = [[NSMutableArray alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)postQuestion:(id)sender {
    
    // [self.myquesions addObject:newQuestion];
    //UITableViewCell *newCell = [[UITableViewCell alloc] init];
    
    //[self updateData];
    
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.ask) return;
    if (self.question.text.length > 0) {
        NSString *content = [NSString stringWithFormat:self.question.text];
        NSString *firstChoice = [NSString stringWithFormat:self.choice1.text];
        NSString *secondChoice =[ NSString stringWithFormat:self.choice2.text];
        self.curr = [[question alloc] initWithString: content
                                               first: firstChoice second: secondChoice];
    }
}




@end
