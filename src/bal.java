import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashSet;
import java.util.Set;

public final class bal
{
  public static final String NEITHER_PHONE_NOR_CAPTCHA = "https://neither-phone-nor-captcha-dot-feelinsonice-hrd.appspot.com";
  public static final String ONLY_CAPTCHA = "https://only-captcha-dot-feelinsonice-hrd.appspot.com";
  public static final String PHONE_AND_CAPTCHA = "https://phone-and-captcha-dot-feelinsonice-hrd.appspot.com";
  private static final Set<String> developerUsernames = new HashSet();
  private static final bal sInstance = new bal();
  
  static
  {
    developerUsernames.add("danoz");
    developerUsernames.add("dianayl");
    developerUsernames.add("nic");
    developerUsernames.add("tina");
    developerUsernames.add("mduong");
    developerUsernames.add("dongler");
    developerUsernames.add("tobiasmcg");
    developerUsernames.add("davidtian-test");
    developerUsernames.add("lskarasawa");
    developerUsernames.add("zhew2013");
    developerUsernames.add("zhewtest1");
    developerUsernames.add("ruoyul");
    developerUsernames.add("ruoyul0");
    developerUsernames.add("xiaosasonia");
  }
  
  public static bal a()
  {
    return sInstance;
  }
  
  @chd
  public static String a(SharedPreferences paramSharedPreferences)
  {
    return paramSharedPreferences.getString(SharedPreferenceKey.DEVELOPER_OPTIONS_CUSTOM_ENDPOINT.getKey(), null);
  }
  
  public static void a(SharedPreferences paramSharedPreferences, String paramString)
  {
    paramSharedPreferences = paramSharedPreferences.edit();
    paramSharedPreferences.putString(SharedPreferenceKey.DEVELOPER_OPTIONS_CUSTOM_ENDPOINT.getKey(), paramString);
    paramSharedPreferences.apply();
  }
  
  public static void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).edit();
    localEditor.putBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_SQUARE_SANDBOX.getKey(), paramBoolean);
    localEditor.apply();
  }
  
  public static boolean a(String paramString)
  {
    return developerUsernames.contains(paramString);
  }
  
  @chd
  public static String b()
  {
    String str2 = a(PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()));
    String str1 = str2;
    if (str2 == null) {
      str1 = amProxyEndpoint.mBaseUrl;
    }
    return str1;
  }
  
  public static String b(String paramString)
  {
    Object localObject;
    if (!ReleaseManager.f()) {
      localObject = amProxyEndpoint.mBaseUrl;
    }
    SharedPreferences localSharedPreferences;
    String str;
    do
    {
      return (String)localObject;
      localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
      str = a(localSharedPreferences);
      localObject = str;
    } while (!TextUtils.isEmpty(str));
    if ((paramString.contains("phone_verify")) || (paramString.contains("register")))
    {
      int i = localSharedPreferences.getInt(SharedPreferenceKey.REGISTRATION_TESTING_ENDPOINT.getKey(), 0);
      switch (i)
      {
      default: 
        throw new RuntimeException("Unexpected value for REGISTRATION_TESTING_ENDPOINT: " + i);
      case 0: 
        return amProxyEndpoint.mBaseUrl;
      case 1: 
        return "https://only-captcha-dot-feelinsonice-hrd.appspot.com";
      case 2: 
        return "https://phone-and-captcha-dot-feelinsonice-hrd.appspot.com";
      }
      return "https://neither-phone-nor-captcha-dot-feelinsonice-hrd.appspot.com";
    }
    return amProxyEndpoint.mBaseUrl;
  }
  
  public static void b(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).edit();
    localEditor.putBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_HORIZONTAL_SCROLL.getKey(), paramBoolean);
    localEditor.apply();
  }
  
  public static boolean c()
  {
    return PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_SQUARE_SANDBOX.getKey(), false);
  }
  
  public static boolean d()
  {
    return PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()).getBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_HORIZONTAL_SCROLL.getKey(), true);
  }
}

/* Location:
 * Qualified Name:     bal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */