package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.zzd;
import com.google.android.gms.location.zzd.zza;
import com.google.android.gms.location.zze;
import com.google.android.gms.location.zze.zza;

public class zzpi
  implements SafeParcelable
{
  public static final zzpj CREATOR = new zzpj();
  PendingIntent mPendingIntent;
  private final int zzFG;
  int zzanl;
  zzpg zzanm;
  zzd zzann;
  zze zzano;
  
  zzpi(int paramInt1, int paramInt2, zzpg paramzzpg, IBinder paramIBinder1, PendingIntent paramPendingIntent, IBinder paramIBinder2)
  {
    zzFG = paramInt1;
    zzanl = paramInt2;
    zzanm = paramzzpg;
    if (paramIBinder1 == null)
    {
      paramzzpg = null;
      zzann = paramzzpg;
      mPendingIntent = paramPendingIntent;
      if (paramIBinder2 != null) {
        break label63;
      }
    }
    label63:
    for (paramzzpg = (zzpg)localObject;; paramzzpg = zze.zza.zzbh(paramIBinder2))
    {
      zzano = paramzzpg;
      return;
      paramzzpg = zzd.zza.zzbg(paramIBinder1);
      break;
    }
  }
  
  public static zzpi zza(zze paramzze)
  {
    return new zzpi(1, 2, null, null, null, paramzze.asBinder());
  }
  
  public static zzpi zzb(zzpg paramzzpg, PendingIntent paramPendingIntent)
  {
    return new zzpi(1, 1, paramzzpg, null, paramPendingIntent, null);
  }
  
  public static zzpi zzb(zzpg paramzzpg, zzd paramzzd)
  {
    return new zzpi(1, 1, paramzzpg, paramzzd.asBinder(), null, null);
  }
  
  public static zzpi zzb(zzd paramzzd)
  {
    return new zzpi(1, 2, null, paramzzd.asBinder(), null, null);
  }
  
  public static zzpi zze(PendingIntent paramPendingIntent)
  {
    return new zzpi(1, 2, null, null, paramPendingIntent, null);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzpj.zza(this, paramParcel, paramInt);
  }
  
  IBinder zzpA()
  {
    if (zzano == null) {
      return null;
    }
    return zzano.asBinder();
  }
  
  IBinder zzpz()
  {
    if (zzann == null) {
      return null;
    }
    return zzann.asBinder();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */