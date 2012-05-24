#import "ASEAppDelegate.h"

#import <RoutingHTTPServer/RoutingHTTPServer.h>

@interface ASEAppDelegate ()

@property (nonatomic, strong) RoutingHTTPServer * httpServer;

@end

@implementation ASEAppDelegate

@synthesize window;

@synthesize httpServer;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Initalize our http server
    httpServer = [[RoutingHTTPServer alloc] init];
    
	// Normally there's no need to run our server on any specific port.
	// Technologies like Bonjour allow clients to dynamically discover the server's port at runtime.
	// However, for easy testing you may want force a certain port so you can just hit the refresh button.
    [httpServer setPort:12345];
    
    [httpServer get:@"/hello" withBlock:^(RouteRequest *request, RouteResponse *response) {
        [response setHeader:@"Content-Type" value:@"application/json"];
        [response respondWithString:@"{\"responses\":{\"message\":\"hello world\"}}"];
    }];
    
	NSError * error = nil;
	if(![httpServer start:&error])
	{
		NSLog(@"Error starting HTTP Server: %@", error);
	}
}

@end
