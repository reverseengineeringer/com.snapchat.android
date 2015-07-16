import android.text.TextUtils;
import com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions;
import com.snapchat.android.model.Friend;
import java.util.Iterator;
import java.util.List;

public final class auk
{
  private static final auk INSTANCE = new auk();
  
  public static auk a()
  {
    return INSTANCE;
  }
  
  public static Friend a(biu parambiu, @chc akp paramakp)
  {
    parambiu = new Friend(parambiu, paramakp);
    paramakp.e(parambiu);
    paramakp.d(parambiu);
    paramakp = paramakp.q();
    int i = paramakp.indexOf(parambiu);
    if (i != -1) {
      getmHasBeenAddedAsFriend = true;
    }
    return parambiu;
  }
  
  @chc
  public static Friend a(@chc String paramString, @chd akp paramakp)
  {
    if (paramakp != null)
    {
      paramakp = paramakp.a(paramString);
      if (paramakp != null) {
        return paramakp;
      }
    }
    return new Friend(paramString);
  }
  
  public static void a(String paramString1, String paramString2, akp paramakp)
  {
    if (paramString1.equals(akr.l())) {
      akr.g(paramString2);
    }
    do
    {
      return;
      paramString1 = paramakp.a(paramString1);
    } while (paramString1 == null);
    mDisplayName = paramString2;
  }
  
  public static void a(@chc String paramString, boolean paramBoolean, @chc akp paramakp)
  {
    Friend localFriend = paramakp.a(paramString);
    if (localFriend != null) {
      mHasBeenAddedAsFriend = paramBoolean;
    }
    paramakp = paramakp.n().iterator();
    while (paramakp.hasNext())
    {
      localFriend = (Friend)paramakp.next();
      if (TextUtils.equals(localFriend.l(), paramString)) {
        mHasBeenAddedAsFriend = paramBoolean;
      }
    }
  }
  
  public static boolean a(@chd Friend paramFriend)
  {
    if (paramFriend == null) {
      if (akr.g() != SettingsFragment.PrivacyOptions.EVERYONE.ordinal()) {}
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
    akp localakp = akp.g();
    if (localakp == null) {
      return false;
    }
    return a(localakp.a(paramString));
  }
  
  @Deprecated
  @chc
  public static Friend b(@chc String paramString, @chd akp paramakp)
  {
    if (paramakp != null)
    {
      paramakp = paramakp.a(paramString);
      if (paramakp != null) {
        return paramakp;
      }
    }
    return new Friend(paramString);
  }
  
  @chd
  public static Friend c(@chc String paramString, @chd akp paramakp)
  {
    if (paramakp != null) {
      return paramakp.b(paramString);
    }
    return null;
  }
  
  public static boolean d(String paramString, @chd akp paramakp)
  {
    if (paramakp != null)
    {
      paramString = paramakp.a(paramString);
      if (paramString != null) {
        return paramString.n();
      }
    }
    return false;
  }
  
  public static String e(String paramString, @chd akp paramakp)
  {
    String str = paramString;
    if (paramakp != null)
    {
      paramakp = paramakp.a(paramString);
      str = paramString;
      if (paramakp != null) {
        str = paramakp.e();
      }
    }
    return str;
  }
  
  public static boolean f(String paramString, @chd akp paramakp)
  {
    if (paramakp == null) {
      return false;
    }
    return paramakp.c(paramString);
  }
  
  public static boolean g(String paramString, @chc akp paramakp)
  {
    boolean bool2 = false;
    paramString = paramakp.a(paramString);
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
  
  public static void h(String paramString, akp paramakp)
  {
    paramakp.a(paramString, false);
  }
}

/* Location:
 * Qualified Name:     auk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */