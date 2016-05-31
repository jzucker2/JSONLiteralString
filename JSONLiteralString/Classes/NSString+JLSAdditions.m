//
//  NSString+JLSAdditions.m
//  Pods
//
//  Created by Jordan Zucker on 5/31/16.
//
//

#import "NSString+JLSAdditions.h"

@implementation NSString (JLSAdditions)

- (NSString *)JLS_formattedLineWithEndingComma:(BOOL)shouldEndWithComma {
    return [NSString stringWithFormat:@"\t%@%@\n", self, (shouldEndWithComma ? @"," : @"")];
}

- (NSString *)JLS_literalWrap {
    return [@"@" stringByAppendingString:self];
}

@end
