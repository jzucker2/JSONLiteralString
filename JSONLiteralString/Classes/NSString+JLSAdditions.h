//
//  NSString+JLSAdditions.h
//  Pods
//
//  Created by Jordan Zucker on 5/31/16.
//
//

#import <Foundation/Foundation.h>

@interface NSString (JLSAdditions)

- (NSString *)JLS_stringWithFormattedLineWithEndingComma:(BOOL)shouldEndWithComma;

- (NSString *)JLS_stringWithLiteralWrap;

- (NSString *)JLS_stringWithAllNewLinesIndented;

@end
