//
//  draw2D.m
//  drawGraphs
//
//  Created by Bhaskar on 22/05/13.
//  Copyright (c) 2013 V2 Solutions. All rights reserved.
//

#import "draw2D.h"

@implementation draw2D

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 0,0);
    CGContextAddLineToPoint(context, 320, 480);
    CGRect rectangle = CGRectMake(60, 17, 200, 50);
    CGContextAddRect(context, rectangle);
    
        CGContextStrokePath(context);
    
    
    NSString *string = @"Bhaskar";
    
//    CGContextSetTextMatrix(context, CGAffineTransformMake(1.0, 0.0, 0.0, -1.0, 0.0, 0.0));
    CGContextSetTextMatrix(context, CGAffineTransformRotate(CGAffineTransformMake(1.0, 0.0, 0.0, -1.0, 0.0, 0.0), M_PI / 2));
    
    [string drawAtPoint:CGPointMake(100, 100) withFont:[UIFont systemFontOfSize:36.0f]];
    
    
    
//        CGContextSelectFont(context, "Helvetica", 44, kCGEncodingMacRoman);
//        CGContextSetTextDrawingMode(context, kCGTextFill);
//        CGContextSetFillColorWithColor(context, (__bridge CGColorRef)([UIColor greenColor]));
//        NSString *text = @"Hello Bhas";
//    CGContextShowTextAtPoint(context, 100, 100, [text cStringUsingEncoding:NSUTF8StringEncoding], [text length]);
}


@end
