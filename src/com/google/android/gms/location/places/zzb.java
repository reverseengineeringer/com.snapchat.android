package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import java.util.ArrayList;

public class zzb
  implements Parcelable.Creator<AutocompleteFilter>
{
  static void zza(AutocompleteFilter paramAutocompleteFilter, Parcel paramParcel, int paramInt)
  {
    paramInt = com.google.android.gms.common.internal.safeparcel.zzb.zzK(paramParcel);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 1, paramAutocompleteFilter.zzpF());
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 1000, zzFG);
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 2, zzany, false);
    com.google.android.gms.common.internal.safeparcel.zzb.zzH(paramParcel, paramInt);
  }
  
  public AutocompleteFilter zzdz(Parcel paramParcel)
  {
    boolean bool = false;
    int j = zza.zzJ(paramParcel);
    ArrayList localArrayList = null;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        bool = zza.zzc(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        localArrayList = zza.zzB(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new AutocompleteFilter(i, bool, localArrayList);
  }
  
  public AutocompleteFilter[] zzfA(int paramInt)
  {
    return new AutocompleteFilter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */