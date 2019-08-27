// Tweak is patched and no longer works

%hook ClassOne
- (bool)playlistItemShouldBeginAd:(id)arg1 {
	return 0;
}
%end

%hook ClassTwo
- (bool)imaManagerShouldBeginAd:(id)arg1 {
	return 0;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Twitch.TheaterViewController"), ClassTwo = objc_getClass("Twitch.PlaylistAdsRequester"));
};