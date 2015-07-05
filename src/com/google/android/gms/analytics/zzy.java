package com.google.android.gms.analytics;

import java.util.SortedSet;
import java.util.TreeSet;

class zzy
{
  private static final zzy zzCU = new zzy();
  private SortedSet<zza> zzCR = new TreeSet();
  private StringBuilder zzCS = new StringBuilder();
  private boolean zzCT = false;
  
  public static zzy zzfV()
  {
    return zzCU;
  }
  
  public void zzF(boolean paramBoolean)
  {
    try
    {
      zzCT = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void zza(zza paramzza)
  {
    try
    {
      if (!zzCT)
      {
        zzCR.add(paramzza);
        zzCS.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(paramzza.ordinal()));
      }
      return;
    }
    finally
    {
      paramzza = finally;
      throw paramzza;
    }
  }
  
  public String zzfW()
  {
    try
    {
      Object localObject1 = new StringBuilder();
      int j = 6;
      int i = 0;
      while (zzCR.size() > 0)
      {
        zza localzza = (zza)zzCR.first();
        zzCR.remove(localzza);
        int k = localzza.ordinal();
        while (k >= j)
        {
          ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
          j += 6;
          i = 0;
        }
        i += (1 << localzza.ordinal() % 6);
      }
      if ((i > 0) || (((StringBuilder)localObject1).length() == 0)) {
        ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
      }
      zzCR.clear();
      localObject1 = ((StringBuilder)localObject1).toString();
      return (String)localObject1;
    }
    finally {}
  }
  
  public String zzfX()
  {
    try
    {
      if (zzCS.length() > 0) {
        zzCS.insert(0, ".");
      }
      String str = zzCS.toString();
      zzCS = new StringBuilder();
      return str;
    }
    finally {}
  }
  
  public static enum zza
  {
    private zza() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */