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

public final class akr
{
  public static final int DEFAULT_DELAY_RELEASE_TIME = 600;
  public static final int DEFAULT_NUM_RECENT_FINDFRIENDS_REQUEST = 10;
  public static final int DEFAULT_NUM_RECENT_FIND_SUGGESTED_FRIENDS_REQUEST = 10;
  private static final String DELIMITER = "~";
  private static final String TAG = "UserPrefs";
  private static Context sContext = null;
  private static final Gson sGson = new GsonBuilder().create();
  private static final akr sInstance = new akr();
  private static SharedPreferences sSharedPreferences;
  protected final Provider<akp> mUserProvider;
  
  public akr()
  {
    this(akp.UNSAFE_USER_PROVIDER);
  }
  
  private akr(Provider<akp> paramProvider)
  {
    mUserProvider = paramProvider;
  }
  
  public static long A()
  {
    return bI().getLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_CACHED_TIMESTAMP.getKey(), 0L);
  }
  
  public static void A(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.SOUND_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static void B(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.LED_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean B()
  {
    return bI().getBoolean(SharedPreferenceKey.PROFILE_IMAGES_UPLOADED.getKey(), true);
  }
  
  public static void C(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.WAKE_SCREEN_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean C()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_PROFILE_IMAGES.getKey(), true);
  }
  
  public static int D()
  {
    return bI().getInt(SharedPreferenceKey.PROFILE_IMAGES_SHARING_COUNT.getKey(), 0);
  }
  
  public static void D(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.NOTIFICATIONS_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean E()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static String F()
  {
    return bI().getString(SharedPreferenceKey.AUTH_TOKEN.getKey(), null);
  }
  
  public static String G()
  {
    return bI().getString(SharedPreferenceKey.EMAIL.getKey(), null);
  }
  
  public static boolean H()
  {
    return bI().getBoolean(SharedPreferenceKey.IS_SNAPKIDZ_ACCOUNT.getKey(), false);
  }
  
  public static int I()
  {
    return bI().getInt(SharedPreferenceKey.SCORE.getKey(), 0);
  }
  
  public static boolean J()
  {
    return bI().getBoolean(SharedPreferenceKey.SHOULD_SHOW_POST_STORY_DIALOG.getKey(), false);
  }
  
  public static boolean K()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void L()
  {
    if (!K()) {
      new qr(OnboardingTooltip.SNAP).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean M()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SEEN_CAPTION_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void N()
  {
    if (!M()) {
      new qr(OnboardingTooltip.CAPTION).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_CAPTION_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean O()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static boolean P()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_POSTED_STORY_FROM_SEND_TO.getKey(), false);
  }
  
  public static void Q()
  {
    if (!P()) {
      new qr(OnboardingTooltip.MY_STORY).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_POSTED_STORY_FROM_SEND_TO.getKey(), true).apply();
  }
  
  public static boolean R()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA.getKey(), false);
  }
  
  public static void S()
  {
    if (!R()) {
      new qr(OnboardingTooltip.FIRST_LOCATION).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA.getKey(), true).apply();
  }
  
  public static boolean T()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_ACCEPTED_SQUARE_TOS.getKey(), false);
  }
  
  public static void U()
  {
    new qr().a(ClientProperty.SQUARE_TOS_ACCEPTED, "true").execute();
    b().putBoolean(SharedPreferenceKey.HAS_ACCEPTED_SQUARE_TOS.getKey(), true).apply();
  }
  
  public static boolean V()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_ACCEPTED_SNAPCASH_TOS.getKey(), false);
  }
  
  public static void W()
  {
    new qr().a(ClientProperty.SNAPCASH_NEW_TOS_ACCEPTED, "true").execute();
    b().putBoolean(SharedPreferenceKey.HAS_ACCEPTED_SNAPCASH_TOS.getKey(), true).apply();
  }
  
  public static boolean X()
  {
    return bI().getBoolean(SharedPreferenceKey.SHOULD_SHOW_CLEAR_CONVERSATION_DIALOG.getKey(), false);
  }
  
  public static void Y()
  {
    b().putBoolean(SharedPreferenceKey.SHOULD_SHOW_CLEAR_CONVERSATION_DIALOG.getKey(), false).apply();
  }
  
  public static boolean Z()
  {
    SharedPreferences localSharedPreferences = bI();
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
  
  public static akr a()
  {
    return sInstance;
  }
  
  public static void a(int paramInt)
  {
    b().putInt(SharedPreferenceKey.APP_VERSION_CODE.getKey(), paramInt).apply();
  }
  
  public static void a(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    bI().registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
  
  @awj
  public static void a(bkq parambkq)
  {
    b().putString(SharedPreferenceKey.AUTH_TOKEN.getKey(), parambkq.o()).putString(SharedPreferenceKey.EMAIL.getKey(), parambkq.q()).putBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), avb.a(parambkq.m())).apply();
    if (parambkq.I() != null) {
      a(parambkq.I());
    }
  }
  
  public static void a(String paramString)
  {
    b().putString(SharedPreferenceKey.PHONE_NUMBER.getKey(), paramString).apply();
  }
  
  @awj
  private static void a(Map<String, String> paramMap)
  {
    SharedPreferences localSharedPreferences = bI();
    Object localObject1 = null;
    Iterator localIterator = aao.a.entrySet().iterator();
    Object localObject3;
    String str1;
    String str2;
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject3 = (Map.Entry)localIterator.next();
      str1 = (String)((Map.Entry)localObject3).getValue();
      str2 = (String)aao.b.get(str1);
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
          localObject1 = new qr();
        }
      }
    }
    label256:
    for (;;)
    {
      ((qr)localObject1).a(ClientProperty.valueOf(str1), (String)localObject3);
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
        ((qr)localObject1).execute();
      }
      return;
    }
  }
  
  public static void a(UUID paramUUID)
  {
    b().putString(SharedPreferenceKey.UNIQUE_DEVICE_ID.getKey(), paramUUID.toString()).apply();
  }
  
  public static void a(@chc rd paramrd)
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), paramrd.a());
    String str2 = SharedPreferenceKey.CASH_CARD_BRAND.getKey();
    if (paramrd.d() != null) {}
    for (String str1 = paramrd.d().name();; str1 = null)
    {
      localEditor.putString(str2, str1);
      localEditor.putString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), paramrd.e());
      localEditor.putBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), paramrd.b());
      localEditor.putBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), paramrd.c());
      localEditor.putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), false);
      localEditor.apply();
      bbo.a().a(new bcf());
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
  
  public static void a(boolean paramBoolean, @chc String paramString1, @chc String paramString2, @chc String paramString3)
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
  
  public static String aA()
  {
    Object localObject = ct.b(bK());
    String str1 = ct.b(bM());
    String str2 = ct.b(bL());
    String str3 = ct.b(ay());
    localObject = new bii().d((String)localObject).c(str1).a(str3).b(str2);
    return sGson.toJson(localObject);
  }
  
  public static void aB()
  {
    k("");
    w("");
    y("");
    x("");
  }
  
  public static String aC()
  {
    Object localObject = ct.b(bK());
    String str1 = ct.b(bM());
    String str2 = ct.b(bL());
    localObject = new bii().d((String)localObject).c(str1).b(str2);
    return sGson.toJson(localObject);
  }
  
  public static String aD()
  {
    return bI().getString(SharedPreferenceKey.STUDY_SETTINGS.getKey(), "{}");
  }
  
  public static boolean aE()
  {
    return bI().getBoolean(SharedPreferenceKey.IS_ACCOUNT_LOCKED.getKey(), false);
  }
  
  public static boolean aF()
  {
    return bI().getBoolean(SharedPreferenceKey.DEMOGRAPHICS_TRACKING_SENT_FLAG.getKey(), false);
  }
  
  public static boolean aG()
  {
    return bI().getBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_CONFIRMATION.getKey(), true);
  }
  
  public static void aH()
  {
    b().putBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_CONFIRMATION.getKey(), false).apply();
  }
  
  public static boolean aI()
  {
    return bI().getBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_ENABLED.getKey(), false);
  }
  
  public static long aJ()
  {
    return bI().getLong(SharedPreferenceKey.DISCOVER_TIME_LAST_SEEN.getKey(), -1L);
  }
  
  public static long aK()
  {
    return bI().getLong(SharedPreferenceKey.CHANNEL_LIST_TIMESTAMP.getKey(), -1L);
  }
  
  public static String aL()
  {
    return bI().getString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_NAME.getKey(), null);
  }
  
  public static String aM()
  {
    return bI().getString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_VALUE.getKey(), null);
  }
  
  public static void aN()
  {
    b().putBoolean(SharedPreferenceKey.HAS_SHARED_DISCOVER_SNAP.getKey(), true).apply();
  }
  
  public static boolean aO()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SHARED_DISCOVER_SNAP.getKey(), false);
  }
  
  public static boolean aP()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void aQ()
  {
    if (!aP()) {
      new qr(OnboardingTooltip.PROFILE).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean aR()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_ACCEPTED_ADD_NEARBY_PROMPT.getKey(), false);
  }
  
  public static void aS()
  {
    if (!aR()) {
      new qr(OnboardingTooltip.ADD_NEARBY_PROMPT).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_ACCEPTED_ADD_NEARBY_PROMPT.getKey(), true).apply();
  }
  
  public static boolean aT()
  {
    return bI().getBoolean(SharedPreferenceKey.HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE.getKey(), false);
  }
  
  public static void aU()
  {
    if (!aT()) {
      new qr(OnboardingTooltip.NEW_FRIEND_REQUEST).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE.getKey(), true).apply();
  }
  
  public static boolean aV()
  {
    return bI().getBoolean(SharedPreferenceKey.SHOULD_SHOW_SUGGESTION_PROMPT.getKey(), false);
  }
  
  public static String aW()
  {
    return bI().getString(SharedPreferenceKey.SUGGESTION_PROMPT_LINK.getKey(), null);
  }
  
  public static boolean aX()
  {
    return !TextUtils.isEmpty(aY());
  }
  
  public static String aY()
  {
    return bI().getString(SharedPreferenceKey.SUGGESTION_PROMPT_TEXT.getKey(), null);
  }
  
  public static String aZ()
  {
    return bI().getString(SharedPreferenceKey.SUGGESTION_PROMPT_BUTTON_TEXT.getKey(), null);
  }
  
  public static boolean aa()
  {
    return bI().getBoolean(SharedPreferenceKey.FILTERS_ENABLED.getKey(), false);
  }
  
  public static boolean ab()
  {
    return bI().getBoolean(SharedPreferenceKey.FRONT_FACING_FLASH_SETTING.getKey(), false);
  }
  
  public static long ac()
  {
    return bI().getLong(SharedPreferenceKey.LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP.getKey(), 0L);
  }
  
  public static Map<String, String> ad()
  {
    String str = bI().getString(SharedPreferenceKey.USER_TARGETING.getKey(), "{}");
    if (TextUtils.isEmpty(str)) {
      return new HashMap();
    }
    return (Map)new aur().a(str, new avz.1().getType());
  }
  
  public static boolean ae()
  {
    return bI().getBoolean(SharedPreferenceKey.SYNC_ON_FEED_OPEN.getKey(), false);
  }
  
  public static boolean af()
  {
    return bI().getBoolean(SharedPreferenceKey.IS_SEARCHABLE_BY_PHONE_NUMBER.getKey(), false);
  }
  
  public static long ag()
  {
    return bI().getLong(SharedPreferenceKey.LAST_EXTERNAL_IMAGE_TAKEN_TIMESTAMP.getKey(), 0L);
  }
  
  public static void ah()
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), false);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_BRAND.getKey(), null);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), null);
    localEditor.putBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), false);
    localEditor.putBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), false);
    localEditor.putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true);
    localEditor.apply();
    bbo.a().a(new bcf());
  }
  
  public static void ai()
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), false);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_BRAND.getKey(), null);
    localEditor.putString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), null);
    localEditor.apply();
    bbo.a().a(new bcf());
  }
  
  public static void aj()
  {
    b().putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true).apply();
  }
  
  public static void ak()
  {
    b().putBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), true).apply();
  }
  
  public static void al()
  {
    b().putBoolean(SharedPreferenceKey.CASH_SEND_CONFIRMATION.getKey(), false).apply();
  }
  
  public static void am()
  {
    b().putBoolean(SharedPreferenceKey.CASH_SWIPE_SEND_CONFIRMATION.getKey(), false).apply();
  }
  
  @chc
  public static boolean an()
  {
    return bI().getBoolean(SharedPreferenceKey.CASH_SERVICE_ACTIVE.getKey(), true);
  }
  
  @chd
  public static String ao()
  {
    return bI().getString(SharedPreferenceKey.CASH_PROVIDER_NAME.getKey(), null);
  }
  
  @chc
  public static ScCashResponsePayload.Status ap()
  {
    String str = bI().getString(SharedPreferenceKey.CASH_CUSTOMER_ALLOWED.getKey(), null);
    if (str == null) {
      return ScCashResponsePayload.Status.OK;
    }
    return ScCashResponsePayload.Status.valueOf(str);
  }
  
  public static boolean aq()
  {
    return bI().getBoolean(SharedPreferenceKey.CASH_CARD_LINKED.getKey(), false);
  }
  
  @chd
  public static String ar()
  {
    return bI().getString(SharedPreferenceKey.CASH_CARD_BRAND.getKey(), null);
  }
  
  @chd
  public static String as()
  {
    return bI().getString(SharedPreferenceKey.CASH_CARD_SUFFIX.getKey(), null);
  }
  
  public static boolean at()
  {
    return bI().getBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true);
  }
  
  public static boolean au()
  {
    return bI().getBoolean(SharedPreferenceKey.CASH_HAS_TRANSACTIONS.getKey(), false);
  }
  
  public static boolean av()
  {
    return bI().getBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), false);
  }
  
  public static boolean aw()
  {
    return bI().getBoolean(SharedPreferenceKey.CASH_SEND_CONFIRMATION.getKey(), true);
  }
  
  public static boolean ax()
  {
    return bI().getBoolean(SharedPreferenceKey.CASH_SWIPE_SEND_CONFIRMATION.getKey(), true);
  }
  
  public static String ay()
  {
    return bI().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_STORIES.getKey(), "");
  }
  
  public static void az()
  {
    k("");
  }
  
  public static SharedPreferences.Editor b()
  {
    return bI().edit();
  }
  
  public static void b(int paramInt)
  {
    b().putInt(SharedPreferenceKey.PROFILE_IMAGES_SHARING_COUNT.getKey(), paramInt).apply();
  }
  
  public static void b(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    bI().unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
  
  @awj
  public static void b(bkq parambkq)
  {
    int i;
    Object localObject2;
    String str;
    if (TextUtils.isEmpty(parambkq.x()))
    {
      i = SettingsFragment.PrivacyOptions.valueOf("FRIENDS").ordinal();
      localObject2 = b().putString(SharedPreferenceKey.USERNAME.getKey(), parambkq.n()).putString(SharedPreferenceKey.AUTH_TOKEN.getKey(), parambkq.o()).putString(SharedPreferenceKey.EMAIL.getKey(), parambkq.q()).putBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), avb.a(parambkq.m())).putString(SharedPreferenceKey.GCM_REGISTRATION_ID.getKey(), parambkq.p()).putInt(SharedPreferenceKey.NUM_SNAPS_RECEIVED.getKey(), avb.a(parambkq.z())).putInt(SharedPreferenceKey.NUM_SNAPS_SENT.getKey(), avb.a(parambkq.y())).putInt(SharedPreferenceKey.SCORE.getKey(), avb.a(parambkq.A())).putString(SharedPreferenceKey.MOBILE_VERIFICATION_KEY.getKey(), parambkq.s()).putString(SharedPreferenceKey.MOBILE_VERIFICATION_SEND_TO_NUMBER.getKey(), parambkq.F()).putInt(SharedPreferenceKey.SNAP_PRIVACY_SETTING.getKey(), avb.a(parambkq.w())).putInt(SharedPreferenceKey.STORY_PRIVACY_SETTING.getKey(), i).putBoolean(SharedPreferenceKey.IS_SEARCHABLE_BY_PHONE_NUMBER.getKey(), avb.a(parambkq.G())).putLong(SharedPreferenceKey.LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP.getKey(), avb.a(parambkq.R()));
      str = SharedPreferenceKey.USER_TARGETING.getKey();
      localObject1 = parambkq.ab();
      if (localObject1 != null) {
        break label593;
      }
    }
    label593:
    for (Object localObject1 = "{}";; localObject1 = new aur().a(localObject1))
    {
      ((SharedPreferences.Editor)localObject2).putString(str, (String)localObject1).putBoolean(SharedPreferenceKey.RAW_THUMBNAIL_UPLOAD_ENABLED.getKey(), avb.a(parambkq.ac())).apply();
      a(parambkq.r());
      TranscodingPreferencesWrapper.a();
      TranscodingPreferencesWrapper.a(avb.a(parambkq.t()));
      e(parambkq.v());
      boolean bool = avb.a(parambkq.u());
      b().putBoolean(SharedPreferenceKey.SAVE_STORY_TO_GALLERY_ENABLED.getKey(), bool).apply();
      bool = avb.a(parambkq.Z());
      b().putBoolean(SharedPreferenceKey.VIDEO_FILTERS.getKey(), bool).apply();
      long l = avb.a(parambkq.C());
      if (l > j()) {
        a(l);
      }
      localObject1 = parambkq.J();
      if (localObject1 != null) {
        b().putBoolean(SharedPreferenceKey.FILTERS_ENABLED.getKey(), avb.a(((bit)localObject1).a())).putBoolean(SharedPreferenceKey.FRONT_FACING_FLASH_SETTING.getKey(), avb.a(((bit)localObject1).b())).apply();
      }
      localObject1 = akn.a().a(parambkq.K());
      b().putString(SharedPreferenceKey.STUDY_SETTINGS.getKey(), (String)localObject1).apply();
      if (parambkq.H() == null) {
        break label610;
      }
      localObject1 = parambkq.H().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = OnboardingTooltip.fromValue((String)((Iterator)localObject1).next());
        if (localObject2 != OnboardingTooltip.UNKNOWN) {
          b().putBoolean(((OnboardingTooltip)localObject2).getSharedPreferenceKey(), true).apply();
        }
      }
      i = SettingsFragment.PrivacyOptions.valueOf(parambkq.x()).ordinal();
      break;
    }
    label610:
    if (parambkq.I() != null) {
      a(parambkq.I());
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
    if (paramLong > k())
    {
      b().putLong(SharedPreferenceKey.LAST_FIND_FRIENDS_WITHOUT_CACHE_TIMESTAMP.getKey(), paramLong).apply();
      return true;
    }
    return false;
  }
  
  public static boolean bA()
  {
    return bI().getBoolean(SharedPreferenceKey.SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED.getKey(), false);
  }
  
  public static void bB()
  {
    b().putBoolean(SharedPreferenceKey.SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED.getKey(), false).apply();
  }
  
  public static boolean bC()
  {
    SharedPreferences localSharedPreferences = bI();
    boolean bool = localSharedPreferences.getBoolean(SharedPreferenceKey.LEGACY_SOUND_VIBRATION_ENABLED.getKey(), false);
    return localSharedPreferences.getBoolean(SharedPreferenceKey.VIBRATION_ENABLED.getKey(), bool);
  }
  
  public static boolean bD()
  {
    SharedPreferences localSharedPreferences = bI();
    boolean bool = localSharedPreferences.getBoolean(SharedPreferenceKey.LEGACY_SOUND_VIBRATION_ENABLED.getKey(), false);
    return localSharedPreferences.getBoolean(SharedPreferenceKey.SOUND_ENABLED.getKey(), bool);
  }
  
  public static boolean bE()
  {
    return bI().getBoolean(SharedPreferenceKey.LED_ENABLED.getKey(), true);
  }
  
  public static boolean bF()
  {
    return bI().getBoolean(SharedPreferenceKey.WAKE_SCREEN_ENABLED.getKey(), true);
  }
  
  public static boolean bG()
  {
    return bI().getBoolean(SharedPreferenceKey.NOTIFICATIONS_ENABLED.getKey(), true);
  }
  
  public static boolean bH()
  {
    return bI().getBoolean(SharedPreferenceKey.VIDEO_FILTERS.getKey(), true);
  }
  
  private static SharedPreferences bI()
  {
    if (sContext == null) {
      sContext = SnapchatApplication.b();
    }
    if (sSharedPreferences == null) {
      sSharedPreferences = PreferenceManager.getDefaultSharedPreferences(sContext);
    }
    return sSharedPreferences;
  }
  
  @chd
  private static String bJ()
  {
    return bI().getString(SharedPreferenceKey.ANDROID_DISPLAY_NAME.getKey(), null);
  }
  
  private static String bK()
  {
    return bI().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_CONVERSATIONS.getKey(), "");
  }
  
  private static String bL()
  {
    return bI().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_UPDATES.getKey(), "");
  }
  
  private static String bM()
  {
    return bI().getString(SharedPreferenceKey.RESPONSE_CHECKSUM_FRIENDS.getKey(), "");
  }
  
  private static boolean bN()
  {
    try
    {
      int i = Integer.valueOf(Settings.Secure.getInt(sContext.getContentResolver(), "location_mode")).intValue();
      return i == 3;
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException) {}
    return new aim().b();
  }
  
  public static long ba()
  {
    return bI().getLong(SharedPreferenceKey.SUGGESTION_PROMPT_LAST_DISMISSED_TIMESTAMP.getKey(), 0L);
  }
  
  public static long bb()
  {
    return bI().getLong(SharedPreferenceKey.SUGGESTION_PROMPT_DURATION_IN_MILLIS.getKey(), 604800000L);
  }
  
  public static String bc()
  {
    return bI().getString(SharedPreferenceKey.SNAP_TAG_IMAGE_ID.getKey(), null);
  }
  
  public static String bd()
  {
    return bI().getString(SharedPreferenceKey.TRANSCODING_STATE.getKey(), TranscodingPreferencesWrapper.TranscodingEnabled.UNKNOWN.name());
  }
  
  public static boolean be()
  {
    return bI().getBoolean(SharedPreferenceKey.TRANSCODING_IN_PROGRESS_FLAG.getKey(), false);
  }
  
  public static String bf()
  {
    return bI().getString(SharedPreferenceKey.TRANSCODING_HISTORY.getKey(), "");
  }
  
  public static String bg()
  {
    return bI().getString(SharedPreferenceKey.YEAR_CLASS.getKey(), "{}");
  }
  
  public static String bh()
  {
    return bI().getString(SharedPreferenceKey.URL_ROUTING_MAP.getKey(), "{}");
  }
  
  public static boolean bi()
  {
    return bI().getBoolean(SharedPreferenceKey.IDENTITY_RED_GEAR_IS_ON.getKey(), false);
  }
  
  public static boolean bj()
  {
    return bI().getBoolean(SharedPreferenceKey.IDENTITY_IS_EMAIL_VERIFIED.getKey(), false);
  }
  
  public static String bk()
  {
    return bI().getString(SharedPreferenceKey.IDENTITY_PENDING_EMAIL.getKey(), null);
  }
  
  public static String bl()
  {
    return bI().getString(SharedPreferenceKey.PHONE_VERIFICATION_SMS_FORMAT.getKey(), null);
  }
  
  public static long bm()
  {
    return bI().getLong(SharedPreferenceKey.LAST_IDENTITY_ACTION_TIMESTAMP.getKey(), 0L);
  }
  
  public static boolean bn()
  {
    return bI().getBoolean(SharedPreferenceKey.IDENTITY_IS_TWO_FA_ENABLED.getKey(), false);
  }
  
  public static boolean bo()
  {
    return bI().getBoolean(SharedPreferenceKey.IDENTITY_IS_HIGH_LOCATION_REQUIRED.getKey(), false);
  }
  
  public static boolean bp()
  {
    aim localaim = new aim();
    if ((localaim.a()) || (localaim.b())) {}
    for (int i = 1; i == 0; i = 0) {
      return false;
    }
    if (bo()) {
      return bN();
    }
    return true;
  }
  
  public static List<Long> bq()
  {
    return z(bI().getString(SharedPreferenceKey.IDENTITY_SUGGESTED_FRIEND_FIND_TIMESTAMPS.getKey(), null));
  }
  
  public static int br()
  {
    return bI().getInt(SharedPreferenceKey.IDENTITY_SUGGESTED_FRIEND_FETCH_THRESHOLD.getKey(), 0);
  }
  
  public static int bs()
  {
    return bI().getInt(SharedPreferenceKey.DEVELOPER_OPTIONS_RELEASE_DELAY_TIMER.getKey(), 600);
  }
  
  @chd
  public static UUID bt()
  {
    String str = bI().getString(SharedPreferenceKey.UNIQUE_DEVICE_ID.getKey(), null);
    if (str == null) {
      return null;
    }
    return UUID.fromString(str);
  }
  
  public static List<Long> bu()
  {
    return z(bI().getString(SharedPreferenceKey.FINDFRIENDS_TIMESTAMPS.getKey(), null));
  }
  
  public static boolean bw()
  {
    boolean bool = false;
    if (bI().getInt(SharedPreferenceKey.TAP_TO_SKIP_COUNT.getKey(), 0) > 0) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean bx()
  {
    return bI().getBoolean(SharedPreferenceKey.SEEN_SWIPE_DOWN_TUTORIAL.getKey(), false);
  }
  
  public static void by()
  {
    b().putBoolean(SharedPreferenceKey.SEEN_SWIPE_DOWN_TUTORIAL.getKey(), false).apply();
  }
  
  public static boolean bz()
  {
    return bI().getBoolean(SharedPreferenceKey.SWIPED_DOWN_IN_VIEWER.getKey(), false);
  }
  
  public static int c()
  {
    return bI().getInt(SharedPreferenceKey.NUM_SNAPS_RECEIVED.getKey(), 0);
  }
  
  public static void c(int paramInt)
  {
    b().putInt(SharedPreferenceKey.SNAP_PRIVACY_SETTING.getKey(), paramInt).apply();
  }
  
  public static void c(long paramLong)
  {
    if (bI().getLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_DELETED_TIMESTAMP.getKey(), 0L) < paramLong) {
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
    return bI().getInt(SharedPreferenceKey.NUM_SNAPS_SENT.getKey(), 0);
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
    return bI().getString(SharedPreferenceKey.PHONE_NUMBER.getKey(), "");
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
    catch (ParseException paramString) {}
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
    return bI().getInt(SharedPreferenceKey.SNAP_PRIVACY_SETTING.getKey(), 0);
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
    return bI().getInt(SharedPreferenceKey.STORY_PRIVACY_SETTING.getKey(), 0);
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
    return bI().getInt(SharedPreferenceKey.APP_VERSION_CODE.getKey(), Integer.MIN_VALUE);
  }
  
  public static void i(long paramLong)
  {
    if (paramLong > ba()) {
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
      new qr(OnboardingTooltip.SWIPE_FILTERS).execute();
    }
    b().putBoolean(SharedPreferenceKey.HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE.getKey(), paramBoolean).apply();
  }
  
  public static long j()
  {
    return bI().getLong(SharedPreferenceKey.LAST_SEEN_ADDED_ME_TIMESTAMP.getKey(), 0L);
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
    b().putBoolean(SharedPreferenceKey.FILTERS_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static long k()
  {
    return bI().getLong(SharedPreferenceKey.LAST_FIND_FRIENDS_WITHOUT_CACHE_TIMESTAMP.getKey(), 0L);
  }
  
  public static void k(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_STORIES.getKey(), paramString).apply();
  }
  
  public static void k(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.FRONT_FACING_FLASH_SETTING.getKey(), paramBoolean).apply();
  }
  
  @chd
  public static String l()
  {
    return bI().getString(SharedPreferenceKey.USERNAME.getKey(), null);
  }
  
  public static void l(String paramString)
  {
    paramString = (bii)sGson.fromJson(paramString, bii.class);
    k(ct.a(paramString.a()));
    x(ct.a(paramString.b()));
    w(ct.a(paramString.d()));
    y(ct.a(paramString.c()));
  }
  
  public static void l(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IS_SEARCHABLE_BY_PHONE_NUMBER.getKey(), paramBoolean).apply();
  }
  
  public static void m(String paramString)
  {
    paramString = (bii)sGson.fromJson(paramString, bii.class);
    x(ct.a(paramString.b()));
    w(ct.a(paramString.d()));
    y(ct.a(paramString.c()));
  }
  
  public static void m(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = b();
    localEditor.putBoolean(SharedPreferenceKey.CASH_OUTDATED_PROFILE.getKey(), true);
    localEditor.putBoolean(SharedPreferenceKey.SECURITY_CODE_SETTING.getKey(), paramBoolean);
    localEditor.apply();
  }
  
  public static boolean m()
  {
    boolean bool = false;
    if (((bI().getBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false)) && (l() != null)) || (H())) {
      bool = true;
    }
    return bool;
  }
  
  public static int n(boolean paramBoolean)
  {
    if (paramBoolean) {
      return bI().getInt(SharedPreferenceKey.KEYBOARD_HEIGHT_LANDSCAPE.getKey(), -1);
    }
    return bI().getInt(SharedPreferenceKey.KEYBOARD_HEIGHT_PORTRAIT.getKey(), -1);
  }
  
  public static void n()
  {
    b().putBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false).putString(SharedPreferenceKey.USERNAME.getKey(), null).apply();
  }
  
  public static void n(@chc String paramString)
  {
    b().putString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_NAME.getKey(), paramString).apply();
  }
  
  public static void o(String paramString)
  {
    b().putString(SharedPreferenceKey.DISCOVER_RESOURCE_PARAM_VALUE.getKey(), paramString).apply();
  }
  
  public static void o(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IS_ACCOUNT_LOCKED.getKey(), paramBoolean).apply();
  }
  
  public static boolean o()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (bI().getBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false))
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
    b().putBoolean(SharedPreferenceKey.DEMOGRAPHICS_TRACKING_SENT_FLAG.getKey(), paramBoolean).apply();
  }
  
  public static boolean p()
  {
    boolean bool = bI().getBoolean(SharedPreferenceKey.IS_LOGGED_IN.getKey(), false);
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
    b().putBoolean(SharedPreferenceKey.TRANSCODING_IN_PROGRESS_FLAG.getKey(), paramBoolean).apply();
  }
  
  public static boolean q()
  {
    return bI().getBoolean(SharedPreferenceKey.NEEDS_PHONE_VERIFICATION.getKey(), false);
  }
  
  public static void r(String paramString)
  {
    b().putString(SharedPreferenceKey.TRANSCODING_HISTORY.getKey(), paramString).apply();
  }
  
  public static void r(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_RED_GEAR_IS_ON.getKey(), paramBoolean).apply();
  }
  
  public static boolean r()
  {
    return bI().getBoolean(SharedPreferenceKey.NEEDS_CAPTCHA_VERIFICATION.getKey(), false);
  }
  
  public static String s()
  {
    return bI().getString(SharedPreferenceKey.CAPTCHA_PROMPT.getKey(), null);
  }
  
  public static void s(String paramString)
  {
    b().putString(SharedPreferenceKey.YEAR_CLASS.getKey(), paramString).apply();
  }
  
  public static void s(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_EMAIL_VERIFIED.getKey(), paramBoolean).apply();
  }
  
  public static void t(String paramString)
  {
    b().putString(SharedPreferenceKey.URL_ROUTING_MAP.getKey(), paramString).apply();
  }
  
  public static void t(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_PHONE_PASSWORD_CONFIRMED.getKey(), paramBoolean).apply();
  }
  
  public static boolean t()
  {
    return bI().getBoolean(SharedPreferenceKey.RAW_THUMBNAIL_UPLOAD_ENABLED.getKey(), true);
  }
  
  public static long u()
  {
    return bI().getLong(SharedPreferenceKey.BIRTHDAY_THIS_YEAR_IN_MILLIS.getKey(), 0L);
  }
  
  public static void u(String paramString)
  {
    b().putString(SharedPreferenceKey.IDENTITY_PENDING_EMAIL.getKey(), paramString).apply();
  }
  
  public static void u(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_TWO_FA_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static void v(String paramString)
  {
    b().putString(SharedPreferenceKey.PHONE_VERIFICATION_SMS_FORMAT.getKey(), paramString).apply();
  }
  
  public static void v(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_ADD_NEARBY_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public static boolean v()
  {
    return bI().getBoolean(SharedPreferenceKey.IS_REGISTERING.getKey(), false);
  }
  
  @chd
  public static String w()
  {
    return bI().getString(SharedPreferenceKey.GCM_REGISTRATION_ID.getKey(), null);
  }
  
  private static void w(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_CONVERSATIONS.getKey(), paramString).apply();
  }
  
  public static void w(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.IDENTITY_IS_HIGH_LOCATION_REQUIRED.getKey(), paramBoolean).apply();
  }
  
  @chd
  public static String x()
  {
    return bI().getString(SharedPreferenceKey.DISPLAY_NAME.getKey(), null);
  }
  
  private static void x(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_UPDATES.getKey(), paramString).apply();
  }
  
  public static void x(boolean paramBoolean)
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
  
  @chd
  public static String y()
  {
    if (!TextUtils.isEmpty(x())) {
      return x();
    }
    if (!TextUtils.isEmpty(bJ())) {
      return bJ();
    }
    return l();
  }
  
  private static void y(String paramString)
  {
    b().putString(SharedPreferenceKey.RESPONSE_CHECKSUM_FRIENDS.getKey(), paramString).apply();
  }
  
  public static void y(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.SWIPED_DOWN_IN_VIEWER.getKey(), paramBoolean).apply();
  }
  
  public static long z()
  {
    return bI().getLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_TAKEN_TIMESTAMP.getKey(), 0L);
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
            long l = System.currentTimeMillis();
          }
        }
      }
    }
    return localArrayList;
  }
  
  public static void z(boolean paramBoolean)
  {
    b().putBoolean(SharedPreferenceKey.VIBRATION_ENABLED.getKey(), paramBoolean).apply();
  }
  
  public final boolean bv()
  {
    Object localObject2 = (akp)mUserProvider.get();
    if ((bu() == null) || (bu().size() == 0)) {
      return true;
    }
    Object localObject1 = mContactsOnSnapchat;
    localObject2 = mContactsNotOnSnapchat;
    if (((localObject1 == null) || (((List)localObject1).size() == 0)) && ((localObject2 == null) || (((List)localObject1).size() == 0))) {
      return true;
    }
    localObject1 = (Long)bu().get(0);
    return Long.valueOf(System.currentTimeMillis()).longValue() - ((Long)localObject1).longValue() > 3600000L;
  }
}

/* Location:
 * Qualified Name:     akr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */