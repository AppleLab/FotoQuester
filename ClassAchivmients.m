//
//  ClassAchivmients.m
//  Quester
//
//  Created by itisioslab on 27.08.14.
//  Copyright (c) 2014 Артур Сагидулин. All rights reserved.
//

#import "ClassAchivmients.h"

@interface ClassAchivmients ()

@end

@implementation ClassAchivmients

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
    NSArray *imageNames = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"7.jpg"];
    NSMutableArray *images = [[NSMutableArray alloc]init];
    for (int i=0; i<imageNames.count; i++){
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    UIImageView *animationImageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 105, 186, 193)];
    animationImageView.animationImages = images;
    animationImageView.animationDuration = 5.0;
    [self.view addSubview:animationImageView];
    [animationImageView startAnimating];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
