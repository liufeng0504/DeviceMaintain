//
//  LFMessageListViewController.h
//  DeviceMaintain
//
//  Created by 刘丰 on 2018/4/2.
//  Copyright © 2018年 liufeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LFMessageViewModel.h"

@interface LFMessageListViewController : UITableViewController

@property(nonatomic, assign) LFMessageType messageType;

@end