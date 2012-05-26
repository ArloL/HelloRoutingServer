#import "ASEAppDelegate.h"

#import "ASEHelloRoutingServer.h"

@interface ASEAppDelegate ()

@property (nonatomic, strong) ASEHelloRoutingServer * helloServer;

@end

@implementation ASEAppDelegate

@synthesize window;

@synthesize helloServer;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    helloServer = [ASEHelloRoutingServer new];
    
    return YES;
}

@end
