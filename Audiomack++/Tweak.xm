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