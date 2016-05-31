//
//  NSString+JLSAdditions.m
//  Pods
//
//  Created by Jordan Zucker on 5/31/16.
//
//

#import "NSString+JLSAdditions.h"

@implementation NSString (JLSAdditions)

- (NSString *)JLS_formattedLine {
    return [NSString stringWithFormat:@"\t%@,", self];
}

@end
