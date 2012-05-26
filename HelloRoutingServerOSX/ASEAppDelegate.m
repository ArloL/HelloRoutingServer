#import "ASEAppDelegate.h"

#import "ASEHelloRoutingServer.h"

@interface ASEAppDelegate ()

@property (nonatomic, strong) ASEHelloRoutingServer * helloServer;

@end

@implementation ASEAppDelegate

@synthesize window;

@synthesize helloServer;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    helloServer = [ASEHelloRoutingServer new];
}

@end
