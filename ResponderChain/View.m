//
//  View.m
//  ResponderChain
//
//  Created by Keith Norman on 1/23/14.
//  Copyright (c) 2014 Keith Norman. All rights reserved.
//

#import "View.h"
#import "ContentView.h"
#import "TableCell.h"

@interface View() <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UIButton *button;

@end

@implementation View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  TableCell *cell = [[TableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
  ContentView *view = [[ContentView alloc] initWithFrame:cell.bounds];
  view.backgroundColor = [UIColor lightGrayColor];
  UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
  [button setTitle:@"Button" forState:UIControlStateNormal];
  button.backgroundColor = [UIColor blueColor];
  // register nil for custom event of value 1 << 24
  // should bubble up responder chain
  [button addTarget:nil action:@selector(customEventFired:) forControlEvents:(1 << 24)];
  [button addTarget:self action:@selector(sendStuff:) forControlEvents:UIControlEventTouchUpInside];
  [view addSubview:button];
  [cell.contentView addSubview:view];
  cell.backgroundColor = [UIColor redColor];
  return cell;
}

- (void)sendStuff:(id)sender {
  UIButton *btn = (UIButton *)sender;
  [btn sendActionsForControlEvents:(1 << 24)];
}


@end
