package com.google.android.gms.internal;

import android.os.SystemClock;

public final class zzlx
  implements zzlv
{
  private static zzlx zzRO;
  
  public static zzlv zzkc()
  {
    try
    {
      if (zzRO == null) {
        zzRO = new zzlx();
      }
      zzlx localzzlx = zzRO;
      return localzzlx;
    }
    finally {}
  }
  
  public final long currentTimeMillis()
  {
    return System.currentTimeMillis();
  }
  
  public final long elapsedRealtime()
  {
    return SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */