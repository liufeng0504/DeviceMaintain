//
//  LFMessageDetailViewController.m
//  DeviceMaintain
//
//  Created by 刘丰 on 2018/4/3.
//  Copyright © 2018年 liufeng. All rights reserved.
//

#import "LFMessageDetailViewController.h"
#import "LFMessageModel.h"

@interface LFMessageDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation LFMessageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dateLabel.text = self.messageModel.CreateTime;
    self.contentLabel.text = self.messageModel.Content;
}

@end
