//
//  ViewController.m
//  MQChatViewControllerDemo
//
//  Created by ijinmao on 15/10/30.
//  Copyright © 2015年 ijinmao. All rights reserved.
//

#import "ViewController.h"
#import "MQChatViewManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *pushChatViewBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    pushChatViewBtn.backgroundColor = [UIColor blueColor];
    [pushChatViewBtn setTitle:@"pushChatView" forState:UIControlStateNormal];
    [pushChatViewBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    pushChatViewBtn.frame = CGRectMake(100, 200, 200, 30);
    [pushChatViewBtn addTarget:self action:@selector(pushChatViewAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushChatViewBtn];
    
    MQChatViewManager *chatViewManager = [[MQChatViewManager alloc] init];
    [chatViewManager setChatWelcomeText:@""];
    [chatViewManager setOutgoingMessageTextColor:[UIColor yellowColor]];
    [chatViewManager setIncomingMessageTextColor:[UIColor blueColor]];
    [chatViewManager presentMQChatViewControllerInViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushChatViewAction:(id)sender {
    MQChatViewManager *chatViewManager = [[MQChatViewManager alloc] init];
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.backgroundColor = [UIColor redColor];
    rightButton.frame = CGRectMake(10, 10, 20, 20);
    [chatViewManager setNavRightButton:rightButton];
    [chatViewManager pushMQChatViewControllerInViewController:self];
}

@end
