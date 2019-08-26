%hook HSSUser
- (double)expirationDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (bool)isPremium {
    return 1;
}
- (bool)hasDedicatedServersPackage {
    return 1;
}
- (bool)hasBusinessPackage {
    return 1;
}
- (bool)hasTrial {
    return 0;
}
+ (bool)supportsSecureCoding {
    return 1;
}
- (void)setExpirationDate:(double)arg1 {
	NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    arg1 = final;
    %orig;
}
- (bool)isSignedIn {
    return 1;
}
- (void)setSignedIn:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (int)devicesMax {
    return 5;
}
- (void)setDevicesMax:(int)arg1 {
    arg1 = 5;
    %orig;
}
- (int)devicesUsed {
    return 1;
}
- (void)setDevicesUsed:(int)arg1 {
    arg1 = 1;
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

%hook BetternetUser
- (NSString *)email {
    return @"sarahh12099@gmail.com";
}
- (void)setEmail:(id)arg1 {
    arg1 = @"sarahh12099@gmail.com";
    %orig;
}
- (double)premiumExpirationDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (void)setPremiumExpirationDate:(double)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    arg1 = final;
    %orig;
}
- (int)linkedDeviceCount {
    return 1;
}
- (void)setLinkedDeviceCount:(int)arg1 {
    arg1 = 1;
    %orig;
}
- (int)maximumLinkAvailable {
    return 5;
}
- (void)setMaximumLinkAvailable:(int)arg1 {
    arg1 = 5;
    %orig;
}
- (bool)isLinked {
    return 1;
}
- (void)setIsLinked:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)isPremium {
    return 1;
}
- (void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook BNUser
+ (bool)supportsSecureCoding {
    return 1;
}
- (bool)isPremium {
    return 1;
}
- (void)setPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)isSignedIn {
    return 1;
}
- (void)setSignedIn:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (double)expirationDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (NSString *)email {
    return @"sarahh12099@gmail.com";
}
- (void)setEmail:(id)arg1 {
    arg1 = @"sarahh12099@gmail.com";
    %orig;
}
%end

%hook AFUserAccount
+ (bool)supportsSecureCoding {
    return 1;
}
- (bool)isValid {
    return 1;
}
- (void)setIsValid:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (NSString *)name {
    return @"sarahh12099@gmail.com";
}
- (void)setName:(id)arg1 {
    arg1 = @"sarahh12099@gmail.com";
    %orig;
}
- (int)devices_left {
    return 4;
}
- (void)setDevices_left:(int)arg1 {
    arg1 = 4;
    %orig;
}
- (int)max_devices {
    return 5;
}
- (void)setMax_devices:(int)arg1 {
    arg1 = 5;
    %orig;
}
- (bool)trial {
    return 0;
}
- (void)setTrial:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (double)expired_date {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (void)setExpired_date:(double)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    arg1 = final;
    %orig;
}
- (bool)auto_renew {
    return 0;
}
- (void)setAuto_renew:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (bool)hasLifetime {
    return 1;
}
- (void)setHasLifetime:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook ZDKUser
- (bool)isAgent {
    return 1;
}
- (void)setIsAgent:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook BNCountry
- (bool)isFree {
    return 0;
}
- (void)setFree:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook HSSSDManager
- (bool)isValid {
    return 1;
}
%end

%hook HSSSD
- (bool)isValid {
    return 1;
}
%end

%hook HSSSDFile
- (bool)isValid {
    return 1;
}
%end

%hook DashboardViewController
- (bool)shouldShowRateConnection {
    return 0;
}
- (void)setShouldShowRateConnection:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (bool)shouldShowTAC {
    return 0;
}
%end

%hook AccountViewController
- (bool)blockSignOut {
    return 1;
}
- (void)setBlockSignOut:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook UserConsentViewController
+ (bool)shouldShowUserConsent {
    return 0;
}
%end