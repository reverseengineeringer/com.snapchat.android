package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzd.zza;
import com.google.android.gms.dynamic.zze;

@zzgi
public final class zzeo
  implements SafeParcelable
{
  public static final zzen CREATOR = new zzen();
  public final int orientation;
  public final int versionCode;
  public final zzhy zzlP;
  public final String zztR;
  public final zzek zzun;
  public final zzat zzuo;
  public final zzep zzup;
  public final zzic zzuq;
  public final zzct zzur;
  public final String zzus;
  public final boolean zzut;
  public final String zzuu;
  public final zzes zzuv;
  public final int zzuw;
  public final zzcw zzux;
  public final String zzuy;
  public final zzx zzuz;
  
  zzeo(int paramInt1, zzek paramzzek, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4, String paramString1, boolean paramBoolean, String paramString2, IBinder paramIBinder5, int paramInt2, int paramInt3, String paramString3, zzhy paramzzhy, IBinder paramIBinder6, String paramString4, zzx paramzzx)
  {
    versionCode = paramInt1;
    zzun = paramzzek;
    zzuo = ((zzat)zze.zzf(zzd.zza.zzau(paramIBinder1)));
    zzup = ((zzep)zze.zzf(zzd.zza.zzau(paramIBinder2)));
    zzuq = ((zzic)zze.zzf(zzd.zza.zzau(paramIBinder3)));
    zzur = ((zzct)zze.zzf(zzd.zza.zzau(paramIBinder4)));
    zzus = paramString1;
    zzut = paramBoolean;
    zzuu = paramString2;
    zzuv = ((zzes)zze.zzf(zzd.zza.zzau(paramIBinder5)));
    orientation = paramInt2;
    zzuw = paramInt3;
    zztR = paramString3;
    zzlP = paramzzhy;
    zzux = ((zzcw)zze.zzf(zzd.zza.zzau(paramIBinder6)));
    zzuy = paramString4;
    zzuz = paramzzx;
  }
  
  public zzeo(zzat paramzzat, zzep paramzzep, zzct paramzzct, zzes paramzzes, zzic paramzzic, boolean paramBoolean, int paramInt, String paramString, zzhy paramzzhy, zzcw paramzzcw)
  {
    versionCode = 4;
    zzun = null;
    zzuo = paramzzat;
    zzup = paramzzep;
    zzuq = paramzzic;
    zzur = paramzzct;
    zzus = null;
    zzut = paramBoolean;
    zzuu = null;
    zzuv = paramzzes;
    orientation = paramInt;
    zzuw = 3;
    zztR = paramString;
    zzlP = paramzzhy;
    zzux = paramzzcw;
    zzuy = null;
    zzuz = null;
  }
  
  public zzeo(zzat paramzzat, zzep paramzzep, zzct paramzzct, zzes paramzzes, zzic paramzzic, boolean paramBoolean, int paramInt, String paramString1, String paramString2, zzhy paramzzhy, zzcw paramzzcw)
  {
    versionCode = 4;
    zzun = null;
    zzuo = paramzzat;
    zzup = paramzzep;
    zzuq = paramzzic;
    zzur = paramzzct;
    zzus = paramString2;
    zzut = paramBoolean;
    zzuu = paramString1;
    zzuv = paramzzes;
    orientation = paramInt;
    zzuw = 3;
    zztR = null;
    zzlP = paramzzhy;
    zzux = paramzzcw;
    zzuy = null;
    zzuz = null;
  }
  
  public zzeo(zzat paramzzat, zzep paramzzep, zzes paramzzes, zzic paramzzic, int paramInt, zzhy paramzzhy, String paramString, zzx paramzzx)
  {
    versionCode = 4;
    zzun = null;
    zzuo = paramzzat;
    zzup = paramzzep;
    zzuq = paramzzic;
    zzur = null;
    zzus = null;
    zzut = false;
    zzuu = null;
    zzuv = paramzzes;
    orientation = paramInt;
    zzuw = 1;
    zztR = null;
    zzlP = paramzzhy;
    zzux = null;
    zzuy = paramString;
    zzuz = paramzzx;
  }
  
  public zzeo(zzat paramzzat, zzep paramzzep, zzes paramzzes, zzic paramzzic, boolean paramBoolean, int paramInt, zzhy paramzzhy)
  {
    versionCode = 4;
    zzun = null;
    zzuo = paramzzat;
    zzup = paramzzep;
    zzuq = paramzzic;
    zzur = null;
    zzus = null;
    zzut = paramBoolean;
    zzuu = null;
    zzuv = paramzzes;
    orientation = paramInt;
    zzuw = 2;
    zztR = null;
    zzlP = paramzzhy;
    zzux = null;
    zzuy = null;
    zzuz = null;
  }
  
  public zzeo(zzek paramzzek, zzat paramzzat, zzep paramzzep, zzes paramzzes, zzhy paramzzhy)
  {
    versionCode = 4;
    zzun = paramzzek;
    zzuo = paramzzat;
    zzup = paramzzep;
    zzuq = null;
    zzur = null;
    zzus = null;
    zzut = false;
    zzuu = null;
    zzuv = paramzzes;
    orientation = -1;
    zzuw = 4;
    zztR = null;
    zzlP = paramzzhy;
    zzux = null;
    zzuy = null;
    zzuz = null;
  }
  
  public static void zza(Intent paramIntent, zzeo paramzzeo)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", paramzzeo);
    paramIntent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", localBundle);
  }
  
  public static zzeo zzb(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      paramIntent.setClassLoader(zzeo.class.getClassLoader());
      paramIntent = (zzeo)paramIntent.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
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
    zzen.zza(this, paramParcel, paramInt);
  }
  
  final IBinder zzdi()
  {
    return zze.zzn(zzuo).asBinder();
  }
  
  final IBinder zzdj()
  {
    return zze.zzn(zzup).asBinder();
  }
  
  final IBinder zzdk()
  {
    return zze.zzn(zzuq).asBinder();
  }
  
  final IBinder zzdl()
  {
    return zze.zzn(zzur).asBinder();
  }
  
  final IBinder zzdm()
  {
    return zze.zzn(zzux).asBinder();
  }
  
  final IBinder zzdn()
  {
    return zze.zzn(zzuv).asBinder();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzeo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */