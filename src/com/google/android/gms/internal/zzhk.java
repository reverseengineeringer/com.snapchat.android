package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import java.math.BigInteger;
import java.util.Locale;

@zzgi
public final class zzhk
{
  private static final Object zzmz = new Object();
  private static zzcc zzzg;
  private static String zzzh;
  
  public static String zza(Context paramContext, String paramString1, String paramString2)
  {
    synchronized (zzmz)
    {
      if ((zzzh == null) && (!TextUtils.isEmpty(paramString1))) {
        zzb(paramContext, paramString1, paramString2);
      }
      paramContext = zzzh;
      return paramContext;
    }
  }
  
  private static void zzb(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramString2 = paramContext.createPackageContext(paramString2, 3).getClassLoader();
      Class localClass = Class.forName("com.google.ads.mediation.MediationAdapter", false, paramString2);
      paramContext = new BigInteger(new byte[1]);
      String[] arrayOfString = paramString1.split(",");
      int i = 0;
      while (i < arrayOfString.length)
      {
        paramString1 = paramContext;
        if (zzab.zzaM().zza(paramString2, localClass, arrayOfString[i])) {
          paramString1 = paramContext.setBit(i);
        }
        i += 1;
        paramContext = paramString1;
      }
    }
    catch (Throwable paramContext)
    {
      zzzh = "err";
      return;
    }
    tmp96_93[0] = paramContext;
    zzzh = String.format(Locale.US, "%X", tmp96_93);
  }
  
  public static void zzd(Context paramContext, String paramString)
  {
    synchronized (zzmz)
    {
      zzcb localzzcb;
      if (zzzg == null)
      {
        localzzcb = new zzcb();
        localzzcb.zzb(paramContext, paramString);
      }
      try
      {
        zzzg = zzab.zzaR().zzb(localzzcb);
        return;
      }
      catch (IllegalArgumentException paramContext)
      {
        for (;;)
        {
          zzhx.zzac("Cannot initialize CSI reporter." + paramContext.getMessage());
        }
      }
    }
  }
  
  public static zzcc zzeg()
  {
    synchronized (zzmz)
    {
      zzcc localzzcc = zzzg;
      return localzzcc;
    }
  }
  
  public static String zzep()
  {
    synchronized (zzmz)
    {
      String str = zzzh;
      return str;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */