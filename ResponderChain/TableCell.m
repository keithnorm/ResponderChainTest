//
//  TableCell.m
//  ResponderChain
//
//  Created by Keith Norman on 1/23/14.
//  Copyright (c) 2014 Keith Norman. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (BOOL)canBecomeFirstResponder {
  return YES;
}

- (BOOL)resignFirstResponder {
  return NO;
}

- (void)customEventFired:(id)sender {
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Event triggered in table view cell" message:@"You win!" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:nil, nil];
  [alertView show];
}

@end
