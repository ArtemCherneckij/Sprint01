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
}

-(NSArray *)people
{
    if (!_people) {
        _people = [[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"List" ofType:@"plist"]];
    }
    return _people;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.people count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[TableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
    
    //cell.name.text = [[self.people objectAtIndex:indexPath.row] valueForKey:@"Name"];
    //cell.subName.text = [[self.people objectAtIndex:indexPath.row] valueForKey:@"SubName"];
    
    
    cell.name.text = [[self.people objectAtIndex:indexPath.row] valueForKey:@"Name"];
    cell.subName.text = [[self.people objectAtIndex:indexPath.row] valueForKey:@"SubName"];
    cell.image.image = [UIImage imageNamed:@"1.png"];
    
    return cell;
}

-(void) dealloc{
    [super dealloc];
    [_people release];
}

@end
