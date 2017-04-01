//
//  CatView.m
//  simonscat
//
//  Created by Ev Bogdanov on 01/04/2017.
//  Copyright © 2017 Ev Bogdanov. All rights reserved.
//

#import "CatView.h"

@implementation CatView

- (void)drawRedCircle {
    UIBezierPath *circle = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.width];
    
    [circle addClip];
    
    [[UIColor colorWithRed:0.93 green:0.19 blue:0.18 alpha:1.0] setFill];
    UIRectFill(self.bounds);
}

- (void)drawBorder {
    UIBezierPath *border = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.width];
    
    [[UIColor blackColor] setStroke];
    [border setLineWidth:28];
    [border stroke];
}

- (void)drawCatBody {
    UIBezierPath *cat = [UIBezierPath bezierPath];
    
    // Starting point.
    [cat moveToPoint:CGPointMake(47.5, 375.0)];
    
    // Draw the lines.
    [cat addLineToPoint:CGPointMake(47.5, 291.0)];
    [cat addLineToPoint:CGPointMake(47.5, 222.5)];
    [cat addLineToPoint:CGPointMake(56.5, 173.0)];
    [cat addLineToPoint:CGPointMake(82.5, 123.0)];
    [cat addLineToPoint:CGPointMake(103.5, 96.0)];
    [cat addLineToPoint:CGPointMake(167.0, 55.5)];
    [cat addLineToPoint:CGPointMake(189.5, 98.5)];
    [cat addLineToPoint:CGPointMake(274.5, 69.5)];
    [cat addLineToPoint:CGPointMake(283.0, 102.5)];
    [cat addLineToPoint:CGPointMake(287.5, 178.0)];
    [cat addLineToPoint:CGPointMake(334.5, 273.5)];
    [cat addLineToPoint:CGPointMake(369.5, 313.5)];
    [cat addLineToPoint:CGPointMake(375.0, 375.0)];
    
    [[UIColor whiteColor] setFill];
    [cat fill];
    
    [[UIColor blackColor] setStroke];
    [cat setLineWidth:10];
    [cat stroke];
}

- (void)drawCatLeftEye {
    CGRect rect = CGRectMake(82, 96, 86, 77);
    UIBezierPath *eye = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:40];
    
    [[UIColor whiteColor] setFill];
    [eye fill];
    
    [[UIColor blackColor] setStroke];
    [eye setLineWidth:10];
    [eye stroke];
    
    UIBezierPath *pupil = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(128, 135, 14, 14)];
    [[UIColor blackColor] setFill];
    [pupil fill];
}

- (void)drawCatRightEye {
    CGRect rect = CGRectMake(170, 103, 95, 86);
    UIBezierPath *eye = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:43];
    
    [[UIColor blackColor] setStroke];
    [eye setLineWidth:10];
    [eye stroke];
    
    UIBezierPath *pupil = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(204, 147, 14, 14)];
    [[UIColor blackColor] setFill];
    [pupil fill];
}

- (void)drawCatNose {
    UIBezierPath *nose = [UIBezierPath bezierPath];
    
    [nose moveToPoint:CGPointMake(165, 155)];
    [nose addLineToPoint:CGPointMake(159, 195)];
    
    [[UIColor blackColor] setStroke];
    [nose setLineWidth:10];
    [nose stroke];
}

- (CGFloat)radiansFromDegrees:(CGFloat)degrees {
    return degrees * M_PI / 180.0f;
}

- (void)drawCatSmile {
    UIBezierPath *smile = [UIBezierPath bezierPathWithArcCenter:CGPointMake(166, 170)
                                                         radius:30
                                                     startAngle:[self radiansFromDegrees:155]
                                                       endAngle:[self radiansFromDegrees:55]
                                                      clockwise:NO];
    
    [[UIColor blackColor] setFill];
    [smile fill];
}

- (void)drawRect:(CGRect)rect {
    [self drawRedCircle];
    [self drawCatBody];
    [self drawCatLeftEye];
    [self drawCatRightEye];
    [self drawCatNose];
    [self drawCatSmile];
    [self drawBorder];
}

@end
