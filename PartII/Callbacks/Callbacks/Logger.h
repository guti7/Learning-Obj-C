//
//  Logger.h
//  Callbacks
//
//  Created by Guti on 6/21/17.
//  Copyright © 2017 Guti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject <NSURLConnectionDataDelegate>
/// There are three messages that `Logger` will need to respond to as the delegate of the `NSURLConnection`. Two are from the `NSURLConnectionDataDelegate` protocol, and one from `NSURLConnectionDelegate`.

// In a asyncchronous connection, you need an instance of `NSMutableData`. As chunks of data arrive, you will add them to this object.
// instance variable
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;


// Callbacks with target-action
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)timer; // Action methods always take one argument - the object(target) that is sending the message(action).

// Callbacks with Helper objects(delegates/data sources)
// `NSURLConnectionDataDelegate` protocol
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

// `NSURLConnectionDelegate` protocol - the connection data delegate implements the connection delegate
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;

@end
