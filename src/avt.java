import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.view.KeyCharacterMap;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.Set;

public final class avt
{
  private static final Set<String> BRANDS_USING_EMULATOR_FLAG = ec.a(new String[] { "sony" });
  private static final String BRAND_NAME = Build.BRAND.toLowerCase(Locale.ENGLISH);
  private static final String DEV_FORCE_NAV_BAR = "dev_force_show_navbar";
  private static final String EMULATOR_SETTING_NAV_BAR_HIDE = "1";
  private static final String EMULATOR_SETTING_NAV_BAR_SHOW = "0";
  private static final String LANDSCAPE_NAV_HEIGHT_RES_ID = "navigation_bar_height_landscape";
  private static final int MIN_TABLET_WIDTH_DP = 600;
  private static final String NAV_WIDTH_RES_ID = "navigation_bar_width";
  private static final String PORTRAIT_NAV_HEIGHT_RES_ID = "navigation_bar_height";
  private static final String SHOW_NAV_FLAG_RESOURCE_ID = "config_showNavigationBar";
  private static String sEmulatorNavBarOverride;
  private final Context mContext;
  final boolean mIsDockedBottomInLandscape;
  final int mLandscapeNavHeight;
  final int mNavWidth;
  private final int mPortraitNavHeight;
  
  static
  {
    if ((Build.VERSION.SDK_INT >= 19) && (BRANDS_USING_EMULATOR_FLAG.contains(BRAND_NAME))) {}
    try
    {
      Method localMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[] { String.class });
      localMethod.setAccessible(true);
      sEmulatorNavBarOverride = (String)localMethod.invoke(null, new Object[] { "qemu.hw.mainkeys" });
      return;
    }
    catch (Throwable localThrowable)
    {
      sEmulatorNavBarOverride = null;
    }
  }
  
  public avt(Context paramContext) {}
  
  private avt(Context paramContext, boolean paramBoolean)
  {
    mContext = paramContext;
    mIsDockedBottomInLandscape = paramBoolean;
    mPortraitNavHeight = a("navigation_bar_height");
    mLandscapeNavHeight = a("navigation_bar_height_landscape");
    mNavWidth = a("navigation_bar_width");
  }
  
  private int a(String paramString)
  {
    Resources localResources = mContext.getResources();
    int i = localResources.getIdentifier(paramString, "dimen", "android");
    if (i > 0) {
      return localResources.getDimensionPixelSize(i);
    }
    return 0;
  }
  
  public final boolean a()
  {
    Resources localResources = mContext.getResources();
    if (Settings.System.getInt(mContext.getContentResolver(), "dev_force_show_navbar", 0) == 1) {}
    boolean bool;
    do
    {
      do
      {
        return true;
        if (sEmulatorNavBarOverride == null) {
          break;
        }
      } while (TextUtils.equals(sEmulatorNavBarOverride, "0"));
      if (TextUtils.equals(sEmulatorNavBarOverride, "1")) {
        return false;
      }
      int i = localResources.getIdentifier("config_showNavigationBar", "bool", "android");
      if (i > 0) {
        return localResources.getBoolean(i);
      }
      bool = KeyCharacterMap.deviceHasKey(3);
    } while ((!KeyCharacterMap.deviceHasKey(4)) && (!bool) && (!ViewConfiguration.get(mContext).hasPermanentMenuKey()));
    return false;
  }
  
  public final int b()
  {
    if (!a()) {
      return 0;
    }
    return mPortraitNavHeight;
  }
}

/* Location:
 * Qualified Name:     avt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */