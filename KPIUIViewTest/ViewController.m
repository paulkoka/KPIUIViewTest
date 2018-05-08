//
//  ViewController.m
//  KPIUIViewTest
//
//  Created by paul on 5/8/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "ViewController.h"
#import "KPIMyView.h"
@interface ViewController ()
@property (nonatomic, retain) KPIMyView *myKPIViewOne;
@property (nonatomic, retain) KPIMyView *myKPIViewTwo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark task three
//    self.myView = [[[UIView alloc] initWithFrame: CGRectMake(0, 0, 100, 100)] autorelease];
//    [self.myView setBackgroundColor:[UIColor blackColor]];
    
    
    
    CGRect myRect = CGRectMake(0, 0, 300, 300);
    
     UIView *myView = [[[UIView alloc] init] autorelease];//UIView maybe to override
    [myView setFrame:myRect];//UIView maybe to override
    
    //UIView *myView = [[[UIView alloc] initWithFrame:myRect] autorelease]; //UIView to override
    
    UIColor *myColor = [UIColor blackColor];
    
    [myView setBackgroundColor:myColor]; //UIView to override
    
    [self.view addSubview:myView]; //UIView to override
    
    
    KPIMyView *testKPIVIew = [[[KPIMyView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)] autorelease];
    [testKPIVIew setBackgroundColor:[UIColor greenColor]];
    
    
    self.myKPIViewOne = testKPIVIew;
    
    [myView addSubview:self.myKPIViewOne];
    
    KPIMyView *testKPIVIewAnother = [[[KPIMyView alloc] initWithFrame:CGRectMake(150, 150, 200, 200)] autorelease];
    [testKPIVIewAnother setBackgroundColor:[UIColor yellowColor]];
    
    
    self.myKPIViewTwo = testKPIVIewAnother;
    
    [myView addSubview:self.myKPIViewTwo];
    
    
    #pragma mark task three
    
UIView *viewFromNib = [[[NSBundle mainBundle] loadNibNamed:@"KPITest" owner:self options:nil] objectAtIndex:0];
    
    [self.view addSubview:[viewFromNib viewWithTag:3]];// added element from xib
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
