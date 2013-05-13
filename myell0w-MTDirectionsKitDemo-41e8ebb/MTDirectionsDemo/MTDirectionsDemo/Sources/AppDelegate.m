#import "AppDelegate.h"
#import "MTDMenuTableViewController.h"


@implementation AppDelegate

////////////////////////////////////////////////////////////////////////
#pragma mark - Application Lifecycle
////////////////////////////////////////////////////////////////////////

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.rootViewController = [MTDMenuTableViewController viewController];

    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:self.rootViewController];

    navigationController.navigationBar.tintColor = [UIColor colorWithRed:86.f/255.f green:125.f/255.f blue:178.f/255.f alpha:1.f];
    self.window.rootViewController = navigationController;
    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];

    // T
    // [MTDDirectionsRequestBing registerAPIKey:@"YOUR_BING_API_KEY"];

    return YES;
}

@end
