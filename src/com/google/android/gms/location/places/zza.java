package com.google.android.gms.location.places;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;

public class zza
  implements Parcelable.Creator<AddPlaceRequest>
{
  static void zza(AddPlaceRequest paramAddPlaceRequest, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramAddPlaceRequest.getName(), false);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zza(paramParcel, 2, paramAddPlaceRequest.getLatLng(), paramInt, false);
    zzb.zza(paramParcel, 3, paramAddPlaceRequest.getAddress(), false);
    zzb.zza(paramParcel, 4, paramAddPlaceRequest.getPlaceTypes(), false);
    zzb.zza(paramParcel, 5, paramAddPlaceRequest.getPhoneNumber(), false);
    zzb.zza(paramParcel, 6, paramAddPlaceRequest.getWebsiteUri(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public AddPlaceRequest zzdy(Parcel paramParcel)
  {
    Uri localUri = null;
    int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(paramParcel);
    int i = 0;
    String str1 = null;
    ArrayList localArrayList = null;
    String str2 = null;
    LatLng localLatLng = null;
    String str3 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = com.google.android.gms.common.internal.safeparcel.zza.zzI(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.zza.zzb(paramParcel, k);
        break;
      case 1: 
        str3 = com.google.android.gms.common.internal.safeparcel.zza.zzo(paramParcel, k);
        break;
      case 1000: 
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, k);
        break;
      case 2: 
        localLatLng = (LatLng)com.google.android.gms.common.internal.safeparcel.zza.zza(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        str2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(paramParcel, k);
        break;
      case 4: 
        localArrayList = com.google.android.gms.common.internal.safeparcel.zza.zzB(paramParcel, k);
        break;
      case 5: 
        str1 = com.google.android.gms.common.internal.safeparcel.zza.zzo(paramParcel, k);
        break;
      case 6: 
        localUri = (Uri)com.google.android.gms.common.internal.safeparcel.zza.zza(paramParcel, k, Uri.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new AddPlaceRequest(i, str3, localLatLng, str2, localArrayList, str1, localUri);
  }
  
  public AddPlaceRequest[] zzfz(int paramInt)
  {
    return new AddPlaceRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */