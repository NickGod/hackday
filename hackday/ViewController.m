//
//  ViewController.m
//  hackday
//
//  Created by ShaoLei on 12/6/14.
//  Copyright (c) 2014 ShaoLei. All rights reserved.
//

#import "ViewController.h"
#import "question.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *question;
@property (weak, nonatomic) IBOutlet UITextField *choice1;
@property (weak, nonatomic) IBOutlet UITextField *choice2;
@property(strong,nonatomic) NSMutableArray *myquesions;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myquesions = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)postQuestion:(id)sender {
    NSString *content = [NSString stringWithFormat:self.question.text];
    NSString *firstChoice = [NSString stringWithFormat:self.choice1.text];
    NSString *secondChoice =[ NSString stringWithFormat:self.choice2.text];
    question *newQuestion = [[question alloc] initWithString: content
                                                       first: firstChoice second: secondChoice];
    [self.myquesions addObject:newQuestion];
    
}

@end
