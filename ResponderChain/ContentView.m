//
//  ContentView.m
//  ResponderChain
//
//  Created by Keith Norman on 1/23/14.
//  Copyright (c) 2014 Keith Norman. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView

// uncomment this to see event caught by the cell's subview
//- (void)customEventFired:(id)sender {
//  UIView *superview = self.superview;
//  while (superview != nil) {
//    if ([superview respondsToSelector:@selector(customEventFired:)]) {
//      [superview performSelector:@selector(customEventFired:) withObject:self];
//      break;
//    }
//    superview = superview.superview;
//  }
//}

- (void)customEventFired:(id)sender {
  UIResponder *nextResponder = self.nextResponder;
  while (nextResponder) {
    if ([nextResponder respondsToSelector:@selector(customEventFired:)]) {
      [nextResponder performSelector:@selector(customEventFired:) withObject:sender];
      break;
    }
    nextResponder = nextResponder.nextResponder;
  }
}

@end
