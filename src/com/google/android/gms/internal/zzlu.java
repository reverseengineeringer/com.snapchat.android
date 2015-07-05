package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.regex.Pattern;

public final class zzlu
{
  private static Pattern zzRN = null;
  
  public static boolean zzQ(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
  }
  
  public static int zzbb(int paramInt)
  {
    return paramInt / 1000;
  }
  
  public static int zzbc(int paramInt)
  {
    return paramInt % 1000 / 100;
  }
  
  public static boolean zzbd(int paramInt)
  {
    return zzbc(paramInt) == 3;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */