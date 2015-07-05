import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.square.data.CardBrand;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;
import com.snapchat.android.database.ClientProperty;
import com.snapchat.android.database.OnboardingTooltip;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions;
import com.squareup.otto.Bus;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import javax.inject.Provider;

public final class ajx
{
  public static final int DEFAULT_DELAY_RELEASE_TIME = 600;
  public static final int DEFAULT_NUM_RECENT_FINDFRIENDS_REQUEST = 10;
  public static final int DEFAULT_NUM_RECENT_FIND_SUGGESTED_FRIENDS_REQUEST = 10;
  private static final String DELIMITER = "~";
  private static final String TAG = "UserPrefs";
  private static Context sContext = null;
  private static final Gson sGson = new GsonBuilder().create();
  private static final ajx sInstance = new ajx();
  private static SharedPreferences sSharedPreferences;
  protected final Provider<ajv> mUserProvider;
  
  public ajx()
  {
    this(ajv.UNSAFE_USER_PROVIDER);
  }
  
  private ajx(Provider<ajv> paramProvider)
  {
    mUserProvider = paramProvider;
  }
  
  public static long A()
  {
    return bN().getLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_CACHED_TIMESTAMP.getKey(), 0L);
  }
  
  public static void A(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.VIBRATION_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static void B(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.SOUND_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean B()
  {
    return bN().getBoolean(SharedPreferenceKey.PROFILE_IMAGES_UPLOADED.getKey(), true);
  }
  
  public static void C(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.LED_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean C()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_PROFILE_IMAGES.getKey(), true);
  }
  
  public static int D()
  {
    return bN().getInt(SharedPreferenceKey.PROFILE_IMAGES_SHARING_COUNT.getKey(), 0);
  }
  
  public static void D(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.WAKE_SCREEN_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static void E(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.NOTIFICATIONS_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean E()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static String F()
  {
    return bN().getString(SharedPreferenceKey.AUTH_TOKEN.getKey(), null);
  }
  
  public static String G()
  {
    return bN().getString(SharedPreferenceKey.EMAIL.getKey(), null);
  }
  
  public static boolean H()
  {
    return bN().getBoolean(SharedPreferenceKey.IS_SNAPKIDZ_ACCOUNT.getKey(), false);
  }
  
  public static int I()
  {
    return bN().getInt(SharedPreferenceKey.SCORE.getKey(), 0);
  }
  
  public static boolean J()
  {
    return bN().getBoolean(SharedPreferenceKey.SHOULD_SHOW_POST_STORY_DIALOG.getKey(), false);
  }
  
  public static boolean K()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void L()
  {
    if (!K()) {
      new qb(OnboardingTooltip.SNAP).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean M()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_CAPTION_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void N()
  {
    if (!M()) {
      new qb(OnboardingTooltip.CAPTION).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_CAPTION_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean O()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static boolean P()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_POSTED_STORY_FROM_SEND_TO.getKey(), false);
  }
  
  public static void Q()
  {
    if (!P()) {
      new qb(OnboardingTooltip.MY_STORY).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_POSTED_STORY_FROM_SEND_TO.getKey(), true).apply();
  }
  
  public static boolean R()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA.getKey(), false);
  }
  
  public static void S()
  {
    if (!R()) {
      new qb(OnboardingTooltip.FIRST_LOCATION).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA.getKey(), true).apply();
  }
  
  public static boolean T()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_ACCEPTED_SQUARE_TOS.getKey(), false);
  }
  
  public static void U()
  {
    new qb().a(ClientProperty.SQUARE_TOS_ACCEPTED, "true").f();
    b().putBoolean(SharedPreferenceKey.HAS_ACCEPTED_SQUARE_TOS.getKey(), true).apply();
  }
  
  public static boolean V()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_ACCEPTED_SNAPCASH_TOS.getKey(), false);
  }
  
  public static void W()
  {
    new qb().a(ClientProperty.SNAPCASH_NEW_TOS_ACCEPTED, "true").f();
    b().putBoolean(SharedPreferenceKey.HAS_ACCEPTED_SNAPCASH_TOS.getKey(), true).apply();
  }
  
  public static boolean X()
  {
    return bN().getBoolean(SharedPreferenceKey.SHOULD_SHOW_CLEAR_CONVERSATION_DIALOG.getKey(), false);
  }
  
  public static void Y()
  {
    b().putBoolean(SharedPreferenceKey.SHOULD_SHOW_CLEAR_CONVERSATION_DIALOG.getKey(), false).apply();
  }
  
  public static boolean Z()
  {
    SharedPreferences localSharedPreferences = bN();
    boolean bool = localSharedPreferences.getBoolean(SharedPreferenceKey.HAS_GIVEN_ACCESS_TO_CONTACTS.getKey(), false);
    String str = l();
    if (bool)
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      if (!TextUtils.isEmpty(str)) {
        localEditor.putBoolean(str.hashCode() + SharedPreferenceKey.HAS_GIVEN_ACCESS_TO_CONTACTS.getKey(), true).apply();
      }
      localEditor.putBoolean(SharedPreferenceKey.HAS_GIVEN_ACCESS_TO_CONTACTS.getKey(), false).apply();
    }
    if (TextUtils.isEmpty(str)) {
      return false;
    }
    return localSharedPreferences.getBoolean(str.hashCode() + SharedPreferenceKey.HAS_GIVEN_ACCESS_TO_CONTACTS.getKey(), false);
  }
  
  public static ajx a()
  {
    return sInstance;
  }
  
  public static void a(int paramInt)
  {
    b().putInt(SharedPreferenceKey.APP_VERSION_CODE.getKey(), paramInt).apply();
  }
  
  public static void a(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    bN().registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
  
  @avl
  public static void a(bjp parambjp)
  {
    b().putString(SharedPreferenceKey.AUTH_TOKEN.getKey(), parambjp.o()).putString(SharedPreferenceKey.EMAIL.getKey(), parambjp.q()).putBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), aud.a(parambjp.m())).apply();
    if (parambjp.I() != null) {
      a(parambjp.I());
    }
  }
  
  public static void a(String paramString)
  {
    b().putString(SharedPreferenceKey.PHONE_NUMBER.getKey(), paramString).apply();
  }
  
  @avl
  private static void a(Map<String, String> paramMap)
  {
    SharedPreferences localSharedPreferences = bN();
    Object localObject1 = null;
    Iterator localIterator = zo.a.entrySet().iterator();
    Object localObject3;
    String str1;
    String str2;
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject3 = (Map.Entry)localIterator.next();
      str1 = (String)((Map.Entry)localObject3).getValue();
      str2 = (String)zo.b.get(str1);
      localObject2 = localObject1;
      if (localSharedPreferences.contains((String)((Map.Entry)localObject3).getKey()))
      {
        localObject3 = String.valueOf(localSharedPreferences.getBoolean((String)((Map.Entry)localObject3).getKey(), false));
        if (paramMap.containsKey(str1.toLowerCase()))
        {
          localObject2 = localObject1;
          if (TextUtils.equals((CharSequence)paramMap.get(str1.toLowerCase()), (CharSequence)localObject3)) {}
        }
        else
        {
          if (localObject1 != null) {
            break label256;
          }
          localObject1 = new qb();
        }
      }
    }
    label256:
    for (;;)
    {
      ((qb)localObject1).a(ClientProperty.valueOf(str1), (String)localObject3);
      paramMap.put(str1.toLowerCase(), localObject3);
      localObject2 = localObject1;
      localObject1 = localObject2;
      if (!paramMap.containsKey(str1.toLowerCase())) {
        break;
      }
      boolean bool = TextUtils.equals((CharSequence)paramMap.get(str1.toLowerCase()), "true");
      b().putBoolean(str2, bool).apply();
      localObject1 = localObject2;
      break;
      if (localObject1 != null) {
        ((qb)localObject1).f();
      }
      return;
    }
  }
  
  public static void a(UUID paramUUID)
  {
    b().putString(SharedPreferenceKey.UNIQUE_DEVICE_ID.getKey(), paramUUID.toString()).apply();
  }
  
  public static void a(@cgb qn paramqn)
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), paramqn.a());
    String str2 = SharedPreferenceKey.CASH_CARD_BRAND.getKey();
    if (paramqn.d() != null) {}
    for (String str1 = paramqn.d().name();; str1 = null)
    {
      localEditor.putString(str2, str1);
      localEditor.putString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), paramqn.e());
      localEditor.putBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), paramqn.b());
      localEditor.putBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), paramqn.c());
      localEditor.putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), false);
      localEditor.apply();
      ban.a().a(new bbf());
      return;
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.NEEDS_PHONE_VERIFICATION.getKey(), paramBoolean).apply();
  }
  
  public static void a(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean)
    {
      b().putInt(SharedPreferenceKey.KEYBOARD_HEIGHT_LANDSCAPE.getKey(), paramInt).apply();
      return;
    }
    b().putInt(SharedPreferenceKey.KEYBOARD_HEIGHT_PORTRAIT.getKey(), paramInt).apply();
  }
  
  public static void a(boolean paramBoolean, @cgb String paramString1, @cgb String paramString2, @cgb String paramString3)
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_SERVICE_ACTIVE.getKey(), paramBoolean);
    localEditor.putString(SharedPreferenceKey.CASH_PROVIDER_NAME.getKey(), paramString1);
    localEditor.putString(SharedPreferenceKey.CASH_CUSTOMER_ID.getKey(), paramString2);
    localEditor.putString(SharedPreferenceKey.CASH_CUSTOMER_ALLOWED.getKey(), paramString3);
    localEditor.apply();
  }
  
  public static void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, long paramLong)
  {
    b().putBoolean(SharedPreferenceKey.SHOULD_SHOW_SUGGESTION_PROMPT.getKey(), paramBoolean).putString(SharedPreferenceKey.SUGGESTION_PROMPT_LINK.getKey(), paramString1).putString(SharedPreferenceKey.SUGGESTION_PROMPT_TEXT.getKey(), paramString2).putString(SharedPreferenceKey.SUGGESTION_PROMPT_BUTTON_TEXT.getKey(), paramString3).putLong(SharedPreferenceKey.SUGGESTION_PROMPT_DURATION_IN_MILLIS.getKey(), paramLong).apply();
  }
  
  public static boolean a(long paramLong)
  {
    if (paramLong > j())
    {
      b().putLong(SharedPreferenceKey.LAST_SEEN_ADDED_ME_TIMESTAMP.getKey(), paramLong).apply();
      return true;
    }
    return false;
  }
  
  public static void aA()
  {
    k("");
  }
  
  public static String aB()
  {
    Object localObject = co.b(bP());
    String str1 = co.b(bR());
    String str2 = co.b(bQ());
    String str3 = co.b(az());
    localObject = new bhi().d((String)localObject).c(str1).a(str3).b(str2);
    return sGson.toJson(localObject);
  }
  
  public static void aC()
  {
    k("");
    w("");
    y("");
    x("");
  }
  
  public static String aD()
  {
    Object localObject = co.b(bP());
    String str1 = co.b(bR());
    String str2 = co.b(bQ());
    localObject = new bhi().d((String)localObject).c(str1).b(str2);
    return sGson.toJson(localObject);
  }
  
  public static String aE()
  {
    return bN().getString(SharedPreferenceKey.STUDY_SETTINGS.getKey(), "{}");
  }
  
  public static boolean aF()
  {
    return bN().getBoolean(SharedPreferenceKey.IS_ACCOUNT_LOCKED.getKey(), false);
  }
  
  public static boolean aG()
  {
    return bN().getBoolean(SharedPreferenceKey.DEMOGRAPHICS_TRACKING_SENT_FLAG.getKey(), false);
  }
  
  public static boolean aH()
  {
    return bN().getBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_CONFIRMATION.getKey(), true);
  }
  
  public static void aI()
  {
    b().putBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_CONFIRMATION.getKey(), false).apply();
  }
  
  public static boolean aJ()
  {
    return bN().getBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_ENABLED.getKey(), false);
  }
  
  public static long aK()
  {
    return bN().getLong(SharedPreferenceKey.DISCOVER_TIME_LAST_SEEN.getKey(), -1L);
  }
  
  public static long aL()
  {
    return bN().getLong(SharedPreferenceKey.CHANNEL_LIST_TIMESTAMP.getKey(), -1L);
  }
  
  public static String aM()
  {
    return bN().getString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_NAME.getKey(), null);
  }
  
  public static String aN()
  {
    return bN().getString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_VALUE.getKey(), null);
  }
  
  public static void aO()
  {
    b().putBoolean(SharedPreferenceKey.HAS_SHARED_DISCOVER_SNAP.getKey(), true).apply();
  }
  
  public static boolean aP()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SHARED_DISCOVER_SNAP.getKey(), false);
  }
  
  public static boolean aQ()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_DISCOVER_PAGE.getKey(), false);
  }
  
  public static void aR()
  {
    if (!aQ()) {
      new qb(OnboardingTooltip.DISCOVER).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_DISCOVER_PAGE.getKey(), true).apply();
  }
  
  public static boolean aS()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void aT()
  {
    if (!aS()) {
      new qb(OnboardingTooltip.PROFILE).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean aU()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_ACCEPTED_ADD_NEARBY_PROMPT.getKey(), false);
  }
  
  public static void aV()
  {
    if (!aU()) {
      new qb(OnboardingTooltip.ADD_NEARBY_PROMPT).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_ACCEPTED_ADD_NEARBY_PROMPT.getKey(), true).apply();
  }
  
  public static boolean aW()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void aX()
  {
    if (!aW()) {
      new qb(OnboardingTooltip.NEW_FRIEND_REQUEST).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean aY()
  {
    return bN().getBoolean(SharedPreferenceKey.SHOULD_SHOW_SUGGESTION_PROMPT.getKey(), false);
  }
  
  public static String aZ()
  {
    return bN().getString(SharedPreferenceKey.SUGGESTION_PROMPT_LINK.getKey(), null);
  }
  
  public static boolean aa()
  {
    return bN().getBoolean(SharedPreferenceKey.REPLAY_SETTING.getKey(), false);
  }
  
  public static boolean ab()
  {
    return bN().getBoolean(SharedPreferenceKey.FILTERS_ENABLED.getKey(), false);
  }
  
  public static boolean ac()
  {
    return bN().getBoolean(SharedPreferenceKey.FRONT_FACING_FLASH_SETTING.getKey(), false);
  }
  
  public static long ad()
  {
    return bN().getLong(SharedPreferenceKey.LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP.getKey(), 0L);
  }
  
  public static Map<String, String> ae()
  {
    String str = bN().getString(SharedPreferenceKey.USER_TARGETING.getKey(), "{}");
    if (TextUtils.isEmpty(str)) {
      return new HashMap();
    }
    return (Map)new att().a(str, new avb.1().getType());
  }
  
  public static boolean af()
  {
    return bN().getBoolean(SharedPreferenceKey.SYNC_ON_FEED_OPEN.getKey(), false);
  }
  
  public static boolean ag()
  {
    return bN().getBoolean(SharedPreferenceKey.IS_SEARCHABLE_BY_PHONE_NUMBER.getKey(), false);
  }
  
  public static long ah()
  {
    return bN().getLong(SharedPreferenceKey.LAST_EXTERNAL_IMAGE_TAKEN_TIMESTAMP.getKey(), 0L);
  }
  
  public static void ai()
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), false);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_BRAND.getKey(), null);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), null);
    localEditor.putBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), false);
    localEditor.putBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), false);
    localEditor.putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true);
    localEditor.apply();
    ban.a().a(new bbf());
  }
  
  public static void aj()
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), false);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_BRAND.getKey(), null);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), null);
    localEditor.apply();
    ban.a().a(new bbf());
  }
  
  public static void ak()
  {
    b().putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true).apply();
  }
  
  public static void al()
  {
    b().putBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), true).apply();
  }
  
  public static void am()
  {
    b().putBoolean(SharedPreferenceKey.CASH_SEND_CONFIRMATION.getKey(), false).apply();
  }
  
  public static void an()
  {
    b().putBoolean(SharedPreferenceKey.CASH_SWIPE_SEND_CONFIRMATION.getKey(), false).apply();
  }
  
  @cgb
  public static boolean ao()
  {
    return bN().getBoolean(SharedPreferenceKey.CASH_SERVICE_ACTIVE.getKey(), true);
  }
  
  @cgc
  public static String ap()
  {
    return bN().getString(SharedPreferenceKey.CASH_PROVIDER_NAME.getKey(), null);
  }
  
  @cgb
  public static ScCashResponsePayload.Status aq()
  {
    String str = bN().getString(SharedPreferenceKey.CASH_CUSTOMER_ALLOWED.getKey(), null);
    if (str == null) {
      return ScCashResponsePayload.Status.OK;
    }
    return ScCashResponsePayload.Status.valueOf(str);
  }
  
  public static boolean ar()
  {
    return bN().getBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), false);
  }
  
  @cgc
  public static String as()
  {
    return bN().getString(SharedPreferenceKey.CASH_CARD_BRAND.getKey(), null);
  }
  
  @cgc
  public static String at()
  {
    return bN().getString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), null);
  }
  
  public static boolean au()
  {
    return bN().getBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true);
  }
  
  public static boolean av()
  {
    return bN().getBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), false);
  }
  
  public static boolean aw()
  {
    return bN().getBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), false);
  }
  
  public static boolean ax()
  {
    return bN().getBoolean(SharedPreferenceKey.CASH_SEND_CONFIRMATION.getKey(), true);
  }
  
  public static boolean ay()
  {
    return bN().getBoolean(SharedPreferenceKey.CASH_SWIPE_SEND_CONFIRMATION.getKey(), true);
  }
  
  public static String az()
  {
    return bN().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_STORIES.getKey(), "");
  }
  
  public static SharedPreferences.Editor b()
  {
    return bN().edit();
  }
  
  public static void b(int paramInt)
  {
    b().putInt(SharedPreferenceKey.PROFILE_IMAGES_SHARING_COUNT.getKey(), paramInt).apply();
  }
  
  public static void b(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    bN().unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
  
  @avl
  public static void b(bjp parambjp)
  {
    int i;
    Object localObject2;
    String str;
    if (TextUtils.isEmpty(parambjp.x()))
    {
      i = SettingsFragment.PrivacyOptions.valueOf("FRIENDS").ordinal();
      localObject2 = b().putString(SharedPreferenceKey.USERNAME.getKey(), parambjp.n()).putString(SharedPreferenceKey.AUTH_TOKEN.getKey(), parambjp.o()).putString(SharedPreferenceKey.EMAIL.getKey(), parambjp.q()).putBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), aud.a(parambjp.m())).putString(SharedPreferenceKey.GCM_REGISTRATION_ID.getKey(), parambjp.p()).putInt(SharedPreferenceKey.NUM_SNAPS_RECEIVED.getKey(), aud.a(parambjp.z())).putInt(SharedPreferenceKey.NUM_SNAPS_SENT.getKey(), aud.a(parambjp.y())).putInt(SharedPreferenceKey.SCORE.getKey(), aud.a(parambjp.A())).putString(SharedPreferenceKey.MOBILE_VERIFICATION_KEY.getKey(), parambjp.s()).putString(SharedPreferenceKey.MOBILE_VERIFICATION_SEND_TO_NUMBER.getKey(), parambjp.F()).putInt(SharedPreferenceKey.SNAP_PRIVACY_SETTING.getKey(), aud.a(parambjp.w())).putInt(SharedPreferenceKey.STORY_PRIVACY_SETTING.getKey(), i).putBoolean(SharedPreferenceKey.IS_SEARCHABLE_BY_PHONE_NUMBER.getKey(), aud.a(parambjp.G())).putLong(SharedPreferenceKey.LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP.getKey(), aud.a(parambjp.R()));
      str = SharedPreferenceKey.USER_TARGETING.getKey();
      localObject1 = parambjp.aa();
      if (localObject1 != null) {
        break label612;
      }
    }
    label612:
    for (Object localObject1 = "{}";; localObject1 = new att().a(localObject1))
    {
      ((SharedPreferences.Editor)localObject2).putString(str, (String)localObject1).putBoolean(SharedPreferenceKey.RAW_THUMBNAIL_UPLOAD_ENABLED.getKey(), aud.a(parambjp.ab())).apply();
      a(parambjp.r());
      TranscodingPreferencesWrapper.a();
      TranscodingPreferencesWrapper.a(aud.a(parambjp.t()));
      e(parambjp.v());
      boolean bool = aud.a(parambjp.u());
      b().putBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_ENABLED.getKey(), bool).apply();
      bool = aud.a(parambjp.Y());
      b().putBoolean(SharedPreferenceKey.VIDEO_FILTERS.getKey(), bool).apply();
      long l = aud.a(parambjp.C());
      if (l > j()) {
        a(l);
      }
      localObject1 = parambjp.J();
      if (localObject1 != null) {
        b().putBoolean(SharedPreferenceKey.FILTERS_ENABLED.getKey(), aud.a(((bht)localObject1).a())).putBoolean(SharedPreferenceKey.REPLAY_SETTING.getKey(), aud.a(((bht)localObject1).c())).putBoolean(SharedPreferenceKey.FRONT_FACING_FLASH_SETTING.getKey(), aud.a(((bht)localObject1).b())).apply();
      }
      localObject1 = ajt.a().a(parambjp.K());
      b().putString(SharedPreferenceKey.STUDY_SETTINGS.getKey(), (String)localObject1).apply();
      if (parambjp.H() == null) {
        break label629;
      }
      localObject1 = parambjp.H().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = OnboardingTooltip.fromValue((String)((Iterator)localObject1).next());
        if (localObject2 != OnboardingTooltip.UNKNOWN) {
          b().putBoolean(((OnboardingTooltip)localObject2).getSharedPreferenceKey(), true).apply();
        }
      }
      i = SettingsFragment.PrivacyOptions.valueOf(parambjp.x()).ordinal();
      break;
    }
    label629:
    if (parambjp.I() != null) {
      a(parambjp.I());
    }
  }
  
  public static void b(String paramString)
  {
    b().putString(SharedPreferenceKey.USERNAME.getKey(), paramString).apply();
  }
  
  public static void b(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.NEEDS_CAPTCHA_VERIFICATION.getKey(), paramBoolean).apply();
  }
  
  public static boolean b(long paramLong)
  {
    if (paramLong > j())
    {
      b().putLong(SharedPreferenceKey.LAST_FIND_FRIENDS_WITHOUT_CACHE_TIMESTAMP.getKey(), paramLong).apply();
      return true;
    }
    return false;
  }
  
  public static void bA()
  {
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_STORIES_TTV_TOOLTIP.getKey(), true).apply();
  }
  
  public static boolean bB()
  {
    boolean bool = false;
    if (bN().getInt(SharedPreferenceKey.TAP_TO_SKIP_COUNT.getKey(), 0) > 0) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean bC()
  {
    return bN().getBoolean(SharedPreferenceKey.SEEN_SWIPE_DOWN_TUTORIAL.getKey(), false);
  }
  
  public static void bD()
  {
    b().putBoolean(SharedPreferenceKey.SEEN_SWIPE_DOWN_TUTORIAL.getKey(), false).apply();
  }
  
  public static boolean bE()
  {
    return bN().getBoolean(SharedPreferenceKey.SWIPED_DOWN_IN_VIEWER.getKey(), false);
  }
  
  public static boolean bF()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_TAP_TO_VIEW_SNAPS_IN_FEED.getKey(), false);
  }
  
  public static void bG()
  {
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_TAP_TO_VIEW_SNAPS_IN_FEED.getKey(), true).apply();
  }
  
  public static boolean bH()
  {
    SharedPreferences localSharedPreferences = bN();
    boolean bool = localSharedPreferences.getBoolean(SharedPreferenceKey.LEGACY_SOUND_VIBRATION_ENABLED.getKey(), false);
    return localSharedPreferences.getBoolean(SharedPreferenceKey.VIBRATION_ENABLED.getKey(), bool);
  }
  
  public static boolean bI()
  {
    SharedPreferences localSharedPreferences = bN();
    boolean bool = localSharedPreferences.getBoolean(SharedPreferenceKey.LEGACY_SOUND_VIBRATION_ENABLED.getKey(), false);
    return localSharedPreferences.getBoolean(SharedPreferenceKey.SOUND_ENABLED.getKey(), bool);
  }
  
  public static boolean bJ()
  {
    return bN().getBoolean(SharedPreferenceKey.LED_ENABLED.getKey(), true);
  }
  
  public static boolean bK()
  {
    return bN().getBoolean(SharedPreferenceKey.WAKE_SCREEN_ENABLED.getKey(), true);
  }
  
  public static boolean bL()
  {
    return bN().getBoolean(SharedPreferenceKey.NOTIFICATIONS_ENABLED.getKey(), true);
  }
  
  public static boolean bM()
  {
    return bN().getBoolean(SharedPreferenceKey.VIDEO_FILTERS.getKey(), true);
  }
  
  private static SharedPreferences bN()
  {
    if (sContext == null) {
      sContext = SnapchatApplication.b();
    }
    if (sSharedPreferences == null) {
      sSharedPreferences = PreferenceManager.getDefaultSharedPreferences(sContext);
    }
    return sSharedPreferences;
  }
  
  @cgc
  private static String bO()
  {
    return bN().getString(SharedPreferenceKey.ANDROID_DISPLAY_NAME.getKey(), null);
  }
  
  private static String bP()
  {
    return bN().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_CONVERSATIONS.getKey(), "");
  }
  
  private static String bQ()
  {
    return bN().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_UPDATES.getKey(), "");
  }
  
  private static String bR()
  {
    return bN().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_FRIENDS.getKey(), "");
  }
  
  private static boolean bS()
  {
    try
    {
      int i = Integer.valueOf(Settings.Secure.getInt(sContext.getContentResolver(), "location_mode")).intValue();
      return i == 3;
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException) {}
    return new ahq().b();
  }
  
  public static boolean ba()
  {
    return !TextUtils.isEmpty(bb());
  }
  
  public static String bb()
  {
    return bN().getString(SharedPreferenceKey.SUGGESTION_PROMPT_TEXT.getKey(), null);
  }
  
  public static String bc()
  {
    return bN().getString(SharedPreferenceKey.SUGGESTION_PROMPT_BUTTON_TEXT.getKey(), null);
  }
  
  public static long bd()
  {
    return bN().getLong(SharedPreferenceKey.SUGGESTION_PROMPT_LAST_DISMISSED_TIMESTAMP.getKey(), 0L);
  }
  
  public static long be()
  {
    return bN().getLong(SharedPreferenceKey.SUGGESTION_PROMPT_DURATION_IN_MILLIS.getKey(), 604800000L);
  }
  
  public static String bf()
  {
    return bN().getString(SharedPreferenceKey.SNAP_TAG_IMAGE_ID.getKey(), null);
  }
  
  public static String bg()
  {
    return bN().getString(SharedPreferenceKey.TRANSCODING_STATE.getKey(), TranscodingPreferencesWrapper.TranscodingEnabled.UNKNOWN.name());
  }
  
  public static boolean bh()
  {
    return bN().getBoolean(SharedPreferenceKey.TRANSCODING_IN_PROGRESS_FLAG.getKey(), false);
  }
  
  public static String bi()
  {
    return bN().getString(SharedPreferenceKey.TRANSCODING_HISTORY.getKey(), "");
  }
  
  public static String bj()
  {
    return bN().getString(SharedPreferenceKey.YEAR_CLASS.getKey(), "{}");
  }
  
  public static String bk()
  {
    return bN().getString(SharedPreferenceKey.URL_ROUTING_MAP.getKey(), "{}");
  }
  
  public static boolean bl()
  {
    return bN().getBoolean(SharedPreferenceKey.IDENTITY_RED_GEAR_IS_ON.getKey(), false);
  }
  
  public static boolean bm()
  {
    return bN().getBoolean(SharedPreferenceKey.IDENTITY_IS_EMAIL_VERIFIED.getKey(), false);
  }
  
  public static String bn()
  {
    return bN().getString(SharedPreferenceKey.IDENTITY_PENDING_EMAIL.getKey(), null);
  }
  
  public static String bo()
  {
    return bN().getString(SharedPreferenceKey.PHONE_VERIFICATION_SMS_FORMAT.getKey(), null);
  }
  
  public static long bp()
  {
    return bN().getLong(SharedPreferenceKey.LAST_IDENTITY_ACTION_TIMESTAMP.getKey(), 0L);
  }
  
  public static boolean bq()
  {
    return bN().getBoolean(SharedPreferenceKey.IDENTITY_IS_TWO_FA_ENABLED.getKey(), false);
  }
  
  public static boolean br()
  {
    return bN().getBoolean(SharedPreferenceKey.IDENTITY_IS_HIGH_LOCATION_REQUIRED.getKey(), false);
  }
  
  public static boolean bs()
  {
    ahq localahq = new ahq();
    if ((localahq.a()) || (localahq.b())) {}
    for (int i = 1; i == 0; i = 0) {
      return false;
    }
    if (br()) {
      return bS();
    }
    return true;
  }
  
  public static List<Long> bt()
  {
    return z(bN().getString(SharedPreferenceKey.IDENTITY_SUGGESTED_FRIEND_FIND_TIMESTAMPS.getKey(), null));
  }
  
  public static int bu()
  {
    return bN().getInt(SharedPreferenceKey.IDENTITY_SUGGESTED_FRIEND_FETCH_THRESHOLD.getKey(), 0);
  }
  
  public static int bv()
  {
    return bN().getInt(SharedPreferenceKey.DEVELOPER_OPTIONS_RELEASE_DELAY_TIMER.getKey(), 600);
  }
  
  @cgc
  public static UUID bw()
  {
    String str = bN().getString(SharedPreferenceKey.UNIQUE_DEVICE_ID.getKey(), null);
    if (str == null) {
      return null;
    }
    return UUID.fromString(str);
  }
  
  public static List<Long> bx()
  {
    return z(bN().getString(SharedPreferenceKey.FINDFRIENDS_TIMESTAMPS.getKey(), null));
  }
  
  public static boolean bz()
  {
    return bN().getBoolean(SharedPreferenceKey.HAS_SEEN_STORIES_TTV_TOOLTIP.getKey(), false);
  }
  
  public static int c()
  {
    return bN().getInt(SharedPreferenceKey.NUM_SNAPS_RECEIVED.getKey(), 0);
  }
  
  public static void c(int paramInt)
  {
    b().putInt(SharedPreferenceKey.SNAP_PRIVACY_SETTING.getKey(), paramInt).apply();
  }
  
  public static void c(long paramLong)
  {
    if (bN().getLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_DELETED_TIMESTAMP.getKey(), 0L) < paramLong) {
      b().putLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_DELETED_TIMESTAMP.getKey(), paramLong).apply();
    }
  }
  
  public static void c(String paramString)
  {
    b().putString(SharedPreferenceKey.CAPTCHA_PROMPT.getKey(), paramString).apply();
  }
  
  public static void c(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IS_REGISTERING.getKey(), paramBoolean).apply();
  }
  
  public static int d()
  {
    return bN().getInt(SharedPreferenceKey.NUM_SNAPS_SENT.getKey(), 0);
  }
  
  public static void d(int paramInt)
  {
    b().putInt(SharedPreferenceKey.STORY_PRIVACY_SETTING.getKey(), paramInt).apply();
  }
  
  public static void d(long paramLong)
  {
    if (A() < paramLong) {
      b().putLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_CACHED_TIMESTAMP.getKey(), paramLong).apply();
    }
  }
  
  public static void d(String paramString)
  {
    b().putBoolean(SharedPreferenceKey.IS_REGISTERING.getKey(), false).putString(SharedPreferenceKey.USERNAME.getKey(), paramString).putBoolean(SharedPreferenceKey.IS_SNAPKIDZ_ACCOUNT.getKey(), true).apply();
  }
  
  public static void d(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.PROFILE_IMAGES_UPLOADED.getKey(), paramBoolean).apply();
  }
  
  public static String e()
  {
    return bN().getString(SharedPreferenceKey.PHONE_NUMBER.getKey(), "");
  }
  
  public static void e(int paramInt)
  {
    b().putInt(SharedPreferenceKey.IDENTITY_SUGGESTED_FRIEND_FETCH_THRESHOLD.getKey(), paramInt).apply();
  }
  
  public static void e(long paramLong)
  {
    b().putLong(SharedPreferenceKey.LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP.getKey(), paramLong).apply();
  }
  
  public static void e(String paramString)
  {
    Object localObject;
    if (!TextUtils.isEmpty(paramString)) {
      localObject = new SimpleDateFormat("yyyy-MM-dd");
    }
    try
    {
      long l = ((SimpleDateFormat)localObject).parse(paramString).getTime();
      paramString = Calendar.getInstance();
      paramString.setTimeInMillis(l);
      localObject = Calendar.getInstance();
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(((Calendar)localObject).get(1), paramString.get(2), paramString.get(5), 0, 0, 0);
      b().putLong(SharedPreferenceKey.BIRTHDAY_THIS_YEAR_IN_MILLIS.getKey(), localCalendar.getTimeInMillis()).apply();
      return;
    }
    catch (ParseException paramString)
    {
      Timber.a("UserPrefs", paramString);
    }
  }
  
  public static void e(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.HAS_PROFILE_IMAGES.getKey(), paramBoolean).apply();
  }
  
  public static void f(long paramLong)
  {
    b().putLong(SharedPreferenceKey.LAST_EXTERNAL_IMAGE_TAKEN_TIMESTAMP.getKey(), paramLong).apply();
  }
  
  public static void f(String paramString)
  {
    b().putString(SharedPreferenceKey.GCM_REGISTRATION_ID.getKey(), paramString).apply();
  }
  
  public static void f(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IS_SNAPKIDZ_ACCOUNT.getKey(), paramBoolean).apply();
  }
  
  public static boolean f()
  {
    return !TextUtils.isEmpty(e());
  }
  
  public static int g()
  {
    return bN().getInt(SharedPreferenceKey.SNAP_PRIVACY_SETTING.getKey(), 0);
  }
  
  public static void g(long paramLong)
  {
    b().putLong(SharedPreferenceKey.DISCOVER_TIME_LAST_SEEN.getKey(), paramLong).apply();
  }
  
  public static void g(String paramString)
  {
    b().putString(SharedPreferenceKey.DISPLAY_NAME.getKey(), paramString).apply();
  }
  
  public static void g(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.SYNC_ON_FEED_OPEN.getKey(), paramBoolean).apply();
  }
  
  public static int h()
  {
    return bN().getInt(SharedPreferenceKey.STORY_PRIVACY_SETTING.getKey(), 0);
  }
  
  public static void h(long paramLong)
  {
    b().putLong(SharedPreferenceKey.CHANNEL_LIST_TIMESTAMP.getKey(), paramLong).apply();
  }
  
  public static void h(String paramString)
  {
    b().putString(SharedPreferenceKey.ANDROID_DISPLAY_NAME.getKey(), paramString).apply();
  }
  
  public static void h(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.SHOULD_SHOW_POST_STORY_DIALOG.getKey(), paramBoolean).apply();
  }
  
  public static int i()
  {
    return bN().getInt(SharedPreferenceKey.APP_VERSION_CODE.getKey(), Integer.MIN_VALUE);
  }
  
  public static void i(long paramLong)
  {
    if (paramLong > bd()) {
      b().putLong(SharedPreferenceKey.SUGGESTION_PROMPT_LAST_DISMISSED_TIMESTAMP.getKey(), paramLong).apply();
    }
  }
  
  public static void i(String paramString)
  {
    b().putString(SharedPreferenceKey.EMAIL.getKey(), paramString).apply();
  }
  
  public static void i(boolean paramBoolean)
  {
    if ((!O()) && (paramBoolean)) {
      new qb(OnboardingTooltip.SWIPE_FILTERS).f();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE.getKey(), paramBoolean).apply();
  }
  
  public static long j()
  {
    return bN().getLong(SharedPreferenceKey.LAST_SEEN_ADDED_ME_TIMESTAMP.getKey(), 0L);
  }
  
  public static void j(long paramLong)
  {
    b().putLong(SharedPreferenceKey.LAST_IDENTITY_ACTION_TIMESTAMP.getKey(), paramLong).apply();
  }
  
  public static void j(String paramString)
  {
    b().putString(SharedPreferenceKey.CASH_CUSTOMER_ALLOWED.getKey(), paramString).apply();
  }
  
  public static void j(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.REPLAY_SETTING.getKey(), paramBoolean).apply();
  }
  
  public static long k()
  {
    return bN().getLong(SharedPreferenceKey.LAST_FIND_FRIENDS_WITHOUT_CACHE_TIMESTAMP.getKey(), 0L);
  }
  
  public static void k(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_STORIES.getKey(), paramString).apply();
  }
  
  public static void k(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.FILTERS_ENABLED.getKey(), paramBoolean).apply();
  }
  
  @cgc
  public static String l()
  {
    return bN().getString(SharedPreferenceKey.USERNAME.getKey(), null);
  }
  
  public static void l(String paramString)
  {
    paramString = (bhi)sGson.fromJson(paramString, bhi.class);
    k(co.a(paramString.a()));
    x(co.a(paramString.b()));
    w(co.a(paramString.d()));
    y(co.a(paramString.c()));
  }
  
  public static void l(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.FRONT_FACING_FLASH_SETTING.getKey(), paramBoolean).apply();
  }
  
  public static void m(String paramString)
  {
    paramString = (bhi)sGson.fromJson(paramString, bhi.class);
    x(co.a(paramString.b()));
    w(co.a(paramString.d()));
    y(co.a(paramString.c()));
  }
  
  public static void m(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IS_SEARCHABLE_BY_PHONE_NUMBER.getKey(), paramBoolean).apply();
  }
  
  public static boolean m()
  {
    boolean bool1 = false;
    boolean bool2 = bN().getBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false);
    Timber.c("UserPrefs", "Is logged in: " + bool2, new Object[0]);
    if (((bool2) && (l() != null)) || (H())) {
      bool1 = true;
    }
    return bool1;
  }
  
  public static void n()
  {
    b().putBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false).putString(SharedPreferenceKey.USERNAME.getKey(), null).apply();
  }
  
  public static void n(@cgb String paramString)
  {
    b().putString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_NAME.getKey(), paramString).apply();
  }
  
  public static void n(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true);
    localEditor.putBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), paramBoolean);
    localEditor.apply();
  }
  
  public static int o(boolean paramBoolean)
  {
    if (paramBoolean) {
      return bN().getInt(SharedPreferenceKey.KEYBOARD_HEIGHT_LANDSCAPE.getKey(), -1);
    }
    return bN().getInt(SharedPreferenceKey.KEYBOARD_HEIGHT_PORTRAIT.getKey(), -1);
  }
  
  public static void o(String paramString)
  {
    b().putString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_VALUE.getKey(), paramString).apply();
  }
  
  public static boolean o()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (bN().getBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false))
    {
      bool1 = bool2;
      if (l() == null) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static void p(String paramString)
  {
    b().putString(SharedPreferenceKey.SNAP_TAG_IMAGE_ID.getKey(), paramString).apply();
  }
  
  public static void p(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IS_ACCOUNT_LOCKED.getKey(), paramBoolean).apply();
  }
  
  public static boolean p()
  {
    boolean bool = bN().getBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false);
    if ((q()) || (r())) {}
    for (int i = 1; (bool) && (v()) && (i != 0); i = 0) {
      return true;
    }
    return false;
  }
  
  public static void q(String paramString)
  {
    b().putString(SharedPreferenceKey.TRANSCODING_STATE.getKey(), paramString).apply();
  }
  
  public static void q(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.DEMOGRAPHICS_TRACKING_SENT_FLAG.getKey(), paramBoolean).apply();
  }
  
  public static boolean q()
  {
    return bN().getBoolean(SharedPreferenceKey.NEEDS_PHONE_VERIFICATION.getKey(), false);
  }
  
  public static void r(String paramString)
  {
    b().putString(SharedPreferenceKey.TRANSCODING_HISTORY.getKey(), paramString).apply();
  }
  
  public static void r(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.TRANSCODING_IN_PROGRESS_FLAG.getKey(), paramBoolean).apply();
  }
  
  public static boolean r()
  {
    return bN().getBoolean(SharedPreferenceKey.NEEDS_CAPTCHA_VERIFICATION.getKey(), false);
  }
  
  public static String s()
  {
    return bN().getString(SharedPreferenceKey.CAPTCHA_PROMPT.getKey(), null);
  }
  
  public static void s(String paramString)
  {
    b().putString(SharedPreferenceKey.YEAR_CLASS.getKey(), paramString).apply();
  }
  
  public static void s(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_RED_GEAR_IS_ON.getKey(), paramBoolean).apply();
  }
  
  public static void t(String paramString)
  {
    b().putString(SharedPreferenceKey.URL_ROUTING_MAP.getKey(), paramString).apply();
  }
  
  public static void t(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_EMAIL_VERIFIED.getKey(), paramBoolean).apply();
  }
  
  public static boolean t()
  {
    return bN().getBoolean(SharedPreferenceKey.RAW_THUMBNAIL_UPLOAD_ENABLED.getKey(), true);
  }
  
  public static long u()
  {
    return bN().getLong(SharedPreferenceKey.BIRTHDAY_THIS_YEAR_IN_MILLIS.getKey(), 0L);
  }
  
  public static void u(String paramString)
  {
    b().putString(SharedPreferenceKey.IDENTITY_PENDING_EMAIL.getKey(), paramString).apply();
  }
  
  public static void u(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_PHONE_PASSWORD_CONFIRMED.getKey(), paramBoolean).apply();
  }
  
  public static void v(String paramString)
  {
    b().putString(SharedPreferenceKey.PHONE_VERIFICATION_SMS_FORMAT.getKey(), paramString).apply();
  }
  
  public static void v(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_TWO_FA_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean v()
  {
    return bN().getBoolean(SharedPreferenceKey.IS_REGISTERING.getKey(), false);
  }
  
  @cgc
  public static String w()
  {
    return bN().getString(SharedPreferenceKey.GCM_REGISTRATION_ID.getKey(), null);
  }
  
  private static void w(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_CONVERSATIONS.getKey(), paramString).apply();
  }
  
  public static void w(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_ADD_NEARBY_ENABLED.getKey(), paramBoolean).apply();
  }
  
  @cgc
  public static String x()
  {
    return bN().getString(SharedPreferenceKey.DISPLAY_NAME.getKey(), null);
  }
  
  private static void x(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_UPDATES.getKey(), paramString).apply();
  }
  
  public static void x(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_HIGH_LOCATION_REQUIRED.getKey(), paramBoolean).apply();
  }
  
  @cgc
  public static String y()
  {
    if (!TextUtils.isEmpty(x())) {
      return x();
    }
    if (!TextUtils.isEmpty(bO())) {
      return bO();
    }
    return l();
  }
  
  private static void y(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_FRIENDS.getKey(), paramString).apply();
  }
  
  public static void y(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = b();
    String str = SharedPreferenceKey.TAP_TO_SKIP_COUNT.getKey();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localEditor.putInt(str, i).apply();
      return;
    }
  }
  
  public static long z()
  {
    return bN().getLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_TAKEN_TIMESTAMP.getKey(), 0L);
  }
  
  private static List<Long> z(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = new ArrayList();
    }
    ArrayList localArrayList;
    for (;;)
    {
      localArrayList = new ArrayList();
      paramString = paramString.iterator();
      label30:
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        try
        {
          l = Long.parseLong(str);
          localArrayList.add(Long.valueOf(l));
          break label30;
          paramString = new ArrayList(Arrays.asList(paramString.split("~")));
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            Timber.a("failed to parse long from string", localNumberFormatException);
            long l = System.currentTimeMillis();
          }
        }
      }
    }
    return localArrayList;
  }
  
  public static void z(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.SWIPED_DOWN_IN_VIEWER.getKey(), paramBoolean).apply();
  }
  
  public final boolean by()
  {
    Object localObject2 = (ajv)mUserProvider.get();
    if ((bx() == null) || (bx().size() == 0)) {
      return true;
    }
    Object localObject1 = mContactsOnSnapchat;
    localObject2 = mContactsNotOnSnapchat;
    if (((localObject1 == null) || (((List)localObject1).size() == 0)) && ((localObject2 == null) || (((List)localObject1).size() == 0))) {
      return true;
    }
    localObject1 = (Long)bx().get(0);
    return Long.valueOf(System.currentTimeMillis()).longValue() - ((Long)localObject1).longValue() > 3600000L;
  }
}

/* Location:
 * Qualified Name:     ajx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */