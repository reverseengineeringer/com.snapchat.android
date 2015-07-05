package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.Method;

@zzgi
public class zzfc
{
  private final Context mContext;
  Object zzuV;
  
  public zzfc(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public void destroy()
  {
    zzuV = null;
  }
  
  public Bundle zzb(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      Class localClass = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      paramString1 = (Bundle)localClass.getDeclaredMethod("getBuyIntent", new Class[] { Integer.TYPE, String.class, String.class, String.class, String.class }).invoke(localClass.cast(zzuV), new Object[] { Integer.valueOf(3), paramString1, paramString2, "inapp", paramString3 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      zzhx.zzd("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", paramString1);
    }
    return null;
  }
  
  public int zzg(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      int i = ((Integer)localClass.getDeclaredMethod("consumePurchase", new Class[] { Integer.TYPE, String.class, String.class }).invoke(localClass.cast(zzuV), new Object[] { Integer.valueOf(3), paramString1, paramString2 })).intValue();
      return i;
    }
    catch (Exception paramString1)
    {
      zzhx.zzd("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", paramString1);
    }
    return 5;
  }
  
  public Bundle zzh(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      paramString1 = (Bundle)localClass.getDeclaredMethod("getPurchases", new Class[] { Integer.TYPE, String.class, String.class, String.class }).invoke(localClass.cast(zzuV), new Object[] { Integer.valueOf(3), paramString1, "inapp", paramString2 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      zzhx.zzd("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", paramString1);
    }
    return null;
  }
  
  public void zzx(IBinder paramIBinder)
  {
    try
    {
      zzuV = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService$Stub").getDeclaredMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { paramIBinder });
      return;
    }
    catch (Exception paramIBinder)
    {
      zzhx.zzac("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */