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
//    NSString *indentFirstLineString = [@"\t" stringByAppendingString:self];
//    NSString *endsWithTabString = [self stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
//    if ([endsWithTabString hasSuffix:@"\t"]) {
//        NSRange trailingTabRange = NSMakeRange(endsWithTabString.length-2, 2);
//        return [endsWithTabString stringByReplacingCharactersInRange:trailingTabRange withString:@""];
//    } else {
//        return endsWithTabString;
//    }
    NSString *addTabsString = [self stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
    return [addTabsString stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\t"]];
}



@end
