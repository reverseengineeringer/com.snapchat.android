import android.content.Context;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.ScAcceptTermsActivity;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.SnapkidzSettingsActivity;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CashEventAnalytics_Factory;
import com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry;
import com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry_Factory;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric_MembersInjector;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform;
import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.analytics.framework.UserActionTracePlatform;
import com.snapchat.android.api2.ApiTaskFactory_Factory;
import com.snapchat.android.api2.cash.CashErrorReporter_Factory;
import com.snapchat.android.api2.cash.ScProvider_Factory;
import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment;
import com.snapchat.android.camera.BackgroundCameraFragment;
import com.snapchat.android.camera.BaseCameraFragment;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.CameraModel_Factory;
import com.snapchat.android.camera.model.FlashModel_Factory;
import com.snapchat.android.camera.model.VideoRecordingModel_Factory;
import com.snapchat.android.camera.model.ZoomModel_Factory;
import com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder_Factory;
import com.snapchat.android.camera.videocamera.ScCamcorderProfileProvider_Factory;
import com.snapchat.android.camera.videocamera.VideoCameraHandler;
import com.snapchat.android.cash.CashtagParser_Factory;
import com.snapchat.android.database.table.UpdateSnapsAnalyticsTable;
import com.snapchat.android.deeplink.DeepLinkParser_Factory;
import com.snapchat.android.fragments.cash.CashSettingsFragment;
import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.fragments.sendto.SendToFragment;
import com.snapchat.android.fragments.settings.DeveloperSettingsFragment;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.fragments.signup.LoginFragment;
import com.snapchat.android.fragments.signup.SignupFragment;
import com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment;
import com.snapchat.android.fragments.stories.StoriesAdapter;
import com.snapchat.android.fragments.stories.StoriesFragment;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.cash.CardNumberEditText;
import com.snapchat.android.util.DebitCardNumberValidator_Factory;
import com.snapchat.android.util.chat.SecureChatSession;
import com.snapchat.android.util.crypto.SlightlySecurePreferences_Factory;
import com.snapchat.android.util.debug.BugReportActivity;
import com.snapchat.android.util.debug.ExceptionReporter_Factory;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.system.Clock_Factory;
import javax.inject.Provider;

public final class azb
  implements aza
{
  private buj<rz> acceptTermsTaskMembersInjector;
  private buj<afa> addFriendsAdapterMembersInjector;
  private Provider<AnalyticsPlatformRegistry> analyticsPlatformRegistryProvider;
  private Provider<bac> anrReporterProvider;
  private buj<BackgroundCameraFragment> backgroundCameraFragmentMembersInjector;
  private buj<BaseCameraFragment> baseCameraFragmentMembersInjector;
  private buj<qd> blockerManagerMembersInjector;
  private Provider<qd> blockerManagerProvider;
  private buj<ain> broadcastSnapMembersInjector;
  private buj<BugReportActivity> bugReportActivityMembersInjector;
  private buj<CameraEventAnalytics> cameraEventAnalyticsMembersInjector;
  private buj<CameraFragment> cameraFragmentMembersInjector;
  private Provider<CameraModel> cameraModelProvider;
  private buj<CardNumberEditText> cardNumberEditTextMembersInjector;
  private buj<xn> cashAuthManagerMembersInjector;
  private Provider<xn> cashAuthManagerProvider;
  private buj<xr> cashCardManagerMembersInjector;
  private Provider<xr> cashCardManagerProvider;
  private Provider<qg> cashErrorReporterProvider;
  private Provider<mz> cashEventAnalyticsProvider;
  private buj<qh> cashProviderManagerMembersInjector;
  private Provider<qh> cashProviderManagerProvider;
  private buj<CashSettingsFragment> cashSettingsFragmentMembersInjector;
  private buj<axu> cbcKeyAndIvWrapperMembersInjector;
  private buj<axx> cbcSlightlySecurePreferencesMembersInjector;
  private buj<afr> chatConversationAdapterMembersInjector;
  private buj<ChatConversation> chatConversationMembersInjector;
  private buj<ChatFragment> chatFragmentMembersInjector;
  private buj<yj> chatMessageReleaserMembersInjector;
  private buj<afy> chatWithAdapterMembersInjector;
  private buj<bgl> clockProviderMembersInjector;
  private final tk com_snapchat_android_api2_framework_Proxy = new tk();
  private buj<sa> confirmPaymentTaskMembersInjector;
  private buj<abk> dSnapMediaCompressorMembersInjector;
  private buj<abm> dSnapMediaExtractorMembersInjector;
  private buj<vt> defaultFlashControllerImplMembersInjector;
  private Provider<wn> defaultVideoResolutionProvider;
  private buj<wn> defaultVideoResolutionProviderMembersInjector;
  private buj<sb> deleteCashPaymentTaskMembersInjector;
  private buj<DeveloperSettingsFragment> developerSettingsFragmentMembersInjector;
  private Provider<aya> deviceTokenManagerProvider;
  private buj<EasyMetric> easyMetricMembersInjector;
  private Provider<tl> entityFactoryProvider;
  private buj<ErrorMetric> errorMetricMembersInjector;
  private buj<agd> feedAdapterMembersInjector;
  private buj<FeedFragment> feedFragmentMembersInjector;
  private Provider<wj> flashModelProvider;
  private Provider<azp> gracefulExceptionHandlerProvider;
  private Provider<ato> gsonWrapperProvider;
  private Provider<zq> hasSeenOurCampusStoryDialogLogProvider;
  private Provider<zs> hasSeenPostToOurStoryDialogLogProvider;
  private buj<tt> hyperRequestDependencyProviderMembersInjector;
  private buj<sc> initiateCashPaymentTaskMembersInjector;
  private buj<LandingPageActivity> landingPageActivityMembersInjector;
  private buj<sd> linkCardTaskMembersInjector;
  private buj<se> linkPhoneNumberTaskMembersInjector;
  private buj<LoginAndSignupActivity> loginAndSignupActivityMembersInjector;
  private buj<LoginFragment> loginFragmentMembersInjector;
  private buj<amh> logoutOperationMembersInjector;
  private Provider<ud> okHttpNetworkInterfaceProvider;
  private buj<qy> phoneNumberBlockerMembersInjector;
  private Provider<mj> provideAdManagerProvider;
  private Provider<bkz> provideAnrDetectorProvider;
  private Provider<Context> provideApplicationContextProvider;
  private Provider<azi> provideCrashSamplerProvider;
  private Provider<azn> provideDeveloperSettingsProvider;
  private Provider<ws> provideDeviceVideoEncodingResolutionSetProvider;
  private Provider<aeg> provideDiscoverBrandIconProvider;
  private Provider<aby> provideDiscoverMediaManagerProvider;
  private Provider<adj> provideDiscoverRepositoryProvider;
  private Provider<FlurryAnalyticsPlatform> provideFlurryAnalyticsProvider;
  private Provider<apd> providePooledInflaterProvider;
  private Provider<ReleaseManager> provideReleaseManagerProvider;
  private Provider<ov> provideScreenDimensionProvider;
  private Provider<aol> provideSnapchatServiceManagerProvider;
  private Provider<UpdateSnapsAnalyticsPlatform> provideUpdateSnapsAnalyticsProvider;
  private Provider<UserActionTracePlatform> provideUserActionTracePlatformProvider;
  private Provider<ajw> provideUserDatabaseLoaderProvider;
  private buj<aje> receivedSnapMembersInjector;
  private buj<xx> receivingCashManagerMembersInjector;
  private Provider<xx> receivingCashManagerProvider;
  private buj<yo> receivingMailmanMembersInjector;
  private buj<agb> releaseWindowMembersInjector;
  private buj<ot> requestTaskMembersInjector;
  private buj<sf> retrieveCashCustomerStatusTaskMembersInjector;
  private buj<sg> retrieveCashPaymentTaskMembersInjector;
  private buj<rd> sQAcceptTermsBlockerMembersInjector;
  private buj<rf> sQAccessTokenBlockerMembersInjector;
  private buj<rh> sQCardFormBlockerMembersInjector;
  private buj<rj> sQConfirmBlockerMembersInjector;
  private buj<rl> sQConflictBlockerMembersInjector;
  private buj<rn> sQInitiatePaymentBlockerMembersInjector;
  private buj<rq> sQPhoneNumberBlockerMembersInjector;
  private buj<rt> sQRetrieveSendingCashPaymentBlockerMembersInjector;
  private buj<rv> sQUnlinkCardBlockerMembersInjector;
  private buj<ScAcceptTermsActivity> scAcceptTermsActivityMembersInjector;
  private buj<SecureChatSession> secureChatSessionMembersInjector;
  private buj<agg> sendToAdapterMembersInjector;
  private buj<SendToFragment> sendToFragmentMembersInjector;
  private buj<ya> sendingCashManagerMembersInjector;
  private Provider<ya> sendingCashManagerProvider;
  private buj<yq> sendingMailmanMembersInjector;
  private buj<SignupFragment> signupFragmentMembersInjector;
  private Provider<ayg> slightlySecurePreferencesProvider;
  private buj<bdk> snapEventBusMembersInjector;
  private buj<aup> snapListItemHandlerMembersInjector;
  private buj<anh> snapPreviewPostToStoryAdapterMembersInjector;
  private buj<SnapchatActivity> snapchatActivityMembersInjector;
  private buj<SnapchatApplication> snapchatApplicationMembersInjector;
  private buj<SnapchatCameraBackgroundActivity> snapchatCameraBackgroundActivityMembersInjector;
  private buj<SnapkidzHomeActivity> snapkidzHomeActivityMembersInjector;
  private buj<SnapkidzSettingsActivity> snapkidzSettingsActivityMembersInjector;
  private buj<sh<sd.b>> squareBlockerRequestTaskMembersInjector;
  private buj<sh<si>> squareBlockerRequestTaskMembersInjector1;
  private buj<sl> squareCashPaymentTaskMembersInjector;
  private Provider<uj> squareOkHttpClientFactoryProvider;
  private Provider<sn> squareProvider;
  private buj<sn> squareProviderMembersInjector;
  private buj<sq> squareRequestTaskMembersInjector;
  private buj<StoriesAdapter> storiesAdapterMembersInjector;
  private buj<StoriesFragment> storiesFragmentMembersInjector;
  private buj<ajr> storySnapMembersInjector;
  private Provider<azx> strictModeHelperProvider;
  private buj<vw> takePhotoControllerMembersInjector;
  private Provider<vw> takePhotoControllerProvider;
  private buj<TransactionHistoryFragment> transactionHistoryFragmentMembersInjector;
  private buj<oh> transcodingTaskMetricsMembersInjector;
  private buj<TwoFactorCodeVerificationFragment> twoFactorCodeVerificationFragmentMembersInjector;
  private buj<ss> unlinkCardTaskMembersInjector;
  private buj<UpdateSnapsAnalyticsTable> updateSnapsAnalyticsTableMembersInjector;
  private buj<amq> updateSnapsOperationMembersInjector;
  private buj<su> updateSquareSettingsTaskMembersInjector;
  private buj<ajv> userMembersInjector;
  private buj<rb> validateTransactionBlockerMembersInjector;
  private buj<VideoCameraHandler> videoCameraHandlerMembersInjector;
  private buj<vz> videoRecordingControllerMembersInjector;
  private Provider<vz> videoRecordingControllerProvider;
  private Provider<wk> videoRecordingModelProvider;
  private buj<WebFragment> webFragmentMembersInjector;
  
  static
  {
    if (!azb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private azb(azb.a parama)
  {
    assert (parama != null);
    slightlySecurePreferencesProvider = buq.a(SlightlySecurePreferences_Factory.create());
    provideReleaseManagerProvider = ayu.a(androidModule);
    strictModeHelperProvider = azy.a(provideReleaseManagerProvider);
    provideAdManagerProvider = buq.a(aym.a(androidModule));
    provideDiscoverRepositoryProvider = buq.a(azf.a(discoverModule));
    provideDiscoverMediaManagerProvider = buq.a(aze.a(discoverModule));
    provideScreenDimensionProvider = buq.a(ayv.a(androidModule));
    provideDeviceVideoEncodingResolutionSetProvider = ayr.a(androidModule);
    provideDeveloperSettingsProvider = buq.a(ayq.a(androidModule));
    provideSnapchatServiceManagerProvider = buq.a(ayw.a(androidModule));
    provideDiscoverBrandIconProvider = buq.a(azd.a(discoverModule));
    snapchatApplicationMembersInjector = mg.a(bup.a.a, slightlySecurePreferencesProvider, provideReleaseManagerProvider, strictModeHelperProvider, provideAdManagerProvider, provideDiscoverRepositoryProvider, provideDiscoverMediaManagerProvider, provideScreenDimensionProvider, provideDeviceVideoEncodingResolutionSetProvider, provideDeveloperSettingsProvider, provideSnapchatServiceManagerProvider, provideDiscoverBrandIconProvider);
    provideCrashSamplerProvider = ayp.a(androidModule);
    gracefulExceptionHandlerProvider = azq.a(provideCrashSamplerProvider, provideReleaseManagerProvider);
    gsonWrapperProvider = buq.a(atp.a(gracefulExceptionHandlerProvider));
    cashAuthManagerMembersInjector = xp.a(slightlySecurePreferencesProvider, gsonWrapperProvider);
    cashCardManagerMembersInjector = xt.a(slightlySecurePreferencesProvider);
    cashErrorReporterProvider = buq.a(CashErrorReporter_Factory.create());
    squareProviderMembersInjector = sp.a(cashErrorReporterProvider);
    squareProvider = buq.a(so.a(squareProviderMembersInjector));
    cashProviderManagerMembersInjector = qj.a(ScProvider_Factory.create(), squareProvider);
    cashProviderManagerProvider = buq.a(qi.a(cashProviderManagerMembersInjector));
    blockerManagerMembersInjector = qf.a(cashProviderManagerProvider);
    blockerManagerProvider = buq.a(qe.a(blockerManagerMembersInjector));
    receivingCashManagerMembersInjector = xz.a(cashProviderManagerProvider, blockerManagerProvider);
    provideUpdateSnapsAnalyticsProvider = buq.a(ayx.a(androidModule));
    provideFlurryAnalyticsProvider = buq.a(ays.a(androidModule));
    provideUserActionTracePlatformProvider = buq.a(ayy.a(androidModule));
    analyticsPlatformRegistryProvider = AnalyticsPlatformRegistry_Factory.a(provideUpdateSnapsAnalyticsProvider, provideFlurryAnalyticsProvider, provideUserActionTracePlatformProvider);
    provideAnrDetectorProvider = ayn.a(androidModule);
    provideApplicationContextProvider = buq.a(ayo.a(androidModule));
    anrReporterProvider = bad.a(provideCrashSamplerProvider, provideAnrDetectorProvider, provideReleaseManagerProvider, gracefulExceptionHandlerProvider, provideApplicationContextProvider);
    snapchatActivityMembersInjector = mf.a(bup.a.a, analyticsPlatformRegistryProvider, provideCrashSamplerProvider, anrReporterProvider);
    providePooledInflaterProvider = buq.a(ayt.a(androidModule));
    landingPageActivityMembersInjector = mb.a(snapchatActivityMembersInjector, DeepLinkParser_Factory.create(), providePooledInflaterProvider);
    snapkidzHomeActivityMembersInjector = snapchatActivityMembersInjector;
    snapkidzSettingsActivityMembersInjector = snapchatActivityMembersInjector;
    provideUserDatabaseLoaderProvider = ayz.a(androidModule);
    userMembersInjector = ajy.a(slightlySecurePreferencesProvider, cashProviderManagerProvider, provideUserDatabaseLoaderProvider);
    cashEventAnalyticsProvider = buq.a(CashEventAnalytics_Factory.create());
    sendingCashManagerMembersInjector = yc.a(blockerManagerProvider, cashEventAnalyticsProvider);
    sendingCashManagerProvider = buq.a(yb.a(sendingCashManagerMembersInjector));
    chatConversationMembersInjector = akd.a(slightlySecurePreferencesProvider, sendingCashManagerProvider, gsonWrapperProvider);
    easyMetricMembersInjector = EasyMetric_MembersInjector.a(provideUpdateSnapsAnalyticsProvider, provideFlurryAnalyticsProvider, provideUserActionTracePlatformProvider);
    errorMetricMembersInjector = easyMetricMembersInjector;
    cameraModelProvider = buq.a(CameraModel_Factory.create());
    baseCameraFragmentMembersInjector = vi.a(bup.a.a, cameraModelProvider, VideoRecordingSizeFinder_Factory.create());
    flashModelProvider = buq.a(FlashModel_Factory.create());
    takePhotoControllerMembersInjector = vy.a(flashModelProvider, cameraModelProvider);
    takePhotoControllerProvider = vx.a(takePhotoControllerMembersInjector);
    videoRecordingModelProvider = buq.a(VideoRecordingModel_Factory.create());
    defaultVideoResolutionProviderMembersInjector = wp.a(cameraModelProvider, VideoRecordingSizeFinder_Factory.create());
    defaultVideoResolutionProvider = wo.a(defaultVideoResolutionProviderMembersInjector);
    videoRecordingControllerMembersInjector = wb.a(videoRecordingModelProvider, cameraModelProvider, flashModelProvider, defaultVideoResolutionProvider);
    videoRecordingControllerProvider = wa.a(videoRecordingControllerMembersInjector);
    cameraFragmentMembersInjector = vj.a(baseCameraFragmentMembersInjector, takePhotoControllerProvider, videoRecordingControllerProvider, ZoomModel_Factory.create(), flashModelProvider, videoRecordingModelProvider, defaultVideoResolutionProvider, ExceptionReporter_Factory.create());
    backgroundCameraFragmentMembersInjector = vh.a(baseCameraFragmentMembersInjector, cameraModelProvider);
    updateSnapsAnalyticsTableMembersInjector = abe.a(bup.a.a, provideUpdateSnapsAnalyticsProvider);
    cbcSlightlySecurePreferencesMembersInjector = axy.a(slightlySecurePreferencesProvider, gsonWrapperProvider);
    snapchatCameraBackgroundActivityMembersInjector = snapchatActivityMembersInjector;
    loginAndSignupActivityMembersInjector = snapchatCameraBackgroundActivityMembersInjector;
    sendingMailmanMembersInjector = yr.a(sendingCashManagerProvider);
    storiesAdapterMembersInjector = agy.a(bup.a.a, ExceptionReporter_Factory.create());
    storiesFragmentMembersInjector = aha.a(bup.a.a, DeepLinkParser_Factory.create());
    addFriendsAdapterMembersInjector = afb.a(bup.a.a, ExceptionReporter_Factory.create());
    feedAdapterMembersInjector = age.a(bup.a.a, ExceptionReporter_Factory.create());
    feedFragmentMembersInjector = vd.a(bup.a.a, ExceptionReporter_Factory.create());
    receivingCashManagerProvider = buq.a(xy.a(receivingCashManagerMembersInjector));
    phoneNumberBlockerMembersInjector = qz.a(bup.a.a, receivingCashManagerProvider);
    sendToAdapterMembersInjector = agh.a(bup.a.a, ExceptionReporter_Factory.create());
    hasSeenPostToOurStoryDialogLogProvider = buq.a(zt.a(bup.a.a));
    sendToFragmentMembersInjector = agj.a(bup.a.a, hasSeenPostToOurStoryDialogLogProvider);
    receivedSnapMembersInjector = ajf.a(bup.a.a, Clock_Factory.create());
    storySnapMembersInjector = receivedSnapMembersInjector;
    broadcastSnapMembersInjector = receivedSnapMembersInjector;
    secureChatSessionMembersInjector = axr.a(gsonWrapperProvider);
    com_snapchat_android_api2_framework_Proxy.formEncodedJsonFieldMapperProvider = tp.a(bup.a.a, gsonWrapperProvider);
    com_snapchat_android_api2_framework_Proxy.multipartEncodedFieldMapperProvider = ua.a(bup.a.a);
    entityFactoryProvider = tm.a(com_snapchat_android_api2_framework_Proxy.formEncodedJsonFieldMapperProvider, com_snapchat_android_api2_framework_Proxy.multipartEncodedFieldMapperProvider, gsonWrapperProvider);
    okHttpNetworkInterfaceProvider = ue.a(entityFactoryProvider);
    hyperRequestDependencyProviderMembersInjector = tu.a(okHttpNetworkInterfaceProvider, gsonWrapperProvider);
    cbcKeyAndIvWrapperMembersInjector = axw.a(Clock_Factory.create());
    clockProviderMembersInjector = bgm.a(Clock_Factory.create());
    releaseWindowMembersInjector = agc.a(Clock_Factory.create());
    cashAuthManagerProvider = buq.a(xo.a(cashAuthManagerMembersInjector));
    squareOkHttpClientFactoryProvider = buq.a(uk.a(provideApplicationContextProvider));
    squareRequestTaskMembersInjector = sr.a(bup.a.a, cashAuthManagerProvider, squareOkHttpClientFactoryProvider, entityFactoryProvider);
    squareBlockerRequestTaskMembersInjector = squareRequestTaskMembersInjector;
    linkCardTaskMembersInjector = squareBlockerRequestTaskMembersInjector;
    squareBlockerRequestTaskMembersInjector1 = squareRequestTaskMembersInjector;
    linkPhoneNumberTaskMembersInjector = squareBlockerRequestTaskMembersInjector1;
    squareCashPaymentTaskMembersInjector = squareRequestTaskMembersInjector;
    initiateCashPaymentTaskMembersInjector = squareCashPaymentTaskMembersInjector;
    retrieveCashPaymentTaskMembersInjector = squareCashPaymentTaskMembersInjector;
    sQPhoneNumberBlockerMembersInjector = rr.a(bup.a.a, cashErrorReporterProvider);
    sQAccessTokenBlockerMembersInjector = rg.a(bup.a.a, cashAuthManagerProvider, cashErrorReporterProvider);
    cashCardManagerProvider = buq.a(xs.a(cashCardManagerMembersInjector));
    sQInitiatePaymentBlockerMembersInjector = ro.a(bup.a.a, squareProvider, cashCardManagerProvider, cashErrorReporterProvider);
    retrieveCashCustomerStatusTaskMembersInjector = squareRequestTaskMembersInjector;
    updateSquareSettingsTaskMembersInjector = squareRequestTaskMembersInjector;
    cashSettingsFragmentMembersInjector = afp.a(bup.a.a, cashProviderManagerProvider);
    acceptTermsTaskMembersInjector = squareBlockerRequestTaskMembersInjector1;
    chatConversationAdapterMembersInjector = afs.a(bup.a.a, receivingCashManagerProvider);
    confirmPaymentTaskMembersInjector = squareBlockerRequestTaskMembersInjector1;
    chatFragmentMembersInjector = afx.a(bup.a.a, CashtagParser_Factory.create(), sendingCashManagerProvider, receivingCashManagerProvider);
    defaultFlashControllerImplMembersInjector = vu.a(bup.a.a, cameraModelProvider);
    snapPreviewPostToStoryAdapterMembersInjector = ani.a(bup.a.a, hasSeenPostToOurStoryDialogLogProvider);
    unlinkCardTaskMembersInjector = st.a(squareRequestTaskMembersInjector, cashCardManagerProvider);
    receivingMailmanMembersInjector = yp.a(sendingCashManagerProvider);
    hasSeenOurCampusStoryDialogLogProvider = buq.a(zr.a(bup.a.a));
    snapListItemHandlerMembersInjector = auq.a(hasSeenOurCampusStoryDialogLogProvider);
    videoCameraHandlerMembersInjector = xj.a(bup.a.a, ScCamcorderProfileProvider_Factory.create(), cameraModelProvider, ExceptionReporter_Factory.create());
    deleteCashPaymentTaskMembersInjector = squareRequestTaskMembersInjector;
    webFragmentMembersInjector = agp.a(bup.a.a, gsonWrapperProvider);
    transactionHistoryFragmentMembersInjector = afq.a(webFragmentMembersInjector, cashAuthManagerProvider);
    sQConflictBlockerMembersInjector = rm.a(bup.a.a, cashCardManagerProvider);
    sQCardFormBlockerMembersInjector = ri.a(bup.a.a, cashCardManagerProvider, squareProvider);
    loginFragmentMembersInjector = ags.a(bup.a.a, slightlySecurePreferencesProvider);
    signupFragmentMembersInjector = agt.a(bup.a.a, slightlySecurePreferencesProvider);
    twoFactorCodeVerificationFragmentMembersInjector = agv.a(bup.a.a, slightlySecurePreferencesProvider);
    bugReportActivityMembersInjector = snapchatActivityMembersInjector;
    developerSettingsFragmentMembersInjector = ago.a(bup.a.a, cashAuthManagerProvider, cashCardManagerProvider);
    scAcceptTermsActivityMembersInjector = snapchatActivityMembersInjector;
    validateTransactionBlockerMembersInjector = rc.a(bup.a.a, cashErrorReporterProvider);
    sQRetrieveSendingCashPaymentBlockerMembersInjector = ru.a(bup.a.a, squareProvider, cashErrorReporterProvider);
    sQConfirmBlockerMembersInjector = rk.a(bup.a.a, cashErrorReporterProvider, squareProvider);
    sQAcceptTermsBlockerMembersInjector = re.a(bup.a.a, cashErrorReporterProvider);
    snapEventBusMembersInjector = bdl.a(bup.a.a, ExceptionReporter_Factory.create());
    cameraEventAnalyticsMembersInjector = my.a(cameraModelProvider, flashModelProvider);
    sQUnlinkCardBlockerMembersInjector = rw.a(bup.a.a, cashAuthManagerProvider);
    cardNumberEditTextMembersInjector = apt.a(bup.a.a, DebitCardNumberValidator_Factory.create());
    dSnapMediaCompressorMembersInjector = abl.a(gsonWrapperProvider);
    dSnapMediaExtractorMembersInjector = abn.a(gsonWrapperProvider);
    chatWithAdapterMembersInjector = afz.a(bup.a.a, ExceptionReporter_Factory.create());
    chatMessageReleaserMembersInjector = yk.a(sendingCashManagerProvider);
    transcodingTaskMetricsMembersInjector = easyMetricMembersInjector;
    updateSnapsOperationMembersInjector = amr.a(bup.a.a, provideUpdateSnapsAnalyticsProvider);
    logoutOperationMembersInjector = updateSnapsOperationMembersInjector;
    requestTaskMembersInjector = ou.a(bup.a.a, gsonWrapperProvider);
    deviceTokenManagerProvider = ayb.a(slightlySecurePreferencesProvider, gsonWrapperProvider, ApiTaskFactory_Factory.create(), provideDeveloperSettingsProvider);
  }
  
  public static azb.a d()
  {
    return new azb.a((byte)0);
  }
  
  public final aya a()
  {
    return (aya)deviceTokenManagerProvider.get();
  }
  
  public final void a(abk paramabk)
  {
    dSnapMediaCompressorMembersInjector.a(paramabk);
  }
  
  public final void a(abm paramabm)
  {
    dSnapMediaExtractorMembersInjector.a(paramabm);
  }
  
  public final void a(afa paramafa)
  {
    addFriendsAdapterMembersInjector.a(paramafa);
  }
  
  public final void a(afr paramafr)
  {
    chatConversationAdapterMembersInjector.a(paramafr);
  }
  
  public final void a(afy paramafy)
  {
    chatWithAdapterMembersInjector.a(paramafy);
  }
  
  public final void a(agb paramagb)
  {
    releaseWindowMembersInjector.a(paramagb);
  }
  
  public final void a(agd paramagd)
  {
    feedAdapterMembersInjector.a(paramagd);
  }
  
  public final void a(agg paramagg)
  {
    sendToAdapterMembersInjector.a(paramagg);
  }
  
  public final void a(ain paramain)
  {
    broadcastSnapMembersInjector.a(paramain);
  }
  
  public final void a(aje paramaje)
  {
    receivedSnapMembersInjector.a(paramaje);
  }
  
  public final void a(ajr paramajr)
  {
    storySnapMembersInjector.a(paramajr);
  }
  
  public final void a(ajv paramajv)
  {
    userMembersInjector.a(paramajv);
  }
  
  public final void a(amq paramamq)
  {
    updateSnapsOperationMembersInjector.a(paramamq);
  }
  
  public final void a(anh paramanh)
  {
    snapPreviewPostToStoryAdapterMembersInjector.a(paramanh);
  }
  
  public final void a(aup paramaup)
  {
    snapListItemHandlerMembersInjector.a(paramaup);
  }
  
  public final void a(axu paramaxu)
  {
    cbcKeyAndIvWrapperMembersInjector.a(paramaxu);
  }
  
  public final void a(axx paramaxx)
  {
    cbcSlightlySecurePreferencesMembersInjector.a(paramaxx);
  }
  
  public final void a(bdk parambdk)
  {
    snapEventBusMembersInjector.a(parambdk);
  }
  
  public final void a(bgl parambgl)
  {
    clockProviderMembersInjector.a(parambgl);
  }
  
  public final void a(LandingPageActivity paramLandingPageActivity)
  {
    landingPageActivityMembersInjector.a(paramLandingPageActivity);
  }
  
  public final void a(SnapchatActivity paramSnapchatActivity)
  {
    snapchatActivityMembersInjector.a(paramSnapchatActivity);
  }
  
  public final void a(SnapchatApplication paramSnapchatApplication)
  {
    snapchatApplicationMembersInjector.a(paramSnapchatApplication);
  }
  
  public final void a(CameraEventAnalytics paramCameraEventAnalytics)
  {
    cameraEventAnalyticsMembersInjector.a(paramCameraEventAnalytics);
  }
  
  public final void a(EasyMetric paramEasyMetric)
  {
    easyMetricMembersInjector.a(paramEasyMetric);
  }
  
  public final void a(FeedFragment paramFeedFragment)
  {
    feedFragmentMembersInjector.a(paramFeedFragment);
  }
  
  public final void a(BackgroundCameraFragment paramBackgroundCameraFragment)
  {
    backgroundCameraFragmentMembersInjector.a(paramBackgroundCameraFragment);
  }
  
  public final void a(BaseCameraFragment paramBaseCameraFragment)
  {
    baseCameraFragmentMembersInjector.a(paramBaseCameraFragment);
  }
  
  public final void a(CameraFragment paramCameraFragment)
  {
    cameraFragmentMembersInjector.a(paramCameraFragment);
  }
  
  public final void a(VideoCameraHandler paramVideoCameraHandler)
  {
    videoCameraHandlerMembersInjector.a(paramVideoCameraHandler);
  }
  
  public final void a(UpdateSnapsAnalyticsTable paramUpdateSnapsAnalyticsTable)
  {
    updateSnapsAnalyticsTableMembersInjector.a(paramUpdateSnapsAnalyticsTable);
  }
  
  public final void a(CashSettingsFragment paramCashSettingsFragment)
  {
    cashSettingsFragmentMembersInjector.a(paramCashSettingsFragment);
  }
  
  public final void a(TransactionHistoryFragment paramTransactionHistoryFragment)
  {
    transactionHistoryFragmentMembersInjector.a(paramTransactionHistoryFragment);
  }
  
  public final void a(ChatFragment paramChatFragment)
  {
    chatFragmentMembersInjector.a(paramChatFragment);
  }
  
  public final void a(SendToFragment paramSendToFragment)
  {
    sendToFragmentMembersInjector.a(paramSendToFragment);
  }
  
  public final void a(DeveloperSettingsFragment paramDeveloperSettingsFragment)
  {
    developerSettingsFragmentMembersInjector.a(paramDeveloperSettingsFragment);
  }
  
  public final void a(WebFragment paramWebFragment)
  {
    webFragmentMembersInjector.a(paramWebFragment);
  }
  
  public final void a(LoginFragment paramLoginFragment)
  {
    loginFragmentMembersInjector.a(paramLoginFragment);
  }
  
  public final void a(SignupFragment paramSignupFragment)
  {
    signupFragmentMembersInjector.a(paramSignupFragment);
  }
  
  public final void a(TwoFactorCodeVerificationFragment paramTwoFactorCodeVerificationFragment)
  {
    twoFactorCodeVerificationFragmentMembersInjector.a(paramTwoFactorCodeVerificationFragment);
  }
  
  public final void a(StoriesAdapter paramStoriesAdapter)
  {
    storiesAdapterMembersInjector.a(paramStoriesAdapter);
  }
  
  public final void a(StoriesFragment paramStoriesFragment)
  {
    storiesFragmentMembersInjector.a(paramStoriesFragment);
  }
  
  public final void a(ChatConversation paramChatConversation)
  {
    chatConversationMembersInjector.a(paramChatConversation);
  }
  
  public final void a(CardNumberEditText paramCardNumberEditText)
  {
    cardNumberEditTextMembersInjector.a(paramCardNumberEditText);
  }
  
  public final void a(SecureChatSession paramSecureChatSession)
  {
    secureChatSessionMembersInjector.a(paramSecureChatSession);
  }
  
  public final void a(ot paramot)
  {
    requestTaskMembersInjector.a(paramot);
  }
  
  public final void a(qd paramqd)
  {
    blockerManagerMembersInjector.a(paramqd);
  }
  
  public final void a(qh paramqh)
  {
    cashProviderManagerMembersInjector.a(paramqh);
  }
  
  public final void a(qy paramqy)
  {
    phoneNumberBlockerMembersInjector.a(paramqy);
  }
  
  public final void a(rb paramrb)
  {
    validateTransactionBlockerMembersInjector.a(paramrb);
  }
  
  public final void a(rd paramrd)
  {
    sQAcceptTermsBlockerMembersInjector.a(paramrd);
  }
  
  public final void a(rf paramrf)
  {
    sQAccessTokenBlockerMembersInjector.a(paramrf);
  }
  
  public final void a(rh paramrh)
  {
    sQCardFormBlockerMembersInjector.a(paramrh);
  }
  
  public final void a(rj paramrj)
  {
    sQConfirmBlockerMembersInjector.a(paramrj);
  }
  
  public final void a(rl paramrl)
  {
    sQConflictBlockerMembersInjector.a(paramrl);
  }
  
  public final void a(rn paramrn)
  {
    sQInitiatePaymentBlockerMembersInjector.a(paramrn);
  }
  
  public final void a(rq paramrq)
  {
    sQPhoneNumberBlockerMembersInjector.a(paramrq);
  }
  
  public final void a(rt paramrt)
  {
    sQRetrieveSendingCashPaymentBlockerMembersInjector.a(paramrt);
  }
  
  public final void a(rv paramrv)
  {
    sQUnlinkCardBlockerMembersInjector.a(paramrv);
  }
  
  public final void a(sn paramsn)
  {
    squareProviderMembersInjector.a(paramsn);
  }
  
  public final void a(sq paramsq)
  {
    squareRequestTaskMembersInjector.a(paramsq);
  }
  
  public final void a(ss paramss)
  {
    unlinkCardTaskMembersInjector.a(paramss);
  }
  
  public final void a(tt paramtt)
  {
    hyperRequestDependencyProviderMembersInjector.a(paramtt);
  }
  
  public final void a(vt paramvt)
  {
    defaultFlashControllerImplMembersInjector.a(paramvt);
  }
  
  public final void a(vw paramvw)
  {
    takePhotoControllerMembersInjector.a(paramvw);
  }
  
  public final void a(vz paramvz)
  {
    videoRecordingControllerMembersInjector.a(paramvz);
  }
  
  public final void a(wn paramwn)
  {
    defaultVideoResolutionProviderMembersInjector.a(paramwn);
  }
  
  public final void a(xn paramxn)
  {
    cashAuthManagerMembersInjector.a(paramxn);
  }
  
  public final void a(xr paramxr)
  {
    cashCardManagerMembersInjector.a(paramxr);
  }
  
  public final void a(xx paramxx)
  {
    receivingCashManagerMembersInjector.a(paramxx);
  }
  
  public final void a(yj paramyj)
  {
    chatMessageReleaserMembersInjector.a(paramyj);
  }
  
  public final void a(yo paramyo)
  {
    receivingMailmanMembersInjector.a(paramyo);
  }
  
  public final void a(yq paramyq)
  {
    sendingMailmanMembersInjector.a(paramyq);
  }
  
  public final zq b()
  {
    return (zq)hasSeenOurCampusStoryDialogLogProvider.get();
  }
  
  public final zs c()
  {
    return (zs)hasSeenPostToOurStoryDialogLogProvider.get();
  }
  
  public static final class a
  {
    public ayl androidModule;
    public azc discoverModule;
  }
}

/* Location:
 * Qualified Name:     azb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */