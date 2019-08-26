%hook DeviceInfo
+ (bool)isJailbroken {
    return 0;
}
%end

%hook FlurryUtil
+ (bool)deviceIsJailbroken {
    return 0;
}
+ (bool)appIsCracked {
    return 0;
}
%end

%hook AppsFlyerUtils
+ (bool)isJailbroken {
    return 0;
}
%end

%hook ANSMetadata
- (bool)computeIsJailbroken {
    return 0;
}
- (bool)isJailbroken {
    return 0;
}
%end

%hook SSEDeviceStatus
- (bool)jailBroken {
    return 0;
}
%end

%hook VipHelper
+ (bool)isVIP {
    return 1;
}
+ (bool)isRenewable {
    return 0;
}
%end

%hook ACStatisticTool
+ (void)setUserID:(id)arg1 isVIP:(bool)arg2 {
    arg2 = 1;
    %orig;
}
%end

%hook ACUserVIPInfo
- (bool)isVIP {
    return 1;
}
- (bool)isAutoRenew {
    return 0;
}
- (void)setIsAutoRenew:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (NSDate *)vipExpiredDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}
- (void)setVipExpiredDate:(id)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    arg1 = date;
    %orig;
}
%end

%hook ACUser
- (NSString *)username {
    return @"SarahH12099";
}
- (bool)isVIP {
    return 1;
}
- (bool)isLogined {
    return 1;
}
- (void)setUsername:(id)arg1 {
    arg1 = @"SarahH12099";
    %orig;
}
- (NSString *)gender {
    return @"Female";
}
- (void)setGender:(id)arg1 {
    arg1 = @"Female";
    %orig;
}
- (NSString *)email {
    return @"sarahh12099@gmail.com";
}
- (void)setEmail:(id)arg1 {
    arg1 = @"sarahh12099@gmail.com";
    %orig;
}
%end

%hook ACUserStatisticTool
+ (void)setUserID:(id)arg1 isVIP:(bool)arg2 {
    arg2 = 1;
    %orig;
}
%end

%hook ACVPNServerArea
- (bool)isVIP {
    return 1;
}
- (void)setIsVIP:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook ACVPNServersViewController
- (bool)onTrialVIP {
    return 0;
}
%end

%hook APMInAppPurchaseItem
- (bool)isFreeTrial {
    return 0;
}
- (void)setFreeTrial:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (bool)isIntroductoryOffer {
    return 0;
}
- (void)setIntroductoryOffer:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MainViewController
- (bool)showRatingAfterReturn {
    return 0;
}
- (void)setShowRatingAfterReturn:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (bool)rateInAppStore {
    return 0;
}
- (void)setRateInAppStore:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (bool)showVipButton {
    return 0;
}
- (void)setShowVipButton:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SettingsViewController
- (void)onClickVip {
}
- (void)onClickFeedback {
}
- (void)onClickRate {
}
- (void)onClickAccount {
}
%end

%hook RMAppReceipt
- (bool)containsInAppPurchaseOfProductIdentifier:(id)arg1 {
    return 1;
}
- (bool)containsActiveAutoRenewableSubscriptionOfProductIdentifier:(id)arg1 forDate:(id)arg2 {
    return 0;
}
%end

%hook RMAppReceiptIAP
- (bool)isActiveAutoRenewableSubscriptionForDate:(id)arg1 {
    return 0;
}
%end

%hook RMStoreUtils
+ (bool)isExpiredProductOfIdentifier:(id)arg1 {
    return 0;
}
+ (bool)isExistActivedAutoRenewableSubscriptionForDate:(id)arg1 {
    return 0;
}
+ (bool)isExistActivedAutoRenewableSubscription {
    return 0;
}
%end