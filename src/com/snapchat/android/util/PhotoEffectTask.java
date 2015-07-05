package com.snapchat.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.AsyncTask;
import android.os.Handler;
import aur;
import ban;
import bbw;
import bcl;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.Locale;

public class PhotoEffectTask
  extends AsyncTask<Bitmap, Void, Bitmap>
{
  private static final int BLACK_AND_WHITE = 95475;
  public static final int BLACK_AND_WHITE_NATIVE_FILTER = 0;
  private static final int BLACK_HOLE = 1332899135;
  private static final int BLOOM = 93832707;
  private static final int BULGE = 94097687;
  private static final int DANOZ = 95351100;
  private static final int DARKEN = -1338968417;
  private static final int EQUALIZE = 581399968;
  private static final int ETIKATE = -1430172959;
  public static final int ETIKATE_NATIVE_FILTER = 17;
  private static final int HELLO_WORLD = -1524582912;
  public static final int INSTASNAP_NATIVE_FILTER = 3;
  private static final int LIGHTEN = 170546239;
  private static final int MIRROR = -2134586306;
  private static final int NEGATIVE = 921111605;
  private static final int NO_FILTER = 1184744569;
  private static final int PINCH = 106671290;
  private static final int RADIOACTIVE = -20616511;
  private static final int SELECTIVE_COLOR = -1900895245;
  private static final int SEPIA = 109324790;
  private static final int SKETCHY = 1486442645;
  private static final int SO_POPULAR = -1914354435;
  private static final int STRETCH_CONTRAST = 29256997;
  private static final int TONE_MAP = 103158;
  private final Context mContext;
  private final Handler mHandler = new Handler();
  private int mHashcode;
  
  static
  {
    try
    {
      System.loadLibrary("stlport_shared");
      System.loadLibrary("photoeffect");
      return;
    }
    catch (Throwable localThrowable)
    {
      new ErrorMetric("Photo filter failed to load library").a(localThrowable).d();
    }
  }
  
  public PhotoEffectTask(String paramString, Context paramContext)
  {
    mContext = paramContext;
    if (paramString == null) {
      mHashcode = -1;
    }
    do
    {
      return;
      paramString = paramString.toLowerCase(Locale.US);
      i = paramString.lastIndexOf("#");
      if (i != -1) {
        break;
      }
      i = -1;
      mHashcode = i;
    } while (mHashcode != -1);
    int k = paramString.lastIndexOf("...");
    if (k == -1) {}
    for (int i = j;; i = paramString.substring(i, k).hashCode())
    {
      mHashcode = i;
      return;
      i += 1;
      if (paramString.indexOf(' ', i) != -1)
      {
        i = -1;
        break;
      }
      i = paramString.substring(i, paramString.length()).hashCode();
      break;
      j = paramString.lastIndexOf(' ', k);
      i = j;
      if (j == -1) {
        i = 0;
      }
    }
  }
  
  private Bitmap a(Bitmap... paramVarArgs)
  {
    int i = 0;
    Bitmap localBitmap = paramVarArgs[0];
    switch (mHashcode)
    {
    default: 
      return null;
    case -1914354435: 
      AnalyticsEvents.b("POPULAR");
      return null;
    case -1524582912: 
      AnalyticsEvents.b("HELLO_WORLD_FILTER");
      mHandler.post(new Runnable()
      {
        public final void run()
        {
          ban.a().a(new bbw());
        }
      });
      return null;
    case 1184744569: 
      paramVarArgs = "NO_FILTER";
      i = -1;
    }
    while (localBitmap != null)
    {
      AnalyticsEvents.b(paramVarArgs);
      if (i != -1) {
        break label410;
      }
      mHandler.post(new Runnable()
      {
        public final void run()
        {
          ban.a().a(new bcl());
        }
      });
      return null;
      paramVarArgs = "B&W";
      continue;
      i = 1;
      paramVarArgs = "SEPIA";
      continue;
      i = 2;
      paramVarArgs = "INVERT";
      continue;
      i = 3;
      paramVarArgs = "INSTASNAP";
      continue;
      i = 4;
      paramVarArgs = "BULGE";
      continue;
      i = 5;
      paramVarArgs = "PINCH";
      continue;
      i = 6;
      paramVarArgs = "BLACK_HOLE";
      continue;
      i = 7;
      paramVarArgs = "RADIOACTIVE";
      continue;
      i = 8;
      paramVarArgs = "SKETCHY";
      continue;
      i = 9;
      paramVarArgs = "MIRROR";
      continue;
      i = 10;
      paramVarArgs = "SELECTIVE_COLOR";
      continue;
      i = 11;
      paramVarArgs = "LIGHTEN";
      continue;
      i = 12;
      paramVarArgs = "DARKEN";
      continue;
      i = 13;
      paramVarArgs = "EQUALIZE";
      continue;
      i = 14;
      paramVarArgs = "BLOOM";
      continue;
      i = 15;
      paramVarArgs = "DANOZ";
      continue;
      i = 16;
      paramVarArgs = "TONE_MAP";
      continue;
      i = 17;
      paramVarArgs = "MISS_ETIKATE";
    }
    label410:
    paramVarArgs = aur.a(localBitmap.getWidth(), localBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    a(i, localBitmap, paramVarArgs, mContext);
    return paramVarArgs;
  }
  
  public static void a()
  {
    try
    {
      terminateNativeProcessing();
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      while (!ReleaseManager.e()) {}
      throw localUnsatisfiedLinkError;
    }
  }
  
  public static void a(int paramInt, Bitmap paramBitmap1, Bitmap paramBitmap2, Context paramContext)
  {
    if ((paramBitmap1.getConfig() != Bitmap.Config.ARGB_8888) && (paramBitmap1.getConfig() != Bitmap.Config.RGB_565)) {
      throw new IllegalArgumentException("Unsupported bitmap config: " + paramBitmap1.getConfig());
    }
    if ((paramBitmap2.getConfig() != Bitmap.Config.ARGB_8888) && (paramBitmap2.getConfig() != Bitmap.Config.RGB_565)) {
      throw new IllegalArgumentException("Unsupported bitmap config: " + paramBitmap2.getConfig());
    }
    if (paramBitmap1.isRecycled()) {
      throw new IllegalArgumentException("Input bitmap recycled.");
    }
    if (paramBitmap2.isRecycled()) {
      throw new IllegalArgumentException("Output bitmap recycled.");
    }
    if (paramBitmap1.getWidth() != paramBitmap2.getWidth()) {
      throw new IllegalArgumentException();
    }
    if (paramBitmap1.getHeight() != paramBitmap2.getHeight()) {
      throw new IllegalArgumentException();
    }
    if (paramInt == 17)
    {
      try
      {
        paramContext = aur.a(paramContext, 2130837874, false);
        if (paramContext == null) {
          throw new NullPointerException();
        }
      }
      catch (UnsatisfiedLinkError paramBitmap1)
      {
        AnalyticsEvents.f(paramBitmap1.getMessage());
        return;
      }
      nativeLookupTablePhotoEffect(paramBitmap1, paramContext, paramBitmap2);
      paramContext.recycle();
      return;
    }
    nativePhotoEffect(paramInt, paramBitmap1, paramBitmap2);
  }
  
  private static native void nativeLookupTablePhotoEffect(Bitmap paramBitmap1, Bitmap paramBitmap2, Bitmap paramBitmap3);
  
  private static native void nativePhotoEffect(int paramInt, Bitmap paramBitmap1, Bitmap paramBitmap2);
  
  private static native void terminateNativeProcessing();
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.PhotoEffectTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */