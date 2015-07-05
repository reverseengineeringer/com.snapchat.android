package android.support.v4.media.routing;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build.VERSION;
import android.os.Handler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MediaRouterJellybeanMr1$ActiveScanWorkaround
  implements Runnable
{
  private static final int WIFI_DISPLAY_SCAN_INTERVAL = 15000;
  private boolean mActivelyScanningWifiDisplays;
  private final DisplayManager mDisplayManager;
  private final Handler mHandler;
  private Method mScanWifiDisplaysMethod;
  
  private MediaRouterJellybeanMr1$ActiveScanWorkaround(Context paramContext, Handler paramHandler)
  {
    if (Build.VERSION.SDK_INT != 17) {
      throw new UnsupportedOperationException();
    }
    mDisplayManager = ((DisplayManager)paramContext.getSystemService("display"));
    mHandler = paramHandler;
    try
    {
      mScanWifiDisplaysMethod = DisplayManager.class.getMethod("scanWifiDisplays", new Class[0]);
      return;
    }
    catch (NoSuchMethodException paramContext) {}
  }
  
  private void setActiveScanRouteTypes(int paramInt)
  {
    if ((paramInt & 0x2) != 0) {
      if ((!mActivelyScanningWifiDisplays) && (mScanWifiDisplaysMethod != null))
      {
        mActivelyScanningWifiDisplays = true;
        mHandler.post(this);
      }
    }
    while (!mActivelyScanningWifiDisplays) {
      return;
    }
    mActivelyScanningWifiDisplays = false;
    mHandler.removeCallbacks(this);
  }
  
  public final void run()
  {
    if (mActivelyScanningWifiDisplays) {}
    try
    {
      mScanWifiDisplaysMethod.invoke(mDisplayManager, new Object[0]);
      mHandler.postDelayed(this, 15000L);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybeanMr1.ActiveScanWorkaround
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */