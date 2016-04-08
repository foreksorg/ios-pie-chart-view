//
//  ViewController.m
//  PieChartSample
//
//  Created by Vinícius Rodrigues on 26/06/2014.
//  Copyright (c) 2014 MyAppControls. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *values;
@property (strong, nonatomic) NSMutableArray *labels;
@property (strong, nonatomic) NSMutableArray *colors;
@property (nonatomic) BOOL inserting;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.values = [[NSMutableArray alloc] init];
    
    [self.values addObject:[NSNumber numberWithInt:10]];
    [self.values addObject:[NSNumber numberWithInt:20]];
    [self.values addObject:[NSNumber numberWithInt:30]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:50]];
    [self.values addObject:[NSNumber numberWithInt:30]];
    [self.values addObject:[NSNumber numberWithInt:40]];
    [self.values addObject:[NSNumber numberWithInt:50]];
    
    self.pieChartView.dataSource = self;
    self.pieChartView.delegate = self;
    self.pieChartView.animationDuration = 0.5;
    self.pieChartView.sliceColor = [MCUtil flatWetAsphaltColor];
    self.pieChartView.borderColor = [MCUtil flatSunFlowerColor];
    self.pieChartView.selectedSliceColor = [MCUtil flatSunFlowerColor];
    self.pieChartView.textColor = [MCUtil flatSunFlowerColor];
    self.pieChartView.selectedTextColor = [UIColor whiteColor];
    self.pieChartView.borderPercentage = 0.01;
    self.pieChartView.font =  [UIFont fontWithName:@"Helvetica" size:10.0];
}

- (NSInteger)numberOfSlicesInPieChartView:(MCPieChartView *)pieChartView {
    return self.values.count;
}

-(NSString *)pieChartView:(MCPieChartView *)pieChartView textForSliceAtIndex:(NSInteger)index{
    return @"asdassada \n asdasda";
}

//
//- (UIColor*)pieChartView:(MCPieChartView *)pieChartView colorForTextAtIndex:(NSInteger)index
//{
//    if (index == 0) {
//        return [UIColor blackColor];
//    }
//    return [UIColor lightGrayColor];
//}

- (CGFloat)pieChartView:(MCPieChartView *)pieChartView valueForSliceAtIndex:(NSInteger)index {
    return [[self.values objectAtIndex:index] floatValue];
}

-(NSString *)pieChartView:(MCPieChartView *)pieChartView selectedTextForSliceAtIndex:(NSInteger)index{
    return @"asdassada \n asdasda";
}
- (IBAction)change:(id)sender {
    
    static int i = 0;
    
    self.values = [[NSMutableArray alloc] init];
    
    if ((i % 2) == 0) {
        [self.values addObject:[NSNumber numberWithInt:50]];
        [self.values addObject:[NSNumber numberWithInt:40]];
        [self.values addObject:[NSNumber numberWithInt:30]];
        [self.values addObject:[NSNumber numberWithInt:20]];
        [self.values addObject:[NSNumber numberWithInt:10]];
    }
    else {
        [self.values addObject:[NSNumber numberWithInt:10]];
        [self.values addObject:[NSNumber numberWithInt:20]];
        [self.values addObject:[NSNumber numberWithInt:30]];
        [self.values addObject:[NSNumber numberWithInt:40]];
        [self.values addObject:[NSNumber numberWithInt:50]];
    }
    
    i++;
    
    [self.pieChartView reloadData];
}

@end
