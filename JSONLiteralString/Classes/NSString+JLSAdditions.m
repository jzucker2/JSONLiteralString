//
//  NSString+JLSAdditions.m
//  Pods
//
//  Created by Jordan Zucker on 5/31/16.
//
//

#import "NSString+JLSAdditions.h"

@implementation NSString (JLSAdditions)

- (NSString *)JLS_stringWithFormattedLineWithEndingComma:(BOOL)shouldEndWithComma {
    return [NSString stringWithFormat:@"%@%@\n", self, (shouldEndWithComma ? @"," : @"")];
}

- (NSString *)JLS_stringWithLiteralWrap {
    return [@"@" stringByAppendingString:self];
}

- (NSString *)JLS_stringWithAllNewLinesIndented {
    NSString *indentFirstLineString = [@"\t" stringByAppendingString:self];
    return [indentFirstLineString stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
}



@end
