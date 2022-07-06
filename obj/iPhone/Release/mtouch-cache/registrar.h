#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#pragma clang diagnostic ignored "-Wunguarded-availability-new"
#include <stdarg.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#include <objc/message.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

@class UIApplicationDelegate;
@class AppDelegate;
@class StoryScreen;
@class UITableViewSource;
@class Hello_MultiScreen_iPhone_TableSource;
@class EditJournalScreen;
@class HomeScreen;
@class HelloWorldScreen;
@class HelloUniverseScreen;
@class HomeScreen2;
@class ImageScreen;
@class LoginScreen;
@class Foundation_NSDispatcher;
@class __MonoMac_NSSynchronizationContextDispatcher;
@class Foundation_NSAsyncDispatcher;
@class __MonoMac_NSAsyncActionDispatcher;
@class __MonoMac_NSAsyncSynchronizationContextDispatcher;
@class Foundation_InternalNSNotificationHandler;
@class UIKit_UIControlEventProxy;
@class UIImagePickerControllerDelegate;
@class __NSObject_Disposer;
@class UIKit_UIAlertView__UIAlertViewDelegate;
@class __UIGestureRecognizerToken;
@class __UIGestureRecognizerParameterlessToken;
@class UIKit_UIImagePickerController__UIImagePickerControllerDelegate;
@class UIKit_UITextField__UITextFieldDelegate;
@class UIKit_UIScrollView__UIScrollViewDelegate;
@class UIKit_UITextView__UITextViewDelegate;
@class UIKit_UIView_UIViewAppearance;
@class GADAdLoader;
@class GADRequest;
@class GADAdapterStatus;
@protocol GADAdLoaderDelegate;
@class Enums__Google_MobileAds_AdLoaderDelegate;
@class GADAdLoaderOptions;
@protocol GADAdMetadataDelegate;
@class Enums__Google_MobileAds_AdMetadataDelegate;
@protocol GADAdMetadataProvider;
@class Enums__Google_MobileAds_AdMetadataProvider;
@protocol GADAdNetworkExtras;
@class Enums__Google_MobileAds_AdNetworkExtras;
@class GADAdNetworkResponseInfo;
@class GADAdReward;
@protocol GADAdSizeDelegate;
struct trampoline_struct_ddi {
	double v0;
	double v8;
	int v16;
};
@class Enums__Google_MobileAds_AdSizeDelegate;
@class GADAdValue;
@protocol GADAppEventDelegate;
@class Enums__Google_MobileAds_AppEventDelegate;
@protocol GADAudioVideoManagerDelegate;
@class Enums__Google_MobileAds_AudioVideoManagerDelegate;
@protocol GADBannerViewDelegate;
@class Enums__Google_MobileAds_BannerViewDelegate;
@protocol GADCustomEventBanner;
@protocol GADCustomEventBannerDelegate;
@class Enums__Google_MobileAds_CustomEventBannerDelegate;
@class GADCustomEventExtras;
@protocol GADCustomEventInterstitial;
@protocol GADCustomEventInterstitialDelegate;
@class Enums__Google_MobileAds_CustomEventInterstitialDelegate;
@protocol GADCustomEventNativeAd;
@class Enums__Google_MobileAds_CustomEventNativeAd;
@protocol GADCustomEventNativeAdDelegate;
@class Enums__Google_MobileAds_CustomEventNativeAdDelegate;
@class GADCustomEventRequest;
@protocol GADCustomNativeAdDelegate;
@class Enums__Google_MobileAds_CustomNativeAdDelegate;
@class GADDebugOptionsViewController;
@protocol GADDebugOptionsViewControllerDelegate;
@class Enums__Google_MobileAds_DebugOptionsViewControllerDelegate;
@class GADDisplayAdMeasurement;
@class GADDynamicHeightSearchRequest;
@class GADExtras;
@protocol GADFullScreenContentDelegate;
@class Enums__Google_MobileAds_FullScreenContentDelegate;
@protocol GADFullScreenPresentingAd;
@class GADInitializationStatus;
@class GADMediaContent;
@class GADMultipleAdsAdLoaderOptions;
@class GADMuteThisAdReason;
@protocol GADNativeAdDelegate;
@class Enums__Google_MobileAds_NativeAdDelegate;
@class GADNativeAdImage;
@class GADNativeAdImageAdLoaderOptions;
@class GADNativeAdMediaAdLoaderOptions;
@protocol GADNativeAdUnconfirmedClickDelegate;
@class Enums__Google_MobileAds_NativeAdUnconfirmedClickDelegate;
@class GADNativeAdViewAdOptions;
@class GADNativeMuteThisAdLoaderOptions;
@class GADRequestConfiguration;
@class GADResponseInfo;
@protocol GADRewardedAdDelegate;
@class Enums__Google_MobileAds_RewardedAdDelegate;
@class GADServerSideVerificationOptions;
@protocol GADSwipeableBannerViewDelegate;
@class Enums__Google_MobileAds_SwipeableBannerViewDelegate;
@protocol GADUnifiedNativeAdLoaderDelegate;
@class Enums__Google_MobileAds_UnifiedNativeAdLoaderDelegate;
@protocol GADVideoControllerDelegate;
@class Enums__Google_MobileAds_VideoControllerDelegate;
@class GADVideoOptions;
@protocol GADMediatedUnifiedNativeAd;
@class Enums__Google_MobileAds_Mediation_MediatedUnifiedNativeAd;
@protocol GAMBannerAdLoaderDelegate;
@class Enums__Google_MobileAds_DoubleClick_BannerAdLoaderDelegate;
@class GAMBannerViewOptions;
@class GAMRequest;
@class Google_MobileAds_CustomNativeAd_CustomNativeAdAppearance;
@class GADCustomNativeAd;
@class Google_MobileAds_AdChoicesView_AdChoicesViewAppearance;
@class GADAdChoicesView;
@class GADAppOpenAd;
@class Google_MobileAds_AudioVideoManager__AudioVideoManagerDelegate;
@class GADAudioVideoManager;
@class Google_MobileAds_BannerView__BannerViewDelegate;
@class Google_MobileAds_BannerView__AdSizeDelegate;
@class Google_MobileAds_BannerView_BannerViewAppearance;
@class GADBannerView;
@class Google_MobileAds_FullScreenPresentingAd__FullScreenContentDelegate;
@class GADInterstitialAd;
@class Google_MobileAds_MediaView_MediaViewAppearance;
@class GADMediaView;
@class GADMobileAds;
@class Google_MobileAds_NativeAd__NativeAdDelegate;
@class Google_MobileAds_NativeAd__NativeAdUnconfirmedClickDelegate;
@class GADNativeAd;
@class Google_MobileAds_NativeAdView_NativeAdViewAppearance;
@class GADNativeAdView;
@class GADRewardedAd;
@class GADRewardedInterstitialAd;
@class Google_MobileAds_SearchBannerView_SearchBannerViewAppearance;
@class GADSearchBannerView;
@class Google_MobileAds_VideoController__VideoControllerDelegate;
@class GADVideoController;
@class Google_MobileAds_DoubleClick_BannerView__AdSizeDelegate;
@class Google_MobileAds_DoubleClick_BannerView_BannerViewAppearance;
@class GAMBannerView;
@class GAMInterstitialAd;
@class FIRApp;
@class FIRConfiguration;
@class FIROptions;

@interface UIApplicationDelegate : NSObject<UIApplicationDelegate> {
}
	-(id) init;
@end

@interface AppDelegate : NSObject<UIApplicationDelegate, UIApplicationDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface StoryScreen : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface UITableViewSource : NSObject<UIScrollViewDelegate, UIScrollViewDelegate> {
}
	-(id) init;
@end

@interface Hello_MultiScreen_iPhone_TableSource : NSObject<UIScrollViewDelegate, UIScrollViewDelegate, UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface EditJournalScreen : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(void) didReceiveMemoryWarning;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface HomeScreen : UIViewController {
}
	@property (nonatomic, assign) UIButton * btnHelloWorld;
	@property (nonatomic, assign) UIButton * btnHelloUniverse;
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(UIButton *) btnHelloWorld;
	-(void) setBtnHelloWorld:(UIButton *)p0;
	-(UIButton *) btnHelloUniverse;
	-(void) setBtnHelloUniverse:(UIButton *)p0;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewWillDisappear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface HelloWorldScreen : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface HelloUniverseScreen : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(void) didReceiveMemoryWarning;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface HomeScreen2 : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface ImageScreen : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(void) didReceiveMemoryWarning;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface LoginScreen : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface UIImagePickerControllerDelegate : NSObject<UINavigationControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UINavigationControllerDelegate> {
}
	-(id) init;
@end

@interface __UIGestureRecognizerToken : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
	-(void) target;
@end

@interface UIKit_UIView_UIViewAppearance : NSObject {
}
	-(void) release;
	-(id) retain;
	-(GCHandle) xamarinGetGCHandle;
	-(bool) xamarinSetGCHandle: (GCHandle) gchandle flags: (enum XamarinGCHandleFlags) flags;
	-(enum XamarinGCHandleFlags) xamarinGetFlags;
	-(void) xamarinSetFlags: (enum XamarinGCHandleFlags) flags;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface GADAdLoader : NSObject {
}
	-(void) loadRequest:(id)p0;
	-(NSString *) adUnitID;
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(BOOL) isLoading;
	-(id) initWithAdUnitID:(NSString *)p0 rootViewController:(UIViewController *)p1 adTypes:(NSArray *)p2 options:(NSArray *)p3;
@end

@interface GADRequest : NSObject {
}
	-(id) adNetworkExtrasFor:(Class)p0;
	-(NSObject *) copyWithZone:(id)p0;
	-(void) registerAdNetworkExtras:(id)p0;
	-(void) removeAdNetworkExtrasFor:(Class)p0;
	-(void) setLocationWithLatitude:(CGFloat)p0 longitude:(CGFloat)p1 accuracy:(CGFloat)p2;
	-(NSString *) contentURL;
	-(void) setContentURL:(NSString *)p0;
	-(NSArray *) keywords;
	-(void) setKeywords:(NSArray *)p0;
	-(NSArray *) neighboringContentURLStrings;
	-(void) setNeighboringContentURLStrings:(NSArray *)p0;
	-(NSString *) requestAgent;
	-(void) setRequestAgent:(NSString *)p0;
@end

@interface GADAdapterStatus : NSObject {
}
	-(NSObject *) copyWithZone:(id)p0;
	-(NSString *) description;
	-(double) latency;
	-(NSInteger) state;
	-(id) init;
@end

@protocol GADAdLoaderDelegate
	@required -(void) adLoader:(id)p0 didFailToReceiveAdWithError:(NSError *)p1;
	@optional -(void) adLoaderDidFinishLoading:(id)p0;
@end

@interface Enums__Google_MobileAds_AdLoaderDelegate : NSObject<GADAdLoaderDelegate> {
}
	-(id) init;
@end

@interface GADAdLoaderOptions : NSObject {
}
	-(id) init;
@end

@protocol GADAdMetadataDelegate
	@required -(void) adMetadataDidChange:(id)p0;
@end

@interface Enums__Google_MobileAds_AdMetadataDelegate : NSObject<GADAdMetadataDelegate> {
}
	-(id) init;
@end

@protocol GADAdMetadataProvider
	@optional @property (nonatomic, assign, readonly) NSDictionary <NSString *, NSObject *>* adMetadata;
	@optional @property (nonatomic, assign) id adMetadataDelegate;
@end

@interface Enums__Google_MobileAds_AdMetadataProvider : NSObject<GADAdMetadataProvider> {
}
	-(id) init;
@end

@protocol GADAdNetworkExtras
@end

@interface Enums__Google_MobileAds_AdNetworkExtras : NSObject<GADAdNetworkExtras> {
}
	-(id) init;
@end

@interface GADAdNetworkResponseInfo : NSObject {
}
	-(NSString *) responseIdentifier;
	-(NSDictionary <NSString *, NSObject *>*) adUnitMapping;
	-(NSDictionary <NSString *, NSObject *>*) credentials;
	-(NSDictionary <NSString *, NSObject *>*) dictionaryRepresentation;
	-(NSError *) error;
	-(double) latency;
	-(id) init;
@end

@interface GADAdReward : NSObject {
}
	-(NSDecimalNumber *) amount;
	-(NSString *) type;
	-(id) initWithRewardType:(NSString *)p0 rewardAmount:(NSDecimalNumber *)p1;
@end

@protocol GADAdSizeDelegate
	@required -(void) adView:(id)p0 willChangeAdSizeTo:(struct trampoline_struct_ddi)p1;
@end

@interface Enums__Google_MobileAds_AdSizeDelegate : NSObject<GADAdSizeDelegate> {
}
	-(id) init;
@end

@interface GADAdValue : NSObject {
}
	-(NSObject *) copyWithZone:(id)p0;
	-(NSString *) currencyCode;
	-(NSInteger) precision;
	-(NSDecimalNumber *) value;
	-(id) init;
@end

@protocol GADAppEventDelegate
	@optional -(void) adView:(id)p0 didReceiveAppEvent:(NSString *)p1 withInfo:(NSString *)p2;
	@optional -(void) interstitial:(id)p0 didReceiveAppEvent:(NSString *)p1 withInfo:(NSString *)p2;
@end

@interface Enums__Google_MobileAds_AppEventDelegate : NSObject<GADAppEventDelegate> {
}
	-(id) init;
@end

@protocol GADAudioVideoManagerDelegate
	@optional -(void) audioVideoManagerWillPlayVideo:(id)p0;
	@optional -(void) audioVideoManagerDidPauseAllVideo:(id)p0;
	@optional -(void) audioVideoManagerWillPlayAudio:(id)p0;
	@optional -(void) audioVideoManagerDidStopPlayingAudio:(id)p0;
@end

@interface Enums__Google_MobileAds_AudioVideoManagerDelegate : NSObject<GADAudioVideoManagerDelegate> {
}
	-(id) init;
@end

@protocol GADBannerViewDelegate
	@optional -(void) bannerViewDidReceiveAd:(id)p0;
	@optional -(void) bannerView:(id)p0 didFailToReceiveAdWithError:(NSError *)p1;
	@optional -(void) bannerViewDidRecordImpression:(id)p0;
	@optional -(void) bannerViewDidRecordClick:(id)p0;
	@optional -(void) bannerViewWillPresentScreen:(id)p0;
	@optional -(void) bannerViewWillDismissScreen:(id)p0;
	@optional -(void) bannerViewDidDismissScreen:(id)p0;
@end

@interface Enums__Google_MobileAds_BannerViewDelegate : NSObject<GADBannerViewDelegate> {
}
	-(id) init;
@end

@protocol GADCustomEventBanner
	@required -(void) requestBannerAd:(struct trampoline_struct_ddi)p0 parameter:(NSString *)p1 label:(NSString *)p2 request:(id)p3;
	@required -(id) delegate;
	@required -(void) setDelegate:(id)p0;
@end

@protocol GADCustomEventBannerDelegate
	@required -(void) customEventBanner:(id)p0 didReceiveAd:(UIView *)p1;
	@required -(void) customEventBanner:(id)p0 didFailAd:(NSError *)p1;
	@required -(void) customEventBannerWasClicked:(id)p0;
	@required -(UIViewController *) viewControllerForPresentingModalView;
	@required -(void) customEventBannerWillPresentModal:(id)p0;
	@required -(void) customEventBannerWillDismissModal:(id)p0;
	@required -(void) customEventBannerDidDismissModal:(id)p0;
	@required -(void) customEventBannerWillLeaveApplication:(id)p0;
@end

@interface Enums__Google_MobileAds_CustomEventBannerDelegate : NSObject<GADCustomEventBannerDelegate> {
}
	-(id) init;
@end

@interface GADCustomEventExtras : NSObject {
}
	-(NSDictionary *) extrasForLabel:(NSString *)p0;
	-(void) removeAllExtras;
	-(void) setExtras:(NSDictionary *)p0 forLabel:(NSString *)p1;
	-(NSDictionary *) allExtras;
	-(id) init;
@end

@protocol GADCustomEventInterstitial
	@required -(id) delegate;
	@required -(void) setDelegate:(id)p0;
	@required -(void) requestInterstitialAdWithParameter:(NSString *)p0 label:(NSString *)p1 request:(id)p2;
	@required -(void) presentFromRootViewController:(UIViewController *)p0;
@end

@protocol GADCustomEventInterstitialDelegate
	@optional -(void) customEventInterstitialDidReceiveAd:(id)p0;
	@optional -(void) customEventInterstitial:(id)p0 didFailAd:(NSError *)p1;
	@optional -(void) customEventInterstitialWasClicked:(id)p0;
	@optional -(void) customEventInterstitialWillPresent:(id)p0;
	@optional -(void) customEventInterstitialWillDismiss:(id)p0;
	@optional -(void) customEventInterstitialDidDismiss:(id)p0;
	@optional -(void) customEventInterstitialWillLeaveApplication:(id)p0;
@end

@interface Enums__Google_MobileAds_CustomEventInterstitialDelegate : NSObject<GADCustomEventInterstitialDelegate> {
}
	-(id) init;
@end

@protocol GADCustomEventNativeAd
	@required -(void) requestNativeAdWithParameter:(NSString *)p0 request:(id)p1 adTypes:(NSArray *)p2 options:(NSArray *)p3 rootViewController:(UIViewController *)p4;
	@required -(BOOL) handlesUserClicks;
	@required -(BOOL) handlesUserImpressions;
	@required -(id) delegate;
	@required -(void) setDelegate:(id)p0;
@end

@interface Enums__Google_MobileAds_CustomEventNativeAd : NSObject<GADCustomEventNativeAd> {
}
	-(id) init;
@end

@protocol GADCustomEventNativeAdDelegate
	@required -(void) customEventNativeAd:(id)p0 didFailToLoadWithError:(NSError *)p1;
	@required -(void) customEventNativeAd:(id)p0 didReceiveMediatedUnifiedNativeAd:(id)p1;
@end

@interface Enums__Google_MobileAds_CustomEventNativeAdDelegate : NSObject<GADCustomEventNativeAdDelegate> {
}
	-(id) init;
@end

@interface GADCustomEventRequest : NSObject {
}
	-(NSDictionary *) additionalParameters;
	-(BOOL) isTesting;
	-(BOOL) userHasLocation;
	-(NSArray *) userKeywords;
	-(CGFloat) userLatitude;
	-(CGFloat) userLocationAccuracyInMeters;
	-(NSString *) userLocationDescription;
	-(CGFloat) userLongitude;
	-(id) init;
@end

@protocol GADCustomNativeAdDelegate
	@optional -(void) customNativeAdDidRecordImpression:(id)p0;
	@optional -(void) customNativeAdDidRecordClick:(id)p0;
	@optional -(void) customNativeAdWillPresentScreen:(id)p0;
	@optional -(void) customNativeAdWillDismissScreen:(id)p0;
	@optional -(void) customNativeAdDidDismissScreen:(id)p0;
@end

@interface Enums__Google_MobileAds_CustomNativeAdDelegate : NSObject<GADCustomNativeAdDelegate> {
}
	-(id) init;
@end

@interface GADDebugOptionsViewController : UIViewController {
}
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@protocol GADDebugOptionsViewControllerDelegate
	@required -(void) debugOptionsViewControllerDidDismiss:(id)p0;
@end

@interface Enums__Google_MobileAds_DebugOptionsViewControllerDelegate : NSObject<GADDebugOptionsViewControllerDelegate> {
}
	-(id) init;
@end

@interface GADDisplayAdMeasurement : NSObject {
}
	-(BOOL) startWithError:(NSError **)p0;
	-(UIView *) view;
	-(void) setView:(UIView *)p0;
	-(id) init;
@end

@interface GADDynamicHeightSearchRequest : GADRequest {
}
	-(void) setAdvancedOptionValue:(NSObject *)p0 forKey:(NSString *)p1;
	-(NSString *) adBorderColor;
	-(void) setAdBorderColor:(NSString *)p0;
	-(NSString *) adBorderCSSSelections;
	-(void) setAdBorderCSSSelections:(NSString *)p0;
	-(NSInteger) adPage;
	-(void) setAdPage:(NSInteger)p0;
	-(NSString *) adSeparatorColor;
	-(void) setAdSeparatorColor:(NSString *)p0;
	-(BOOL) adTestEnabled;
	-(void) setAdTestEnabled:(BOOL)p0;
	-(CGFloat) adjustableLineHeight;
	-(void) setAdjustableLineHeight:(CGFloat)p0;
	-(CGFloat) annotationFontSize;
	-(void) setAnnotationFontSize:(CGFloat)p0;
	-(NSString *) annotationTextColor;
	-(void) setAnnotationTextColor:(NSString *)p0;
	-(CGFloat) attributionBottomSpacing;
	-(void) setAttributionBottomSpacing:(CGFloat)p0;
	-(NSString *) attributionFontFamily;
	-(void) setAttributionFontFamily:(NSString *)p0;
	-(CGFloat) attributionFontSize;
	-(void) setAttributionFontSize:(CGFloat)p0;
	-(NSString *) attributionTextColor;
	-(void) setAttributionTextColor:(NSString *)p0;
	-(NSString *) backgroundColor;
	-(void) setBackgroundColor:(NSString *)p0;
	-(BOOL) boldTitleEnabled;
	-(void) setBoldTitleEnabled:(BOOL)p0;
	-(NSString *) borderColor;
	-(void) setBorderColor:(NSString *)p0;
	-(NSString *) borderCSSSelections;
	-(void) setBorderCSSSelections:(NSString *)p0;
	-(NSString *) channel;
	-(void) setChannel:(NSString *)p0;
	-(BOOL) clickToCallExtensionEnabled;
	-(void) setClickToCallExtensionEnabled:(BOOL)p0;
	-(NSString *) CSSWidth;
	-(void) setCSSWidth:(NSString *)p0;
	-(CGFloat) descriptionFontSize;
	-(void) setDescriptionFontSize:(CGFloat)p0;
	-(BOOL) detailedAttributionExtensionEnabled;
	-(void) setDetailedAttributionExtensionEnabled:(BOOL)p0;
	-(NSString *) domainLinkColor;
	-(void) setDomainLinkColor:(NSString *)p0;
	-(CGFloat) domainLinkFontSize;
	-(void) setDomainLinkFontSize:(CGFloat)p0;
	-(NSString *) fontFamily;
	-(void) setFontFamily:(NSString *)p0;
	-(NSString *) hostLanguage;
	-(void) setHostLanguage:(NSString *)p0;
	-(BOOL) locationExtensionEnabled;
	-(void) setLocationExtensionEnabled:(BOOL)p0;
	-(CGFloat) locationExtensionFontSize;
	-(void) setLocationExtensionFontSize:(CGFloat)p0;
	-(NSString *) locationExtensionTextColor;
	-(void) setLocationExtensionTextColor:(NSString *)p0;
	-(BOOL) longerHeadlinesExtensionEnabled;
	-(void) setLongerHeadlinesExtensionEnabled:(BOOL)p0;
	-(NSInteger) numberOfAds;
	-(void) setNumberOfAds:(NSInteger)p0;
	-(BOOL) plusOnesExtensionEnabled;
	-(void) setPlusOnesExtensionEnabled:(BOOL)p0;
	-(NSString *) query;
	-(void) setQuery:(NSString *)p0;
	-(BOOL) sellerRatingsExtensionEnabled;
	-(void) setSellerRatingsExtensionEnabled:(BOOL)p0;
	-(BOOL) siteLinksExtensionEnabled;
	-(void) setSiteLinksExtensionEnabled:(BOOL)p0;
	-(NSString *) styleID;
	-(void) setStyleID:(NSString *)p0;
	-(NSString *) textColor;
	-(void) setTextColor:(NSString *)p0;
	-(CGFloat) titleFontSize;
	-(void) setTitleFontSize:(CGFloat)p0;
	-(NSString *) titleLinkColor;
	-(void) setTitleLinkColor:(NSString *)p0;
	-(BOOL) titleUnderlineHidden;
	-(void) setTitleUnderlineHidden:(BOOL)p0;
	-(CGFloat) verticalSpacing;
	-(void) setVerticalSpacing:(CGFloat)p0;
	-(id) init;
@end

@interface GADExtras : NSObject {
}
	-(NSDictionary *) additionalParameters;
	-(void) setAdditionalParameters:(NSDictionary *)p0;
	-(id) init;
@end

@protocol GADFullScreenContentDelegate
	@optional -(void) adDidRecordImpression:(id)p0;
	@optional -(void) adDidRecordClick:(id)p0;
	@optional -(void) ad:(id)p0 didFailToPresentFullScreenContentWithError:(NSError *)p1;
	@optional -(void) adDidPresentFullScreenContent:(id)p0;
	@optional -(void) adWillDismissFullScreenContent:(id)p0;
	@optional -(void) adDidDismissFullScreenContent:(id)p0;
@end

@interface Enums__Google_MobileAds_FullScreenContentDelegate : NSObject<GADFullScreenContentDelegate> {
}
	-(id) init;
@end

@protocol GADFullScreenPresentingAd
	@optional @property (nonatomic, assign) id fullScreenContentDelegate;
@end

@interface GADInitializationStatus : NSObject {
}
	-(NSObject *) copyWithZone:(id)p0;
	-(NSDictionary <NSString *, id>*) adapterStatusesByClassName;
	-(id) init;
@end

@interface GADMediaContent : NSObject {
}
	-(CGFloat) aspectRatio;
	-(double) currentTime;
	-(double) duration;
	-(BOOL) hasVideoContent;
	-(UIImage *) mainImage;
	-(void) setMainImage:(UIImage *)p0;
	-(id) videoController;
	-(id) init;
@end

@interface GADMultipleAdsAdLoaderOptions : GADAdLoaderOptions {
}
	-(NSInteger) numberOfAds;
	-(void) setNumberOfAds:(NSInteger)p0;
	-(id) init;
@end

@interface GADMuteThisAdReason : NSObject {
}
	-(NSString *) reasonDescription;
	-(id) init;
@end

@protocol GADNativeAdDelegate
	@optional -(void) nativeAdDidRecordImpression:(id)p0;
	@optional -(void) nativeAdDidRecordClick:(id)p0;
	@optional -(void) nativeAdWillPresentScreen:(id)p0;
	@optional -(void) nativeAdWillDismissScreen:(id)p0;
	@optional -(void) nativeAdDidDismissScreen:(id)p0;
	@optional -(void) nativeAdWillLeaveApplication:(id)p0;
@end

@interface Enums__Google_MobileAds_NativeAdDelegate : NSObject<GADNativeAdDelegate> {
}
	-(id) init;
@end

@interface GADNativeAdImage : NSObject {
}
	-(UIImage *) image;
	-(NSURL *) imageURL;
	-(CGFloat) scale;
	-(id) initWithImage:(UIImage *)p0;
	-(id) initWithURL:(NSURL *)p0 scale:(CGFloat)p1;
@end

@interface GADNativeAdImageAdLoaderOptions : GADAdLoaderOptions {
}
	-(BOOL) disableImageLoading;
	-(void) setDisableImageLoading:(BOOL)p0;
	-(BOOL) shouldRequestMultipleImages;
	-(void) setShouldRequestMultipleImages:(BOOL)p0;
	-(id) init;
@end

@interface GADNativeAdMediaAdLoaderOptions : GADAdLoaderOptions {
}
	-(NSInteger) mediaAspectRatio;
	-(void) setMediaAspectRatio:(NSInteger)p0;
	-(id) init;
@end

@protocol GADNativeAdUnconfirmedClickDelegate
	@required -(void) nativeAd:(id)p0 didReceiveUnconfirmedClickOnAssetID:(NSString *)p1;
	@required -(void) nativeAdDidCancelUnconfirmedClick:(id)p0;
@end

@interface Enums__Google_MobileAds_NativeAdUnconfirmedClickDelegate : NSObject<GADNativeAdUnconfirmedClickDelegate> {
}
	-(id) init;
@end

@interface GADNativeAdViewAdOptions : GADAdLoaderOptions {
}
	-(NSInteger) preferredAdChoicesPosition;
	-(void) setPreferredAdChoicesPosition:(NSInteger)p0;
	-(id) init;
@end

@interface GADNativeMuteThisAdLoaderOptions : GADAdLoaderOptions {
}
	-(BOOL) customMuteThisAdRequested;
	-(void) setCustomMuteThisAdRequested:(BOOL)p0;
	-(id) init;
@end

@interface GADRequestConfiguration : NSObject {
}
	-(void) setSameAppKeyEnabled:(BOOL)p0;
	-(void) tagForChildDirectedTreatment:(BOOL)p0;
	-(void) tagForUnderAgeOfConsent:(BOOL)p0;
	-(NSString *) maxAdContentRating;
	-(void) setMaxAdContentRating:(NSString *)p0;
	-(NSArray *) testDeviceIdentifiers;
	-(void) setTestDeviceIdentifiers:(NSArray *)p0;
	-(id) init;
@end

@interface GADResponseInfo : NSObject {
}
	-(NSString *) adNetworkClassName;
	-(NSArray *) adNetworkInfoArray;
	-(NSDictionary <NSString *, NSObject *>*) dictionaryRepresentation;
	-(NSString *) responseIdentifier;
	-(id) init;
@end

@protocol GADRewardedAdDelegate
	@required -(void) rewardedAd:(id)p0 userDidEarnReward:(id)p1;
	@optional -(void) rewardedAd:(id)p0 didFailToPresentWithError:(NSError *)p1;
	@optional -(void) rewardedAdDidPresent:(id)p0;
	@optional -(void) rewardedAdDidDismiss:(id)p0;
@end

@interface Enums__Google_MobileAds_RewardedAdDelegate : NSObject<GADRewardedAdDelegate> {
}
	-(id) init;
@end

@interface GADServerSideVerificationOptions : NSObject {
}
	-(NSObject *) copyWithZone:(id)p0;
	-(NSString *) customRewardString;
	-(void) setCustomRewardString:(NSString *)p0;
	-(NSString *) userIdentifier;
	-(void) setUserIdentifier:(NSString *)p0;
	-(id) init;
@end

@protocol GADSwipeableBannerViewDelegate
	@optional -(void) adViewDidActivateAd:(id)p0;
	@optional -(void) adViewDidDeactivateAd:(id)p0;
@end

@interface Enums__Google_MobileAds_SwipeableBannerViewDelegate : NSObject<GADSwipeableBannerViewDelegate> {
}
	-(id) init;
@end

@protocol GADUnifiedNativeAdLoaderDelegate
	@required -(void) adLoader:(id)p0 didReceiveUnifiedNativeAd:(id)p1;
@end

@interface Enums__Google_MobileAds_UnifiedNativeAdLoaderDelegate : NSObject<GADUnifiedNativeAdLoaderDelegate> {
}
	-(id) init;
@end

@protocol GADVideoControllerDelegate
	@optional -(void) videoControllerDidPlayVideo:(id)p0;
	@optional -(void) videoControllerDidPauseVideo:(id)p0;
	@optional -(void) videoControllerDidEndVideoPlayback:(id)p0;
	@optional -(void) videoControllerDidMuteVideo:(id)p0;
	@optional -(void) videoControllerDidUnmuteVideo:(id)p0;
@end

@interface Enums__Google_MobileAds_VideoControllerDelegate : NSObject<GADVideoControllerDelegate> {
}
	-(id) init;
@end

@interface GADVideoOptions : GADAdLoaderOptions {
}
	-(BOOL) clickToExpandRequested;
	-(void) setClickToExpandRequested:(BOOL)p0;
	-(BOOL) customControlsRequested;
	-(void) setCustomControlsRequested:(BOOL)p0;
	-(BOOL) startMuted;
	-(void) setStartMuted:(BOOL)p0;
	-(id) init;
@end

@protocol GADMediatedUnifiedNativeAd
	@required @property (nonatomic, assign, readonly) NSString * headline;
	@required @property (nonatomic, assign, readonly) NSArray * images;
	@required @property (nonatomic, assign, readonly) NSString * body;
	@required @property (nonatomic, assign, readonly) id icon;
	@required @property (nonatomic, assign, readonly) NSString * callToAction;
	@required @property (nonatomic, copy, readonly) NSDecimalNumber * starRating;
	@required @property (nonatomic, assign, readonly) NSString * store;
	@required @property (nonatomic, assign, readonly) NSString * price;
	@required @property (nonatomic, assign, readonly) NSString * advertiser;
	@required @property (nonatomic, copy, readonly) NSDictionary <NSString *, NSObject *>* extraAssets;
	@optional -(UIView *) adChoicesView;
	@optional -(UIView *) mediaView;
	@optional -(BOOL) hasVideoContent;
	@optional -(CGFloat) mediaContentAspectRatio;
	@optional -(double) duration;
	@optional -(double) currentTime;
	@optional -(void) didRenderInView:(UIView *)p0 clickableAssetViews:(NSDictionary <NSString *, UIView *>*)p1 nonclickableAssetViews:(NSDictionary <NSString *, UIView *>*)p2 viewController:(UIViewController *)p3;
	@optional -(void) didRecordImpression;
	@optional -(void) didRecordClickOnAssetWithName:(NSString *)p0 view:(UIView *)p1 viewController:(UIViewController *)p2;
	@optional -(void) didUntrackView:(UIView *)p0;
@end

@interface Enums__Google_MobileAds_Mediation_MediatedUnifiedNativeAd : NSObject<GADMediatedUnifiedNativeAd> {
}
	-(id) init;
@end

@protocol GAMBannerAdLoaderDelegate
	@required -(NSArray *) validBannerSizesForAdLoader:(id)p0;
	@required -(void) adLoader:(id)p0 didReceiveGAMBannerView:(id)p1;
@end

@interface Enums__Google_MobileAds_DoubleClick_BannerAdLoaderDelegate : NSObject<GAMBannerAdLoaderDelegate> {
}
	-(id) init;
@end

@interface GAMBannerViewOptions : GADAdLoaderOptions {
}
	-(id) adSizeDelegate;
	-(void) setAdSizeDelegate:(id)p0;
	-(id) appEventDelegate;
	-(void) setAppEventDelegate:(id)p0;
	-(BOOL) enableManualImpressions;
	-(void) setEnableManualImpressions:(BOOL)p0;
	-(id) init;
@end

@interface GAMRequest : GADRequest {
}
	-(NSArray *) categoryExclusions;
	-(void) setCategoryExclusions:(NSArray *)p0;
	-(NSDictionary <NSString *, NSString *>*) customTargeting;
	-(void) setCustomTargeting:(NSDictionary <NSString *, NSString *>*)p0;
	-(NSString *) publisherProvidedID;
	-(void) setPublisherProvidedID:(NSString *)p0;
	-(id) init;
@end

@interface Google_MobileAds_CustomNativeAd_CustomNativeAdAppearance : UIKit_UIView_UIViewAppearance {
}
@end

@interface GADCustomNativeAd : UIView {
}
	-(id) imageForKey:(NSString *)p0;
	-(void) performClickOnAssetWithKey:(NSString *)p0;
	-(void) recordImpression;
	-(NSString *) stringForKey:(NSString *)p0;
	-(NSArray *) availableAssetKeys;
	-(id) customClickHandler;
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(id) displayAdMeasurement;
	-(NSString *) formatID;
	-(id) mediaContent;
	-(id) responseInfo;
	-(UIViewController *) rootViewController;
	-(void) setRootViewController:(UIViewController *)p0;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@interface Google_MobileAds_AdChoicesView_AdChoicesViewAppearance : UIKit_UIView_UIViewAppearance {
}
@end

@interface GADAdChoicesView : UIView {
}
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@interface GADAppOpenAd : NSObject {
}
	-(BOOL) canPresentFromRootViewController:(UIViewController *)p0 error:(NSError **)p1;
	-(void) presentFromRootViewController:(UIViewController *)p0;
	-(id) paidEventHandler;
	-(void) setPaidEventHandler:(void (^)(id))p0;
	-(id) responseInfo;
@end

@interface GADAudioVideoManager : NSObject {
}
	-(BOOL) audioSessionIsApplicationManaged;
	-(void) setAudioSessionIsApplicationManaged:(BOOL)p0;
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(id) init;
@end

@interface Google_MobileAds_BannerView_BannerViewAppearance : UIKit_UIView_UIViewAppearance {
}
@end

@interface GADBannerView : UIView {
}
	-(void) loadRequest:(id)p0;
	-(struct trampoline_struct_ddi) adSize;
	-(void) setAdSize:(struct trampoline_struct_ddi)p0;
	-(id) adSizeDelegate;
	-(void) setAdSizeDelegate:(id)p0;
	-(NSString *) adUnitID;
	-(void) setAdUnitID:(NSString *)p0;
	-(BOOL) isAutoloadEnabled;
	-(void) setAutoloadEnabled:(BOOL)p0;
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(id) paidEventHandler;
	-(void) setPaidEventHandler:(void (^)(id))p0;
	-(id) responseInfo;
	-(UIViewController *) rootViewController;
	-(void) setRootViewController:(UIViewController *)p0;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
	-(id) initWithAdSize:(struct trampoline_struct_ddi)p0 origin:(CGPoint)p1;
	-(id) initWithAdSize:(struct trampoline_struct_ddi)p0;
@end

@interface GADInterstitialAd : NSObject {
}
	-(BOOL) canPresentFromRootViewController:(UIViewController *)p0 error:(NSError **)p1;
	-(void) presentFromRootViewController:(UIViewController *)p0;
	-(NSString *) adUnitID;
	-(id) paidEventHandler;
	-(void) setPaidEventHandler:(void (^)(id))p0;
	-(id) responseInfo;
@end

@interface Google_MobileAds_MediaView_MediaViewAppearance : UIKit_UIView_UIViewAppearance {
}
@end

@interface GADMediaView : UIView {
}
	-(id) mediaContent;
	-(void) setMediaContent:(id)p0;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@interface GADMobileAds : NSObject {
}
	-(void) disableMediationInitialization;
	-(void) disableSDKCrashReporting;
	-(BOOL) isSDKVersionAtLeastMajor:(NSInteger)p0 minor:(NSInteger)p1 patch:(NSInteger)p2;
	-(void) presentAdInspectorFromViewController:(UIViewController *)p0 viewController:(void (^)(id))p1;
	-(void) startWithCompletionHandler:(void (^)(id))p0;
	-(BOOL) applicationMuted;
	-(void) setApplicationMuted:(BOOL)p0;
	-(float) applicationVolume;
	-(void) setApplicationVolume:(float)p0;
	-(id) audioVideoManager;
	-(id) initializationStatus;
	-(id) requestConfiguration;
	-(NSString *) sdkVersion;
@end

@interface GADNativeAd : NSObject {
}
	-(void) cancelUnconfirmedClick;
	-(void) enableCustomClickGestures;
	-(void) muteThisAdWithReason:(id)p0;
	-(void) recordCustomClickGesture;
	-(void) registerAdView:(UIView *)p0 clickableAssetViews:(NSDictionary <NSString *, UIView *>*)p1 nonclickableAssetViews:(NSDictionary <NSString *, UIView *>*)p2;
	-(void) registerClickConfirmingView:(UIView *)p0;
	-(void) unregisterAdView;
	-(NSString *) advertiser;
	-(NSString *) body;
	-(NSString *) callToAction;
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(NSDictionary <NSString *, NSObject *>*) extraAssets;
	-(id) icon;
	-(NSArray *) images;
	-(BOOL) isCustomMuteThisAdAvailable;
	-(id) mediaContent;
	-(NSArray *) muteThisAdReasons;
	-(id) paidEventHandler;
	-(void) setPaidEventHandler:(void (^)(id))p0;
	-(NSString *) price;
	-(id) responseInfo;
	-(UIViewController *) rootViewController;
	-(void) setRootViewController:(UIViewController *)p0;
	-(NSDecimalNumber *) starRating;
	-(NSString *) store;
	-(id) unconfirmedClickDelegate;
	-(void) setUnconfirmedClickDelegate:(id)p0;
	-(id) init;
@end

@interface Google_MobileAds_NativeAdView_NativeAdViewAppearance : UIKit_UIView_UIViewAppearance {
}
@end

@interface GADNativeAdView : UIView {
}
	-(id) adChoicesView;
	-(void) setAdChoicesView:(id)p0;
	-(UIView *) advertiserView;
	-(void) setAdvertiserView:(UIView *)p0;
	-(UIView *) bodyView;
	-(void) setBodyView:(UIView *)p0;
	-(UIView *) callToActionView;
	-(void) setCallToActionView:(UIView *)p0;
	-(UIView *) headlineView;
	-(void) setHeadlineView:(UIView *)p0;
	-(UIView *) iconView;
	-(void) setIconView:(UIView *)p0;
	-(UIView *) imageView;
	-(void) setImageView:(UIView *)p0;
	-(id) mediaView;
	-(void) setMediaView:(id)p0;
	-(id) nativeAd;
	-(void) setNativeAd:(id)p0;
	-(UIView *) priceView;
	-(void) setPriceView:(UIView *)p0;
	-(UIView *) starRatingView;
	-(void) setStarRatingView:(UIView *)p0;
	-(UIView *) storeView;
	-(void) setStoreView:(UIView *)p0;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
	-(id) initWithFrame:(CGRect)p0;
@end

@interface GADRewardedAd : NSObject {
}
	-(BOOL) canPresentFromRootViewController:(UIViewController *)p0 error:(NSError **)p1;
	-(void) presentFromRootViewController:(UIViewController *)p0 userDidEarnRewardHandler:(void (^)())p1;
	-(NSDictionary <NSString *, NSObject *>*) adMetadata;
	-(id) adMetadataDelegate;
	-(void) setAdMetadataDelegate:(id)p0;
	-(id) adReward;
	-(NSString *) adUnitID;
	-(id) paidEventHandler;
	-(void) setPaidEventHandler:(void (^)(id))p0;
	-(id) responseInfo;
	-(id) serverSideVerificationOptions;
	-(void) setServerSideVerificationOptions:(id)p0;
	-(id) init;
@end

@interface GADRewardedInterstitialAd : NSObject {
}
	-(BOOL) canPresentFromRootViewController:(UIViewController *)p0 error:(NSError **)p1;
	-(void) presentFromRootViewController:(UIViewController *)p0 delegate:(id)p1;
	-(NSDictionary <NSString *, NSObject *>*) adMetadata;
	-(id) adMetadataDelegate;
	-(void) setAdMetadataDelegate:(id)p0;
	-(NSString *) adUnitID;
	-(id) paidEventHandler;
	-(void) setPaidEventHandler:(void (^)(id))p0;
	-(id) responseInfo;
	-(id) reward;
	-(id) serverSideVerificationOptions;
	-(void) setServerSideVerificationOptions:(id)p0;
	-(id) init;
@end

@interface Google_MobileAds_SearchBannerView_SearchBannerViewAppearance : Google_MobileAds_BannerView_BannerViewAppearance {
}
@end

@interface GADSearchBannerView : GADBannerView {
}
	-(id) adSizeDelegate;
	-(void) setAdSizeDelegate:(id)p0;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
	-(id) initWithFrame:(CGRect)p0;
	-(id) initWithAdSize:(struct trampoline_struct_ddi)p0 origin:(CGPoint)p1;
	-(id) initWithAdSize:(struct trampoline_struct_ddi)p0;
@end

@interface GADVideoController : NSObject {
}
	-(void) pause;
	-(void) play;
	-(void) setMute:(BOOL)p0;
	-(void) stop;
	-(id) delegate;
	-(void) setDelegate:(id)p0;
	-(BOOL) clickToExpandEnabled;
	-(BOOL) customControlsEnabled;
	-(id) init;
@end

@interface Google_MobileAds_DoubleClick_BannerView_BannerViewAppearance : Google_MobileAds_BannerView_BannerViewAppearance {
}
@end

@interface GAMBannerView : GADBannerView {
}
	-(void) recordImpression;
	-(void) resize:(struct trampoline_struct_ddi)p0;
	-(void) setAdOptions:(NSArray *)p0;
	-(void) setValidAdSizesWithSizes:(struct trampoline_struct_ddi)p0, ...;
	-(id) adSizeDelegate;
	-(void) setAdSizeDelegate:(id)p0;
	-(NSString *) adUnitID;
	-(void) setAdUnitID:(NSString *)p0;
	-(id) appEventDelegate;
	-(void) setAppEventDelegate:(id)p0;
	-(BOOL) enableManualImpressions;
	-(void) setEnableManualImpressions:(BOOL)p0;
	-(NSArray *) validAdSizes;
	-(void) setValidAdSizes:(NSArray *)p0;
	-(id) videoController;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
	-(id) initWithFrame:(CGRect)p0;
	-(id) initWithAdSize:(struct trampoline_struct_ddi)p0 origin:(CGPoint)p1;
	-(id) initWithAdSize:(struct trampoline_struct_ddi)p0;
@end

@interface GAMInterstitialAd : GADInterstitialAd {
}
	-(id) appEventDelegate;
	-(void) setAppEventDelegate:(id)p0;
@end

@interface FIRApp : NSObject {
}
	-(void) deleteApp:(void (^)(BOOL))p0;
	-(BOOL) isDataCollectionDefaultEnabled;
	-(void) setDataCollectionDefaultEnabled:(BOOL)p0;
	-(NSString *) name;
	-(id) options;
@end

@interface FIRConfiguration : NSObject {
}
	-(void) setLoggerLevel:(NSInteger)p0;
@end

@interface FIROptions : NSObject {
}
	-(NSObject *) copyWithZone:(id)p0;
	-(NSString *) androidClientID;
	-(void) setAndroidClientID:(NSString *)p0;
	-(NSString *) APIKey;
	-(void) setAPIKey:(NSString *)p0;
	-(NSString *) appGroupID;
	-(void) setAppGroupID:(NSString *)p0;
	-(NSString *) bundleID;
	-(void) setBundleID:(NSString *)p0;
	-(NSString *) clientID;
	-(void) setClientID:(NSString *)p0;
	-(NSString *) databaseURL;
	-(void) setDatabaseURL:(NSString *)p0;
	-(NSString *) deepLinkURLScheme;
	-(void) setDeepLinkURLScheme:(NSString *)p0;
	-(NSString *) GCMSenderID;
	-(void) setGCMSenderID:(NSString *)p0;
	-(NSString *) googleAppID;
	-(void) setGoogleAppID:(NSString *)p0;
	-(NSString *) projectID;
	-(void) setProjectID:(NSString *)p0;
	-(NSString *) storageBucket;
	-(void) setStorageBucket:(NSString *)p0;
	-(NSString *) trackingID;
	-(void) setTrackingID:(NSString *)p0;
	-(id) initWithContentsOfFile:(NSString *)p0;
	-(id) initWithGoogleAppID:(NSString *)p0 GCMSenderID:(NSString *)p1;
@end


