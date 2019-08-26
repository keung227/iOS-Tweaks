%hook AMAppDelegate
- (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)arg1 {
	%orig();
	if ([[NSUserDefaults standardUserDefaults] boolForKey:@"alertShownOnce"] == NO) {
        
        UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        alertWindow.rootViewController = [[UIViewController alloc] init];
        alertWindow.windowLevel = UIWindowLevelAlert + 1;
        
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Audiomack++"
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
%end

%hook ClassOne
- (bool)isPremium {
    return 1;
}
%end

%hook ClassTwo
- (bool)isPremium {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("audiomack_iphone.AMUserRepository"), ClassTwo = objc_getClass("audiomack_iphone.PremiumRepository"));
};