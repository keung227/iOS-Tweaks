%hook SBAppSwitcherSettings
- (void)setSwitcherStyle:(long long)arg1 {
    arg1 = 2;
    %orig;
} 
%end