package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class PlaceReportCreator
  implements Parcelable.Creator<PlaceReport>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void zza(PlaceReport paramPlaceReport, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzFG);
    zzb.zza(paramParcel, 2, paramPlaceReport.getPlaceId(), false);
    zzb.zza(paramParcel, 3, paramPlaceReport.getTag(), false);
    zzb.zza(paramParcel, 4, paramPlaceReport.getSource(), false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public PlaceReport createFromParcel(Parcel paramParcel)
  {
    String str3 = null;
    int j = zza.zzJ(paramParcel);
    String str1 = null;
    int i = 0;
    String str2 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        str1 = zza.zzo(paramParcel, k);
        break;
      case 3: 
        str2 = zza.zzo(paramParcel, k);
        break;
      case 4: 
        str3 = zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new PlaceReport(i, str1, str2, str3);
  }
  
  public PlaceReport[] newArray(int paramInt)
  {
    return new PlaceReport[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.PlaceReportCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */