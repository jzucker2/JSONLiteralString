//
//  AppDelegate.m
//  LiteralGenerator
//
//  Created by Jordan Zucker on 5/31/16.
//  Copyright © 2016 Jordan Zucker. All rights reserved.
//

#import <JSONLiteralString/JSONLiteralString.h>
#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSArray *messages = @[
                          @"********....... 8695 - 2016-05-17 11:59:32",
                          @123,
                          @"*********...... 8696 - 2016-05-17 12:00:37",
                          @123,
                          @123,
                          @"**********..... 8697 - 2016-05-17 12:01:42",
                          @123,
                          @"***********.... 8698 - 2016-05-17 12:02:47",
                          @123,
                          @"************... 8699 - 2016-05-17 12:03:52",
                          @123,
                          @"*************.. 8700 - 2016-05-17 12:04:57",
                          @123,
                          @"**************. 8701 - 2016-05-17 12:06:02",
                          @123,
                          @"*************** 8702 - 2016-05-17 12:07:07",
                          @123,
                          @"test",
                          @{
                              @"test": @"test"
                              },
                          @{
                              @"test":         @{
                                      @"test": @"test"
                                      }
                              },
                          @"test",
                          @"test",
                          @"test",
                          @"test",
                          @"test",
                          @"*.............. 8703 - 2016-05-17 12:08:12",
                          @"test",
                          @"**............. 8704 - 2016-05-17 12:09:17",
                          @"test",
                          @"***............ 8705 - 2016-05-17 12:10:22",
                          @"test",
                          @"****........... 8706 - 2016-05-17 12:11:26",
                          @"test",
                          @"*****.......... 8707 - 2016-05-17 12:12:31",
                          @123,
                          @"******......... 8708 - 2016-05-17 12:13:36",
                          @123,
                          @"*******........ 8709 - 2016-05-17 12:14:41",
                          @123,
                          @123,
                          @"********....... 8710 - 2016-05-17 12:15:46",
                          @123,
                          @"*********...... 8711 - 2016-05-17 12:16:51",
                          @123,
                          @"**********..... 8712 - 2016-05-17 12:17:55",
                          @123,
                          @"***********.... 8713 - 2016-05-17 12:19:00",
                          @123,
                          @"************... 8714 - 2016-05-17 12:20:05",
                          @123,
                          @"*************.. 8715 - 2016-05-17 12:21:10",
                          @123,
                          @"**************. 8716 - 2016-05-17 12:22:15",
                          @123,
                          @"*************** 8717 - 2016-05-17 12:23:20",
                          @123,
                          @"*.............. 8718 - 2016-05-17 12:24:25",
                          @123,
                          @"**............. 8719 - 2016-05-17 12:25:30",
                          @123,
                          @"***............ 8720 - 2016-05-17 12:26:34",
                          @123,
                          @"****........... 8721 - 2016-05-17 12:27:39",
                          @123,
                          @123,
                          @"*****.......... 8722 - 2016-05-17 12:28:44",
                          @123,
                          @"******......... 8723 - 2016-05-17 12:29:49",
                          @123,
                          @"*******........ 8724 - 2016-05-17 12:30:54",
                          @123,
                          @"********....... 8725 - 2016-05-17 12:31:59",
                          @123,
                          @"*********...... 8726 - 2016-05-17 12:33:04",
                          @123,
                          @"**********..... 8727 - 2016-05-17 12:34:08",
                          @123,
                          @"***********.... 8728 - 2016-05-17 12:35:13",
                          @123,
                          @"************... 8729 - 2016-05-17 12:36:18",
                          @YES,
                          @[
                              @"test",
                              @[
                                  @"test",
                                  @123,
                                ],
                              @{
                                  @"what what": @[
                                          @"hey",
                                          @"123",
                                          ],
                                  @"ho": @123,
                                },
                              @123
                              ],
                          @"test",
                          @{
                              @"test": @"test",
                              },
                          @{
                              @"test":         @{
                                      @"test": @"test",
                                      }
                              },
                          @"test",
                          @"test",
                          @"test",
                          @"test",
                          @"test",
                          @123,
                          @"**************. 8731 - 2016-05-17 12:38:28",
                          @123,
                          @"*************** 8732 - 2016-05-17 12:39:33",
                          @123,
                          @"*.............. 8733 - 2016-05-17 12:40:37",
                          @123,
                          @123,
                          @"**............. 8734 - 2016-05-17 12:41:42",
                          @123
                          ];
    NSLog(@"original: %@", messages);
    NSLog(@"================================================");
    NSLog(@"messages:");
    NSLog(@"\n%@", [messages JLS_literalString]);
    NSLog(@"================================================");
    NSNumber *testNumber = @4;
    NSString *testString = @"this";
    NSLog(@"testNumber");
    NSLog(@"%@", [testNumber JLS_literalString]);
    NSLog(@"testString");
    NSLog(@"%@", [testString JLS_literalString]);
    NSLog(@"================================================");
    NSArray *testAgain = @[
                           @"********....... 8695 - 2016-05-17 11:59:32",
                           @123,
                           @"*********...... 8696 - 2016-05-17 12:00:37",
                           @123,
                           @123,
                           @"**********..... 8697 - 2016-05-17 12:01:42",
                           @123,
                           @"***********.... 8698 - 2016-05-17 12:02:47",
                           @123,
                           @"************... 8699 - 2016-05-17 12:03:52",
                           @123,
                           @"*************.. 8700 - 2016-05-17 12:04:57",
                           @123,
                           @"**************. 8701 - 2016-05-17 12:06:02",
                           @123,
                           @"*************** 8702 - 2016-05-17 12:07:07",
                           @123,
                           @"test",
                           @{
                               @"test": @"test",
                               },
                           @{
                               @"test": @{
                                       @"test": @"test",
                                       },
                               },
                           @"test",
                           @"test",
                           @"test",
                           @"test",
                           @"test",
                           @"*.............. 8703 - 2016-05-17 12:08:12",
                           @"test",
                           @"**............. 8704 - 2016-05-17 12:09:17",
                           @"test",
                           @"***............ 8705 - 2016-05-17 12:10:22",
                           @"test",
                           @"****........... 8706 - 2016-05-17 12:11:26",
                           @"test",
                           @"*****.......... 8707 - 2016-05-17 12:12:31",
                           @123,
                           @"******......... 8708 - 2016-05-17 12:13:36",
                           @123,
                           @"*******........ 8709 - 2016-05-17 12:14:41",
                           @123,
                           @123,
                           @"********....... 8710 - 2016-05-17 12:15:46",
                           @123,
                           @"*********...... 8711 - 2016-05-17 12:16:51",
                           @123,
                           @"**********..... 8712 - 2016-05-17 12:17:55",
                           @123,
                           @"***********.... 8713 - 2016-05-17 12:19:00",
                           @123,
                           @"************... 8714 - 2016-05-17 12:20:05",
                           @123,
                           @"*************.. 8715 - 2016-05-17 12:21:10",
                           @123,
                           @"**************. 8716 - 2016-05-17 12:22:15",
                           @123,
                           @"*************** 8717 - 2016-05-17 12:23:20",
                           @123,
                           @"*.............. 8718 - 2016-05-17 12:24:25",
                           @123,
                           @"**............. 8719 - 2016-05-17 12:25:30",
                           @123,
                           @"***............ 8720 - 2016-05-17 12:26:34",
                           @123,
                           @"****........... 8721 - 2016-05-17 12:27:39",
                           @123,
                           @123,
                           @"*****.......... 8722 - 2016-05-17 12:28:44",
                           @123,
                           @"******......... 8723 - 2016-05-17 12:29:49",
                           @123,
                           @"*******........ 8724 - 2016-05-17 12:30:54",
                           @123,
                           @"********....... 8725 - 2016-05-17 12:31:59",
                           @123,
                           @"*********...... 8726 - 2016-05-17 12:33:04",
                           @123,
                           @"**********..... 8727 - 2016-05-17 12:34:08",
                           @123,
                           @"***********.... 8728 - 2016-05-17 12:35:13",
                           @123,
                           @"************... 8729 - 2016-05-17 12:36:18",
                           @1,
                           @[
                               @"test",
                               @[
                                   @"test",
                                   @123,
                                   ],
                               @{
                                   @"ho": @123,
                                   @"what what": @[
                                           @"hey",
                                           @"123",
                                           ],
                                   },
                               @123,
                               ],
                           @"test",
                           @{
                               @"test": @"test",
                               },
                           @{
                               @"test": @{
                                       @"test": @"test",
                                       },
                               },
                           @"test",
                           @"test",
                           @"test",
                           @"test",
                           @"test",
                           @123,
                           @"**************. 8731 - 2016-05-17 12:38:28",
                           @123,
                           @"*************** 8732 - 2016-05-17 12:39:33",
                           @123,
                           @"*.............. 8733 - 2016-05-17 12:40:37",
                           @123,
                           @123,
                           @"**............. 8734 - 2016-05-17 12:41:42",
                           @123,
                           ];
    NSLog(@"testAgain");
    NSLog(@"%@", testAgain);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
