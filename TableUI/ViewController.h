//
//  ViewController.h
//  TableUI
//
//  Created by Admin on 16.03.17.
//  Copyright (c) 2017 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) NSArray *people;

@end
