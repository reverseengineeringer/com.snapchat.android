package com.google.android.gms.internal;

import android.os.SystemClock;
import android.support.v4.util.SimpleArrayMap;

public class zzlr
{
  private final long zzRK;
  private final int zzRL;
  private final SimpleArrayMap<Long, Long> zzRM;
  
  public zzlr()
  {
    zzRK = 60000L;
    zzRL = 10;
    zzRM = new SimpleArrayMap(10);
  }
  
  public zzlr(int paramInt, long paramLong)
  {
    zzRK = paramLong;
    zzRL = paramInt;
    zzRM = new SimpleArrayMap();
  }
  
  private void zzc(long paramLong1, long paramLong2)
  {
    int i = zzRM.size() - 1;
    while (i >= 0)
    {
      if (paramLong2 - ((Long)zzRM.valueAt(i)).longValue() > paramLong1) {
        zzRM.removeAt(i);
      }
      i -= 1;
    }
  }
  
  public Long zza(Long paramLong)
  {
    long l2 = SystemClock.elapsedRealtime();
    long l1 = zzRK;
    try
    {
      while (zzRM.size() >= zzRL)
      {
        zzc(l1, l2);
        l1 /= 2L;
        new StringBuilder("The max capacity ").append(zzRL).append(" is not enough. Current durationThreshold is: ").append(l1);
      }
      paramLong = (Long)zzRM.put(paramLong, Long.valueOf(l2));
    }
    finally {}
    return paramLong;
  }
  
  public boolean zzr(long paramLong)
  {
    for (;;)
    {
      try
      {
        if (zzRM.remove(Long.valueOf(paramLong)) != null)
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */