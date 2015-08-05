//
//  ViewController.m
//  blurEffect
//
//  Created by zhaochunyang on 15/7/20.
//  Copyright (c) 2015年 zhaochunyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     *  ios8 以后才能使用的高斯模糊效果
     */
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blur];
    effectView.frame = CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, self.redView.bounds.size.height);
    [self.view addSubview:effectView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
