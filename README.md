# IXAttributeTapLabel
label指定内容点击识别

### 使用方法
```Objective-C
    NSString    * str =  @"广东省 深圳市 南上区 科苑路 科兴科学园 B1栋 18F 深圳市智汇云信科技有限公司";
    
    IXAttributeTapLabel * label = [[IXAttributeTapLabel alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 70)];
    label.backgroundColor = [UIColor whiteColor];
    label.numberOfLines = 0;
    //文本点击回调
    label.tapBlock = ^(NSString *string) {
        NSLog(@" -- %@ --",string);
    };
    
    //设置需要点击的字符串，并配置此字符串的样式及位置
    IXAttributeModel    * model = [IXAttributeModel new];
    model.range = [str rangeOfString:@"智汇云信"];
    model.string = @"智汇云信";
    model.alertImg = [UIImage imageNamed:@"alert"];
    model.attributeDic = @{NSForegroundColorAttributeName : [UIColor redColor]};
    
    IXAttributeModel    * model1 = [IXAttributeModel new];
    model1.range = [str rangeOfString:@"科兴科学园"];
    model1.string = @"科兴科学园";
    model1.attributeDic = @{NSForegroundColorAttributeName : [UIColor blueColor]};
    
    //label内容赋值
    [label setText:str attributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor],NSFontAttributeName:[UIFont systemFontOfSize:15]}
    tapStringArray:@[model,model1]];
    
    [self.view addSubview:label];
