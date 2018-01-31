//
//  ViewController.m
//  AttributeStringDemo
//
//  Created by Seven on 2018/1/30.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "ViewController.h"
#import "IXAttributeTapLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    
    NSString    * str =  @"广东省 深圳市 南上区 科苑路 科兴科学园 B1栋 18F 深圳市智汇云信科技有限公司";
    
    IXAttributeTapLabel * label = [[IXAttributeTapLabel alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 70)];
    label.backgroundColor = [UIColor whiteColor];
    label.numberOfLines = 0;
    label.tapBlock = ^(NSString *string) {
        NSLog(@" -- %@ --",string);
    };
    
    IXAttributeModel    * model = [IXAttributeModel new];
    model.range = [str rangeOfString:@"智汇云信"];
    model.string = @"智汇云信";
    model.alertImg = [UIImage imageNamed:@"alert"];
    model.attributeDic = @{NSForegroundColorAttributeName : [UIColor redColor]};
    
    IXAttributeModel    * model1 = [IXAttributeModel new];
    model1.range = [str rangeOfString:@"科兴科学园"];
    model1.string = @"科兴科学园";
    model1.attributeDic = @{NSForegroundColorAttributeName : [UIColor blueColor]};
    
    
    [label setText:str attributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor],NSFontAttributeName:[UIFont systemFontOfSize:15]}
    tapStringArray:@[model,model1]];
    
    [self.view addSubview:label];
    
}



@end
