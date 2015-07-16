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

public final class azz
  implements azy
{
  private bvk<sp> acceptTermsTaskMembersInjector;
  private bvk<aga> addFriendsAdapterMembersInjector;
  private Provider<AnalyticsPlatformRegistry> analyticsPlatformRegistryProvider;
  private Provider<bbc> anrReporterProvider;
  private bvk<BackgroundCameraFragment> backgroundCameraFragmentMembersInjector;
  private bvk<BaseCameraFragment> baseCameraFragmentMembersInjector;
  private bvk<qt> blockerManagerMembersInjector;
  private Provider<qt> blockerManagerProvider;
  private bvk<ajj> broadcastSnapMembersInjector;
  private bvk<BugReportActivity> bugReportActivityMembersInjector;
  private bvk<CameraEventAnalytics> cameraEventAnalyticsMembersInjector;
  private bvk<CameraFragment> cameraFragmentMembersInjector;
  private Provider<CameraModel> cameraModelProvider;
  private bvk<CardNumberEditText> cardNumberEditTextMembersInjector;
  private bvk<yj> cashAuthManagerMembersInjector;
  private Provider<yj> cashAuthManagerProvider;
  private bvk<yn> cashCardManagerMembersInjector;
  private Provider<yn> cashCardManagerProvider;
  private Provider<qw> cashErrorReporterProvider;
  private Provider<nq> cashEventAnalyticsProvider;
  private bvk<qx> cashProviderManagerMembersInjector;
  private Provider<qx> cashProviderManagerProvider;
  private bvk<CashSettingsFragment> cashSettingsFragmentMembersInjector;
  private bvk<ays> cbcKeyAndIvWrapperMembersInjector;
  private bvk<ayv> cbcSlightlySecurePreferencesMembersInjector;
  private bvk<agr> chatConversationAdapterMembersInjector;
  private bvk<ChatConversation> chatConversationMembersInjector;
  private bvk<ChatFragment> chatFragmentMembersInjector;
  private bvk<zf> chatMessageReleaserMembersInjector;
  private bvk<agy> chatWithAdapterMembersInjector;
  private bvk<bhl> clockProviderMembersInjector;
  private final ua com_snapchat_android_api2_framework_Proxy = new ua();
  private bvk<sq> confirmPaymentTaskMembersInjector;
  private bvk<ack> dSnapMediaCompressorMembersInjector;
  private bvk<acm> dSnapMediaExtractorMembersInjector;
  private bvk<wp> defaultFlashControllerImplMembersInjector;
  private Provider<xj> defaultVideoResolutionProvider;
  private bvk<xj> defaultVideoResolutionProviderMembersInjector;
  private bvk<sr> deleteCashPaymentTaskMembersInjector;
  private bvk<DeveloperSettingsFragment> developerSettingsFragmentMembersInjector;
  private Provider<ayy> deviceTokenManagerProvider;
  private bvk<EasyMetric> easyMetricMembersInjector;
  private Provider<ub> entityFactoryProvider;
  private bvk<ErrorMetric> errorMetricMembersInjector;
  private bvk<FeedFragment> feedFragmentMembersInjector;
  private Provider<xf> flashModelProvider;
  private Provider<bao> gracefulExceptionHandlerProvider;
  private Provider<aum> gsonWrapperProvider;
  private Provider<aaq> hasSeenOurCampusStoryDialogLogProvider;
  private Provider<aas> hasSeenPostToOurStoryDialogLogProvider;
  private bvk<uj> hyperRequestDependencyProviderMembersInjector;
  private bvk<ss> initiateCashPaymentTaskMembersInjector;
  private bvk<LandingPageActivity> landingPageActivityMembersInjector;
  private bvk<st> linkCardTaskMembersInjector;
  private bvk<su> linkPhoneNumberTaskMembersInjector;
  private bvk<LoginAndSignupActivity> loginAndSignupActivityMembersInjector;
  private bvk<LoginFragment> loginFragmentMembersInjector;
  private bvk<ane> logoutOperationMembersInjector;
  private Provider<ut> okHttpNetworkInterfaceProvider;
  private bvk<ro> phoneNumberBlockerMembersInjector;
  private Provider<na> provideAdManagerProvider;
  private Provider<bma> provideAnrDetectorProvider;
  private Provider<Context> provideApplicationContextProvider;
  private Provider<bah> provideCrashSamplerProvider;
  private Provider<bam> provideDeveloperSettingsProvider;
  private Provider<xv> provideDeviceVideoEncodingResolutionSetProvider;
  private Provider<afg> provideDiscoverBrandIconProvider;
  private Provider<acy> provideDiscoverMediaManagerProvider;
  private Provider<aej> provideDiscoverRepositoryProvider;
  private Provider<FlurryAnalyticsPlatform> provideFlurryAnalyticsProvider;
  private Provider<apz> providePooledInflaterProvider;
  private Provider<ReleaseManager> provideReleaseManagerProvider;
  private Provider<pm> provideScreenDimensionProvider;
  private Provider<aph> provideSnapchatServiceManagerProvider;
  private Provider<UpdateSnapsAnalyticsPlatform> provideUpdateSnapsAnalyticsProvider;
  private Provider<UserActionTracePlatform> provideUserActionTracePlatformProvider;
  private Provider<akq> provideUserDatabaseLoaderProvider;
  private bvk<aka> receivedSnapMembersInjector;
  private bvk<yt> receivingCashManagerMembersInjector;
  private Provider<yt> receivingCashManagerProvider;
  private bvk<zk> receivingMailmanMembersInjector;
  private bvk<ahb> releaseWindowMembersInjector;
  private bvk<pk> requestTaskMembersInjector;
  private bvk<sv> retrieveCashCustomerStatusTaskMembersInjector;
  private bvk<sw> retrieveCashPaymentTaskMembersInjector;
  private bvk<rt> sQAcceptTermsBlockerMembersInjector;
  private bvk<rv> sQAccessTokenBlockerMembersInjector;
  private bvk<rx> sQCardFormBlockerMembersInjector;
  private bvk<rz> sQConfirmBlockerMembersInjector;
  private bvk<sb> sQConflictBlockerMembersInjector;
  private bvk<sd> sQInitiatePaymentBlockerMembersInjector;
  private bvk<sg> sQPhoneNumberBlockerMembersInjector;
  private bvk<sj> sQRetrieveSendingCashPaymentBlockerMembersInjector;
  private bvk<sl> sQUnlinkCardBlockerMembersInjector;
  private bvk<ScAcceptTermsActivity> scAcceptTermsActivityMembersInjector;
  private bvk<SecureChatSession> secureChatSessionMembersInjector;
  private bvk<ahd> sendToAdapterMembersInjector;
  private bvk<SendToFragment> sendToFragmentMembersInjector;
  private bvk<yw> sendingCashManagerMembersInjector;
  private Provider<yw> sendingCashManagerProvider;
  private bvk<zm> sendingMailmanMembersInjector;
  private bvk<SignupFragment> signupFragmentMembersInjector;
  private Provider<aze> slightlySecurePreferencesProvider;
  private bvk<bek> snapEventBusMembersInjector;
  private bvk<avn> snapListItemHandlerMembersInjector;
  private bvk<aoe> snapPreviewPostToStoryAdapterMembersInjector;
  private bvk<SnapchatActivity> snapchatActivityMembersInjector;
  private bvk<SnapchatApplication> snapchatApplicationMembersInjector;
  private bvk<SnapchatCameraBackgroundActivity> snapchatCameraBackgroundActivityMembersInjector;
  private bvk<SnapkidzHomeActivity> snapkidzHomeActivityMembersInjector;
  private bvk<SnapkidzSettingsActivity> snapkidzSettingsActivityMembersInjector;
  private bvk<sx<st.b>> squareBlockerRequestTaskMembersInjector;
  private bvk<sx<sy>> squareBlockerRequestTaskMembersInjector1;
  private bvk<tb> squareCashPaymentTaskMembersInjector;
  private Provider<va> squareOkHttpClientFactoryProvider;
  private Provider<td> squareProvider;
  private bvk<td> squareProviderMembersInjector;
  private bvk<tg> squareRequestTaskMembersInjector;
  private bvk<StoriesAdapter> storiesAdapterMembersInjector;
  private bvk<StoriesFragment> storiesFragmentMembersInjector;
  private bvk<akl> storySnapMembersInjector;
  private Provider<baw> strictModeHelperProvider;
  private bvk<ws> takePhotoControllerMembersInjector;
  private Provider<ws> takePhotoControllerProvider;
  private bvk<TransactionHistoryFragment> transactionHistoryFragmentMembersInjector;
  private bvk<oy> transcodingTaskMetricsMembersInjector;
  private bvk<TwoFactorCodeVerificationFragment> twoFactorCodeVerificationFragmentMembersInjector;
  private bvk<ti> unlinkCardTaskMembersInjector;
  private bvk<UpdateSnapsAnalyticsTable> updateSnapsAnalyticsTableMembersInjector;
  private bvk<ann> updateSnapsOperationMembersInjector;
  private bvk<tk> updateSquareSettingsTaskMembersInjector;
  private bvk<akp> userMembersInjector;
  private bvk<rr> validateTransactionBlockerMembersInjector;
  private bvk<VideoCameraHandler> videoCameraHandlerMembersInjector;
  private bvk<wv> videoRecordingControllerMembersInjector;
  private Provider<wv> videoRecordingControllerProvider;
  private Provider<xg> videoRecordingModelProvider;
  private bvk<WebFragment> webFragmentMembersInjector;
  
  static
  {
    if (!azz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private azz(azz.a parama)
  {
    assert (parama != null);
    slightlySecurePreferencesProvider = bvr.a(SlightlySecurePreferences_Factory.create());
    provideReleaseManagerProvider = azs.a(androidModule);
    strictModeHelperProvider = bax.a(provideReleaseManagerProvider);
    provideAdManagerProvider = bvr.a(azk.a(androidModule));
    provideDiscoverRepositoryProvider = bvr.a(bad.a(discoverModule));
    provideDiscoverMediaManagerProvider = bvr.a(bac.a(discoverModule));
    provideScreenDimensionProvider = bvr.a(azt.a(androidModule));
    provideDeviceVideoEncodingResolutionSetProvider = azp.a(androidModule);
    provideDeveloperSettingsProvider = bvr.a(azo.a(androidModule));
    provideSnapchatServiceManagerProvider = bvr.a(azu.a(androidModule));
    provideDiscoverBrandIconProvider = bvr.a(bab.a(discoverModule));
    snapchatApplicationMembersInjector = my.a(bvq.a.a, slightlySecurePreferencesProvider, provideReleaseManagerProvider, strictModeHelperProvider, provideAdManagerProvider, provideDiscoverRepositoryProvider, provideDiscoverMediaManagerProvider, provideScreenDimensionProvider, provideDeviceVideoEncodingResolutionSetProvider, provideDeveloperSettingsProvider, provideSnapchatServiceManagerProvider, provideDiscoverBrandIconProvider);
    provideCrashSamplerProvider = azn.a(androidModule);
    gracefulExceptionHandlerProvider = bap.a(provideCrashSamplerProvider, provideReleaseManagerProvider);
    gsonWrapperProvider = bvr.a(aun.a(gracefulExceptionHandlerProvider));
    cashAuthManagerMembersInjector = yl.a(slightlySecurePreferencesProvider, gsonWrapperProvider);
    cashCardManagerMembersInjector = yp.a(slightlySecurePreferencesProvider);
    cashErrorReporterProvider = bvr.a(CashErrorReporter_Factory.create());
    squareProviderMembersInjector = tf.a(cashErrorReporterProvider);
    squareProvider = bvr.a(te.a(squareProviderMembersInjector));
    cashProviderManagerMembersInjector = qz.a(ScProvider_Factory.create(), squareProvider);
    cashProviderManagerProvider = bvr.a(qy.a(cashProviderManagerMembersInjector));
    blockerManagerMembersInjector = qv.a(cashProviderManagerProvider);
    blockerManagerProvider = bvr.a(qu.a(blockerManagerMembersInjector));
    receivingCashManagerMembersInjector = yv.a(cashProviderManagerProvider, blockerManagerProvider);
    provideUpdateSnapsAnalyticsProvider = bvr.a(azv.a(androidModule));
    provideFlurryAnalyticsProvider = bvr.a(azq.a(androidModule));
    provideUserActionTracePlatformProvider = bvr.a(azw.a(androidModule));
    analyticsPlatformRegistryProvider = AnalyticsPlatformRegistry_Factory.a(provideUpdateSnapsAnalyticsProvider, provideFlurryAnalyticsProvider, provideUserActionTracePlatformProvider);
    provideAnrDetectorProvider = azl.a(androidModule);
    provideApplicationContextProvider = bvr.a(azm.a(androidModule));
    anrReporterProvider = bbd.a(provideCrashSamplerProvider, provideAnrDetectorProvider, provideReleaseManagerProvider, gracefulExceptionHandlerProvider, provideApplicationContextProvider);
    snapchatActivityMembersInjector = mx.a(bvq.a.a, analyticsPlatformRegistryProvider, provideCrashSamplerProvider, anrReporterProvider);
    providePooledInflaterProvider = bvr.a(azr.a(androidModule));
    landingPageActivityMembersInjector = mt.a(snapchatActivityMembersInjector, DeepLinkParser_Factory.create(), providePooledInflaterProvider);
    snapkidzHomeActivityMembersInjector = snapchatActivityMembersInjector;
    snapkidzSettingsActivityMembersInjector = snapchatActivityMembersInjector;
    provideUserDatabaseLoaderProvider = azx.a(androidModule);
    userMembersInjector = aks.a(slightlySecurePreferencesProvider, cashProviderManagerProvider, provideUserDatabaseLoaderProvider);
    cashEventAnalyticsProvider = bvr.a(CashEventAnalytics_Factory.create());
    sendingCashManagerMembersInjector = yy.a(blockerManagerProvider, cashEventAnalyticsProvider);
    sendingCashManagerProvider = bvr.a(yx.a(sendingCashManagerMembersInjector));
    chatConversationMembersInjector = aky.a(slightlySecurePreferencesProvider, sendingCashManagerProvider, gsonWrapperProvider);
    easyMetricMembersInjector = EasyMetric_MembersInjector.a(provideUpdateSnapsAnalyticsProvider, provideFlurryAnalyticsProvider, provideUserActionTracePlatformProvider);
    errorMetricMembersInjector = easyMetricMembersInjector;
    cameraModelProvider = bvr.a(CameraModel_Factory.create());
    baseCameraFragmentMembersInjector = we.a(bvq.a.a, cameraModelProvider, VideoRecordingSizeFinder_Factory.create());
    flashModelProvider = bvr.a(FlashModel_Factory.create());
    takePhotoControllerMembersInjector = wu.a(flashModelProvider, cameraModelProvider);
    takePhotoControllerProvider = wt.a(takePhotoControllerMembersInjector);
    videoRecordingModelProvider = bvr.a(VideoRecordingModel_Factory.create());
    defaultVideoResolutionProviderMembersInjector = xl.a(cameraModelProvider, VideoRecordingSizeFinder_Factory.create());
    defaultVideoResolutionProvider = xk.a(defaultVideoResolutionProviderMembersInjector);
    videoRecordingControllerMembersInjector = wx.a(videoRecordingModelProvider, cameraModelProvider, flashModelProvider, defaultVideoResolutionProvider);
    videoRecordingControllerProvider = ww.a(videoRecordingControllerMembersInjector);
    cameraFragmentMembersInjector = wf.a(baseCameraFragmentMembersInjector, takePhotoControllerProvider, videoRecordingControllerProvider, ZoomModel_Factory.create(), flashModelProvider, videoRecordingModelProvider, defaultVideoResolutionProvider, ExceptionReporter_Factory.create());
    backgroundCameraFragmentMembersInjector = wd.a(baseCameraFragmentMembersInjector, cameraModelProvider);
    updateSnapsAnalyticsTableMembersInjector = ace.a(bvq.a.a, provideUpdateSnapsAnalyticsProvider);
    cbcSlightlySecurePreferencesMembersInjector = ayw.a(slightlySecurePreferencesProvider, gsonWrapperProvider);
    snapchatCameraBackgroundActivityMembersInjector = snapchatActivityMembersInjector;
    loginAndSignupActivityMembersInjector = snapchatCameraBackgroundActivityMembersInjector;
    sendingMailmanMembersInjector = zn.a(sendingCashManagerProvider);
    storiesAdapterMembersInjector = ahv.a(bvq.a.a, ExceptionReporter_Factory.create());
    storiesFragmentMembersInjector = ahx.a(bvq.a.a, DeepLinkParser_Factory.create());
    addFriendsAdapterMembersInjector = agb.a(bvq.a.a, ExceptionReporter_Factory.create());
    feedFragmentMembersInjector = vz.a(bvq.a.a, ExceptionReporter_Factory.create());
    receivingCashManagerProvider = bvr.a(yu.a(receivingCashManagerMembersInjector));
    phoneNumberBlockerMembersInjector = rp.a(bvq.a.a, receivingCashManagerProvider);
    sendToAdapterMembersInjector = ahe.a(bvq.a.a, ExceptionReporter_Factory.create());
    hasSeenPostToOurStoryDialogLogProvider = bvr.a(aat.a(bvq.a.a));
    sendToFragmentMembersInjector = ahg.a(bvq.a.a, hasSeenPostToOurStoryDialogLogProvider);
    receivedSnapMembersInjector = akb.a(bvq.a.a, Clock_Factory.create());
    storySnapMembersInjector = receivedSnapMembersInjector;
    broadcastSnapMembersInjector = receivedSnapMembersInjector;
    secureChatSessionMembersInjector = ayp.a(gsonWrapperProvider);
    com_snapchat_android_api2_framework_Proxy.formEncodedJsonFieldMapperProvider = uf.a(bvq.a.a, gsonWrapperProvider);
    com_snapchat_android_api2_framework_Proxy.multipartEncodedFieldMapperProvider = uq.a(bvq.a.a);
    entityFactoryProvider = uc.a(com_snapchat_android_api2_framework_Proxy.formEncodedJsonFieldMapperProvider, com_snapchat_android_api2_framework_Proxy.multipartEncodedFieldMapperProvider, gsonWrapperProvider);
    okHttpNetworkInterfaceProvider = uu.a(entityFactoryProvider);
    hyperRequestDependencyProviderMembersInjector = uk.a(okHttpNetworkInterfaceProvider, gsonWrapperProvider);
    cbcKeyAndIvWrapperMembersInjector = ayu.a(Clock_Factory.create());
    clockProviderMembersInjector = bhm.a(Clock_Factory.create());
    releaseWindowMembersInjector = ahc.a(Clock_Factory.create());
    cashAuthManagerProvider = bvr.a(yk.a(cashAuthManagerMembersInjector));
    squareOkHttpClientFactoryProvider = bvr.a(vb.a(provideApplicationContextProvider));
    squareRequestTaskMembersInjector = th.a(bvq.a.a, cashAuthManagerProvider, squareOkHttpClientFactoryProvider, entityFactoryProvider);
    squareBlockerRequestTaskMembersInjector = squareRequestTaskMembersInjector;
    linkCardTaskMembersInjector = squareBlockerRequestTaskMembersInjector;
    squareBlockerRequestTaskMembersInjector1 = squareRequestTaskMembersInjector;
    linkPhoneNumberTaskMembersInjector = squareBlockerRequestTaskMembersInjector1;
    squareCashPaymentTaskMembersInjector = squareRequestTaskMembersInjector;
    initiateCashPaymentTaskMembersInjector = squareCashPaymentTaskMembersInjector;
    retrieveCashPaymentTaskMembersInjector = squareCashPaymentTaskMembersInjector;
    sQPhoneNumberBlockerMembersInjector = sh.a(bvq.a.a, cashErrorReporterProvider);
    sQAccessTokenBlockerMembersInjector = rw.a(bvq.a.a, cashAuthManagerProvider, cashErrorReporterProvider);
    cashCardManagerProvider = bvr.a(yo.a(cashCardManagerMembersInjector));
    sQInitiatePaymentBlockerMembersInjector = se.a(bvq.a.a, squareProvider, cashCardManagerProvider, cashErrorReporterProvider);
    retrieveCashCustomerStatusTaskMembersInjector = squareRequestTaskMembersInjector;
    updateSquareSettingsTaskMembersInjector = squareRequestTaskMembersInjector;
    cashSettingsFragmentMembersInjector = agp.a(bvq.a.a, cashProviderManagerProvider);
    acceptTermsTaskMembersInjector = squareBlockerRequestTaskMembersInjector1;
    chatConversationAdapterMembersInjector = ags.a(bvq.a.a, receivingCashManagerProvider);
    confirmPaymentTaskMembersInjector = squareBlockerRequestTaskMembersInjector1;
    chatFragmentMembersInjector = agx.a(bvq.a.a, CashtagParser_Factory.create(), sendingCashManagerProvider, receivingCashManagerProvider);
    defaultFlashControllerImplMembersInjector = wq.a(bvq.a.a, cameraModelProvider);
    snapPreviewPostToStoryAdapterMembersInjector = aof.a(bvq.a.a, hasSeenPostToOurStoryDialogLogProvider);
    unlinkCardTaskMembersInjector = tj.a(squareRequestTaskMembersInjector, cashCardManagerProvider);
    receivingMailmanMembersInjector = zl.a(sendingCashManagerProvider);
    hasSeenOurCampusStoryDialogLogProvider = bvr.a(aar.a(bvq.a.a));
    snapListItemHandlerMembersInjector = avo.a(hasSeenOurCampusStoryDialogLogProvider);
    videoCameraHandlerMembersInjector = yf.a(bvq.a.a, ScCamcorderProfileProvider_Factory.create(), cameraModelProvider, ExceptionReporter_Factory.create());
    deleteCashPaymentTaskMembersInjector = squareRequestTaskMembersInjector;
    webFragmentMembersInjector = ahm.a(bvq.a.a, gsonWrapperProvider);
    transactionHistoryFragmentMembersInjector = agq.a(webFragmentMembersInjector, cashAuthManagerProvider);
    sQConflictBlockerMembersInjector = sc.a(bvq.a.a, cashCardManagerProvider);
    sQCardFormBlockerMembersInjector = ry.a(bvq.a.a, cashCardManagerProvider, squareProvider);
    loginFragmentMembersInjector = ahp.a(bvq.a.a, slightlySecurePreferencesProvider);
    signupFragmentMembersInjector = ahq.a(bvq.a.a, slightlySecurePreferencesProvider);
    twoFactorCodeVerificationFragmentMembersInjector = ahs.a(bvq.a.a, slightlySecurePreferencesProvider);
    bugReportActivityMembersInjector = snapchatActivityMembersInjector;
    developerSettingsFragmentMembersInjector = ahl.a(bvq.a.a, cashAuthManagerProvider, cashCardManagerProvider);
    scAcceptTermsActivityMembersInjector = snapchatActivityMembersInjector;
    validateTransactionBlockerMembersInjector = rs.a(bvq.a.a, cashErrorReporterProvider);
    sQRetrieveSendingCashPaymentBlockerMembersInjector = sk.a(bvq.a.a, squareProvider, cashErrorReporterProvider);
    sQConfirmBlockerMembersInjector = sa.a(bvq.a.a, cashErrorReporterProvider, squareProvider);
    sQAcceptTermsBlockerMembersInjector = ru.a(bvq.a.a, cashErrorReporterProvider);
    snapEventBusMembersInjector = bel.a(bvq.a.a, ExceptionReporter_Factory.create());
    cameraEventAnalyticsMembersInjector = np.a(cameraModelProvider, flashModelProvider);
    sQUnlinkCardBlockerMembersInjector = sm.a(bvq.a.a, cashAuthManagerProvider);
    cardNumberEditTextMembersInjector = aqs.a(bvq.a.a, DebitCardNumberValidator_Factory.create());
    dSnapMediaCompressorMembersInjector = acl.a(gsonWrapperProvider);
    dSnapMediaExtractorMembersInjector = acn.a(gsonWrapperProvider);
    chatWithAdapterMembersInjector = agz.a(bvq.a.a, ExceptionReporter_Factory.create());
    chatMessageReleaserMembersInjector = zg.a(sendingCashManagerProvider);
    transcodingTaskMetricsMembersInjector = easyMetricMembersInjector;
    updateSnapsOperationMembersInjector = ano.a(bvq.a.a, provideUpdateSnapsAnalyticsProvider);
    logoutOperationMembersInjector = updateSnapsOperationMembersInjector;
    requestTaskMembersInjector = pl.a(bvq.a.a, gsonWrapperProvider);
    deviceTokenManagerProvider = ayz.a(slightlySecurePreferencesProvider, gsonWrapperProvider, ApiTaskFactory_Factory.create(), provideDeveloperSettingsProvider);
  }
  
  public static azz.a d()
  {
    return new azz.a((byte)0);
  }
  
  public final ayy a()
  {
    return (ayy)deviceTokenManagerProvider.get();
  }
  
  public final void a(ack paramack)
  {
    dSnapMediaCompressorMembersInjector.a(paramack);
  }
  
  public final void a(acm paramacm)
  {
    dSnapMediaExtractorMembersInjector.a(paramacm);
  }
  
  public final void a(aga paramaga)
  {
    addFriendsAdapterMembersInjector.a(paramaga);
  }
  
  public final void a(agr paramagr)
  {
    chatConversationAdapterMembersInjector.a(paramagr);
  }
  
  public final void a(agy paramagy)
  {
    chatWithAdapterMembersInjector.a(paramagy);
  }
  
  public final void a(ahb paramahb)
  {
    releaseWindowMembersInjector.a(paramahb);
  }
  
  public final void a(ahd paramahd)
  {
    sendToAdapterMembersInjector.a(paramahd);
  }
  
  public final void a(ajj paramajj)
  {
    broadcastSnapMembersInjector.a(paramajj);
  }
  
  public final void a(aka paramaka)
  {
    receivedSnapMembersInjector.a(paramaka);
  }
  
  public final void a(akl paramakl)
  {
    storySnapMembersInjector.a(paramakl);
  }
  
  public final void a(akp paramakp)
  {
    userMembersInjector.a(paramakp);
  }
  
  public final void a(ann paramann)
  {
    updateSnapsOperationMembersInjector.a(paramann);
  }
  
  public final void a(aoe paramaoe)
  {
    snapPreviewPostToStoryAdapterMembersInjector.a(paramaoe);
  }
  
  public final void a(avn paramavn)
  {
    snapListItemHandlerMembersInjector.a(paramavn);
  }
  
  public final void a(ays paramays)
  {
    cbcKeyAndIvWrapperMembersInjector.a(paramays);
  }
  
  public final void a(ayv paramayv)
  {
    cbcSlightlySecurePreferencesMembersInjector.a(paramayv);
  }
  
  public final void a(bek parambek)
  {
    snapEventBusMembersInjector.a(parambek);
  }
  
  public final void a(bhl parambhl)
  {
    clockProviderMembersInjector.a(parambhl);
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
  
  public final void a(pk parampk)
  {
    requestTaskMembersInjector.a(parampk);
  }
  
  public final void a(qt paramqt)
  {
    blockerManagerMembersInjector.a(paramqt);
  }
  
  public final void a(qx paramqx)
  {
    cashProviderManagerMembersInjector.a(paramqx);
  }
  
  public final void a(ro paramro)
  {
    phoneNumberBlockerMembersInjector.a(paramro);
  }
  
  public final void a(rr paramrr)
  {
    validateTransactionBlockerMembersInjector.a(paramrr);
  }
  
  public final void a(rt paramrt)
  {
    sQAcceptTermsBlockerMembersInjector.a(paramrt);
  }
  
  public final void a(rv paramrv)
  {
    sQAccessTokenBlockerMembersInjector.a(paramrv);
  }
  
  public final void a(rx paramrx)
  {
    sQCardFormBlockerMembersInjector.a(paramrx);
  }
  
  public final void a(rz paramrz)
  {
    sQConfirmBlockerMembersInjector.a(paramrz);
  }
  
  public final void a(sb paramsb)
  {
    sQConflictBlockerMembersInjector.a(paramsb);
  }
  
  public final void a(sd paramsd)
  {
    sQInitiatePaymentBlockerMembersInjector.a(paramsd);
  }
  
  public final void a(sg paramsg)
  {
    sQPhoneNumberBlockerMembersInjector.a(paramsg);
  }
  
  public final void a(sj paramsj)
  {
    sQRetrieveSendingCashPaymentBlockerMembersInjector.a(paramsj);
  }
  
  public final void a(sl paramsl)
  {
    sQUnlinkCardBlockerMembersInjector.a(paramsl);
  }
  
  public final void a(td paramtd)
  {
    squareProviderMembersInjector.a(paramtd);
  }
  
  public final void a(tg paramtg)
  {
    squareRequestTaskMembersInjector.a(paramtg);
  }
  
  public final void a(ti paramti)
  {
    unlinkCardTaskMembersInjector.a(paramti);
  }
  
  public final void a(uj paramuj)
  {
    hyperRequestDependencyProviderMembersInjector.a(paramuj);
  }
  
  public final void a(wp paramwp)
  {
    defaultFlashControllerImplMembersInjector.a(paramwp);
  }
  
  public final void a(ws paramws)
  {
    takePhotoControllerMembersInjector.a(paramws);
  }
  
  public final void a(wv paramwv)
  {
    videoRecordingControllerMembersInjector.a(paramwv);
  }
  
  public final void a(xj paramxj)
  {
    defaultVideoResolutionProviderMembersInjector.a(paramxj);
  }
  
  public final void a(yj paramyj)
  {
    cashAuthManagerMembersInjector.a(paramyj);
  }
  
  public final void a(yn paramyn)
  {
    cashCardManagerMembersInjector.a(paramyn);
  }
  
  public final void a(yt paramyt)
  {
    receivingCashManagerMembersInjector.a(paramyt);
  }
  
  public final void a(zf paramzf)
  {
    chatMessageReleaserMembersInjector.a(paramzf);
  }
  
  public final void a(zk paramzk)
  {
    receivingMailmanMembersInjector.a(paramzk);
  }
  
  public final void a(zm paramzm)
  {
    sendingMailmanMembersInjector.a(paramzm);
  }
  
  public final aaq b()
  {
    return (aaq)hasSeenOurCampusStoryDialogLogProvider.get();
  }
  
  public final aas c()
  {
    return (aas)hasSeenPostToOurStoryDialogLogProvider.get();
  }
  
  public static final class a
  {
    public azj androidModule;
    public baa discoverModule;
  }
}

/* Location:
 * Qualified Name:     azz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */