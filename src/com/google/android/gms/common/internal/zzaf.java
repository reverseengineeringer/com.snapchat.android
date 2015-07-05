package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzaf
  implements Parcelable.Creator<zzae>
{
  static void zza(zzae paramzzae, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zzc(paramParcel, 2, paramzzae.zzjr());
    zzb.zza(paramParcel, 3, zzPn, false);
    zzb.zza(paramParcel, 4, paramzzae.zzjs(), paramInt, false);
    zzb.zza(paramParcel, 5, paramzzae.zzjt(), false);
    zzb.zza(paramParcel, 6, paramzzae.getCallingPackage(), false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzae zzH(Parcel paramParcel)
  {
    int i = 0;
    String str = null;
    int k = zza.zzJ(paramParcel);
    Bundle localBundle = null;
    Scope[] arrayOfScope = null;
    IBinder localIBinder = null;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        j = zza.zzg(paramParcel, m);
        break;
      case 2: 
        i = zza.zzg(paramParcel, m);
        break;
      case 3: 
        localIBinder = zza.zzp(paramParcel, m);
        break;
      case 4: 
        arrayOfScope = (Scope[])zza.zzb(paramParcel, m, Scope.CREATOR);
        break;
      case 5: 
        localBundle = zza.zzq(paramParcel, m);
        break;
      case 6: 
        str = zza.zzo(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzae(j, i, localIBinder, arrayOfScope, localBundle, str);
  }
  
  public zzae[] zzaO(int paramInt)
  {
    return new zzae[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzaf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */