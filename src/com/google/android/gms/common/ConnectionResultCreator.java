package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class ConnectionResultCreator
  implements Parcelable.Creator<ConnectionResult>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void zza(ConnectionResult paramConnectionResult, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zzc(paramParcel, 2, paramConnectionResult.getErrorCode());
    zzb.zza(paramParcel, 3, paramConnectionResult.getResolution(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public ConnectionResult createFromParcel(Parcel paramParcel)
  {
    int j = 0;
    int k = zza.zzJ(paramParcel);
    PendingIntent localPendingIntent = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        j = zza.zzg(paramParcel, m);
        break;
      case 3: 
        localPendingIntent = (PendingIntent)zza.zza(paramParcel, m, PendingIntent.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new ConnectionResult(i, j, localPendingIntent);
  }
  
  public ConnectionResult[] newArray(int paramInt)
  {
    return new ConnectionResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.ConnectionResultCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */