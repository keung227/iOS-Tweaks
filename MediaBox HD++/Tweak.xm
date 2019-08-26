%hook AppDelegate
- (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)arg1 {
	%orig();
	if ([[NSUserDefaults standardUserDefaults] boolForKey:@"alertShownOnce"] == NO) {
        
        UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        alertWindow.rootViewController = [[UIViewController alloc] init];
        alertWindow.windowLevel = UIWindowLevelAlert + 1;
        
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"MediaBox HD++"
                                     message:@"Cracked By SarahH12099"
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* okayButton = [UIAlertAction
                                     actionWithTitle:@"Thank You"
                                     style:UIAlertActionStyleDefault
                                     handler:^(UIAlertAction * action) {
                                         alertWindow.hidden = YES;
                                         [alert dismissViewControllerAnimated:YES completion:nil];
                                     }];
        
        [alert addAction:okayButton];
        
        [alertWindow makeKeyAndVisible];
        [alertWindow.rootViewController presentViewController:alert animated:YES completion:nil];
        
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"alertShownOnce"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
- (void)initAds {
}
- (void)loadNativeAd {
}
%end