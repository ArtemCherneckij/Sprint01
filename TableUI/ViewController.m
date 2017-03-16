//
//  ViewController.m
//  TableUI
//
//  Created by Admin on 16.03.17.
//  Copyright (c) 2017 Admin. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    UITableView *tableView = [UITableView new];
    [self.view addSubview:tableView];
    tableView.frame = self.view.bounds;
    tableView.delegate = self;
    tableView.dataSource = self;
    self.people =[[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"List" ofType:@"plist"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[TableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
    
    NSDictionary *dictionary=(NSDictionary *)[self.people objectAtIndex:indexPath.row];
    NSString *Name = [dictionary objectForKey:@"Name"];
    
    switch (indexPath.row) {
        case 0:
            cell.name.text = Name;
            cell.subName.text = @"Sat 10:30";
            break;
        case 1:
            cell.name.text = @"Call With Client";
            cell.subName.text = @"Planned";
            break;
        case 2:
            cell.name.text = @"Appointment with Joey";
            cell.subName.text = @"2 Hours";
            break;
        case 3:
            cell.name.text = @"Call With Client";
            cell.subName.text = @"Planned";
            break;
        case 4:
            cell.name.text = @"Appointment with Joey";
            cell.subName.text = @"2 Hours";
            break;
        default:
            break;
    }
    
    
    return cell;
}

@end
