package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzd.zza;
import com.google.android.gms.dynamic.zze;

@zzgi
public final class zzfb
  implements SafeParcelable
{
  public static final zzfa CREATOR = new zzfa();
  public final int versionCode;
  public final zzfl zzmg;
  public final zzfn zzuS;
  public final Context zzuT;
  public final zzfk zzuU;
  
  zzfb(int paramInt, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4)
  {
    versionCode = paramInt;
    zzmg = ((zzfl)zze.zzf(zzd.zza.zzau(paramIBinder1)));
    zzuS = ((zzfn)zze.zzf(zzd.zza.zzau(paramIBinder2)));
    zzuT = ((Context)zze.zzf(zzd.zza.zzau(paramIBinder3)));
    zzuU = ((zzfk)zze.zzf(zzd.zza.zzau(paramIBinder4)));
  }
  
  public zzfb(Context paramContext, zzfl paramzzfl, zzfn paramzzfn, zzfk paramzzfk)
  {
    versionCode = 2;
    zzuT = paramContext;
    zzmg = paramzzfl;
    zzuS = paramzzfn;
    zzuU = paramzzfk;
  }
  
  public static void zza(Intent paramIntent, zzfb paramzzfb)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", paramzzfb);
    paramIntent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", localBundle);
  }
  
  public static zzfb zzc(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      paramIntent.setClassLoader(zzfb.class.getClassLoader());
      paramIntent = (zzfb)paramIntent.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzfa.zza(this, paramParcel, paramInt);
  }
  
  final IBinder zzds()
  {
    return zze.zzn(zzuU).asBinder();
  }
  
  final IBinder zzdt()
  {
    return zze.zzn(zzmg).asBinder();
  }
  
  final IBinder zzdu()
  {
    return zze.zzn(zzuS).asBinder();
  }
  
  final IBinder zzdv()
  {
    return zze.zzn(zzuT).asBinder();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */