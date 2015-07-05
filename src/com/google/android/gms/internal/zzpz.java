package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.ArrayList;

public class zzpz
  implements Parcelable.Creator<zzpy>
{
  static void zza(zzpy paramzzpy, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramzzpy.getId(), false);
    zzb.zza(paramParcel, 2, paramzzpy.zzpS(), false);
    zzb.zza(paramParcel, 3, paramzzpy.zzpU(), paramInt, false);
    zzb.zza(paramParcel, 4, paramzzpy.getLatLng(), paramInt, false);
    zzb.zza(paramParcel, 5, paramzzpy.zzpO());
    zzb.zza(paramParcel, 6, paramzzpy.getViewport(), paramInt, false);
    zzb.zza(paramParcel, 7, paramzzpy.zzpT(), false);
    zzb.zza(paramParcel, 8, paramzzpy.getWebsiteUri(), paramInt, false);
    zzb.zza(paramParcel, 9, paramzzpy.zzpI());
    zzb.zza(paramParcel, 10, paramzzpy.getRating());
    zzb.zzc(paramParcel, 11, paramzzpy.getPriceLevel());
    zzb.zza(paramParcel, 12, paramzzpy.zzpR());
    zzb.zza(paramParcel, 13, paramzzpy.zzpN(), false);
    zzb.zza(paramParcel, 14, paramzzpy.getAddress(), false);
    zzb.zza(paramParcel, 15, paramzzpy.getPhoneNumber(), false);
    zzb.zzb(paramParcel, 17, paramzzpy.zzpQ(), false);
    zzb.zza(paramParcel, 16, paramzzpy.zzpP(), false);
    zzb.zzc(paramParcel, 1000, zzFG);
    zzb.zza(paramParcel, 19, paramzzpy.getName(), false);
    zzb.zza(paramParcel, 18, zzaoI);
    zzb.zza(paramParcel, 20, paramzzpy.getPlaceTypes(), false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzpy zzdF(Parcel paramParcel)
  {
    int k = zza.zzJ(paramParcel);
    int j = 0;
    String str6 = null;
    ArrayList localArrayList3 = null;
    ArrayList localArrayList2 = null;
    Bundle localBundle = null;
    String str5 = null;
    String str4 = null;
    String str3 = null;
    String str2 = null;
    ArrayList localArrayList1 = null;
    LatLng localLatLng = null;
    float f2 = 0.0F;
    LatLngBounds localLatLngBounds = null;
    String str1 = null;
    Uri localUri = null;
    boolean bool2 = false;
    float f1 = 0.0F;
    int i = 0;
    long l = 0L;
    boolean bool1 = false;
    zzqd localzzqd = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        str6 = zza.zzo(paramParcel, m);
        break;
      case 2: 
        localBundle = zza.zzq(paramParcel, m);
        break;
      case 3: 
        localzzqd = (zzqd)zza.zza(paramParcel, m, zzqd.CREATOR);
        break;
      case 4: 
        localLatLng = (LatLng)zza.zza(paramParcel, m, LatLng.CREATOR);
        break;
      case 5: 
        f2 = zza.zzl(paramParcel, m);
        break;
      case 6: 
        localLatLngBounds = (LatLngBounds)zza.zza(paramParcel, m, LatLngBounds.CREATOR);
        break;
      case 7: 
        str1 = zza.zzo(paramParcel, m);
        break;
      case 8: 
        localUri = (Uri)zza.zza(paramParcel, m, Uri.CREATOR);
        break;
      case 9: 
        bool2 = zza.zzc(paramParcel, m);
        break;
      case 10: 
        f1 = zza.zzl(paramParcel, m);
        break;
      case 11: 
        i = zza.zzg(paramParcel, m);
        break;
      case 12: 
        l = zza.zzi(paramParcel, m);
        break;
      case 13: 
        localArrayList2 = zza.zzB(paramParcel, m);
        break;
      case 14: 
        str4 = zza.zzo(paramParcel, m);
        break;
      case 15: 
        str3 = zza.zzo(paramParcel, m);
        break;
      case 17: 
        localArrayList1 = zza.zzC(paramParcel, m);
        break;
      case 16: 
        str2 = zza.zzo(paramParcel, m);
        break;
      case 1000: 
        j = zza.zzg(paramParcel, m);
        break;
      case 19: 
        str5 = zza.zzo(paramParcel, m);
        break;
      case 18: 
        bool1 = zza.zzc(paramParcel, m);
        break;
      case 20: 
        localArrayList3 = zza.zzB(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzpy(j, str6, localArrayList3, localArrayList2, localBundle, str5, str4, str3, str2, localArrayList1, localLatLng, f2, localLatLngBounds, str1, localUri, bool2, f1, i, l, bool1, localzzqd);
  }
  
  public zzpy[] zzfI(int paramInt)
  {
    return new zzpy[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */