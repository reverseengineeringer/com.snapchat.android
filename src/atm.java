import android.text.TextUtils;
import com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions;
import com.snapchat.android.model.Friend;
import java.util.Iterator;
import java.util.List;

public final class atm
{
  private static final atm INSTANCE = new atm();
  
  public static atm a()
  {
    return INSTANCE;
  }
  
  public static Friend a(bhu parambhu, @cgb ajv paramajv)
  {
    parambhu = new Friend(parambhu, paramajv);
    paramajv.e(parambhu);
    paramajv.d(parambhu);
    paramajv = paramajv.q();
    int i = paramajv.indexOf(parambhu);
    if (i != -1) {
      getmHasBeenAddedAsFriend = true;
    }
    return parambhu;
  }
  
  @cgb
  public static Friend a(@cgb String paramString, @cgc ajv paramajv)
  {
    if (paramajv != null)
    {
      paramajv = paramajv.a(paramString);
      if (paramajv != null) {
        return paramajv;
      }
    }
    return new Friend(paramString);
  }
  
  public static void a(String paramString1, String paramString2, ajv paramajv)
  {
    if (paramString1.equals(ajx.l())) {
      ajx.g(paramString2);
    }
    do
    {
      return;
      paramString1 = paramajv.a(paramString1);
    } while (paramString1 == null);
    mDisplayName = paramString2;
  }
  
  public static void a(@cgb String paramString, boolean paramBoolean, @cgb ajv paramajv)
  {
    Friend localFriend = paramajv.a(paramString);
    if (localFriend != null) {
      mHasBeenAddedAsFriend = paramBoolean;
    }
    paramajv = paramajv.n().iterator();
    while (paramajv.hasNext())
    {
      localFriend = (Friend)paramajv.next();
      if (TextUtils.equals(localFriend.h(), paramString)) {
        mHasBeenAddedAsFriend = paramBoolean;
      }
    }
  }
  
  public static boolean a(@cgc Friend paramFriend)
  {
    if (paramFriend == null) {
      if (ajx.g() != SettingsFragment.PrivacyOptions.EVERYONE.ordinal()) {}
    }
    while ((!mIsLocalStory) && (!mIsSharedStory) && (!mIsBlocked))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public static boolean a(String paramString)
  {
    ajv localajv = ajv.g();
    if (localajv == null) {
      return false;
    }
    return a(localajv.a(paramString));
  }
  
  @Deprecated
  @cgb
  public static Friend b(@cgb String paramString, @cgc ajv paramajv)
  {
    if (paramajv != null)
    {
      paramajv = paramajv.a(paramString);
      if (paramajv != null) {
        return paramajv;
      }
    }
    return new Friend(paramString);
  }
  
  @cgc
  public static Friend c(@cgb String paramString, @cgc ajv paramajv)
  {
    if (paramajv != null) {
      return paramajv.b(paramString);
    }
    return null;
  }
  
  public static boolean d(String paramString, @cgc ajv paramajv)
  {
    if (paramajv != null)
    {
      paramString = paramajv.a(paramString);
      if (paramString != null) {
        return paramString.j();
      }
    }
    return false;
  }
  
  public static String e(String paramString, @cgc ajv paramajv)
  {
    String str = paramString;
    if (paramajv != null)
    {
      paramajv = paramajv.a(paramString);
      str = paramString;
      if (paramajv != null) {
        str = paramajv.k();
      }
    }
    return str;
  }
  
  public static boolean f(String paramString, @cgc ajv paramajv)
  {
    if (paramajv == null) {
      return false;
    }
    return paramajv.c(paramString);
  }
  
  public static boolean g(String paramString, @cgb ajv paramajv)
  {
    boolean bool2 = false;
    paramString = paramajv.a(paramString);
    boolean bool1 = bool2;
    if (paramString != null)
    {
      bool1 = bool2;
      if (!mIsBlocked) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static void h(String paramString, ajv paramajv)
  {
    paramajv.a(paramString, false);
  }
}

/* Location:
 * Qualified Name:     atm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */