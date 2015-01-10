//
//  ViewController.m
//  TicTacToe
//
//  Created by Heidi Kyaw on 1/8/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@property (weak, nonatomic) IBOutlet UILabel *label6;
@property (weak, nonatomic) IBOutlet UILabel *label7;
@property (weak, nonatomic) IBOutlet UILabel *label8;
@property (weak, nonatomic) IBOutlet UILabel *label9;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property NSArray *labelsArray;
@property NSString *frame;
@property BOOL player1;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    self.player1 = TRUE;
    for (int i = 0; i < 9; i++) {
        self.labelsArray = [[NSArray alloc]initWithObjects:self.label1, self.label2,self.label3, self.label4, self.label5, self.label6, self.label7, self.label8, self.label9, nil];


    }
}



-(IBAction)onTapGestureButton:(UITapGestureRecognizer *)gesture{

    CGPoint point = [gesture locationInView:self.view]; // get touched point
    UILabel *foundLabel = [self findLabelUsingPoint:point];// call findLabelUsingPoint and pass point to it
    if (self.player1) {

        foundLabel.text = @"X";
        foundLabel.textColor = [UIColor redColor];// set label's text to X
        self.player1 = false;//player 2's turn
//        [self.labelsArray addObject:foundLabel]; // line not necessary right now
    }
    else
    {
        foundLabel.text = @"O";
        foundLabel.textColor = [UIColor blueColor];
        self.player1 = !self.player1;
    }
//    [self whoWon]; //line not necessary right now

}






-(UILabel *)findLabelUsingPoint:(CGPoint) point
{
    UILabel *foundLabel;
    UILabel *nilFoundLabel = nil;

    for(UILabel *label in self.labelsArray)// go in each label inside labelsArray
    {
        if(CGRectContainsPoint(label.frame, point))// if the touched point is inside the label's frame
        {
            foundLabel = label; // assign label to foundLabel


        }
        return foundLabel;// return foundLabel to onLabelTapped

    }
    return nilFoundLabel;


}

NSString *whoWon;

//If(
//
//   [self.player1.text isequaltoString:@"x"])


    // Do any additional setup afterloading the view, typically from a nib.



@end
