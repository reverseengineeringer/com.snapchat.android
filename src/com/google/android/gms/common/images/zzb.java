package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;

public class zzb
  implements Parcelable.Creator<WebImage>
{
  static void zza(WebImage paramWebImage, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.zzb.zzK(paramParcel);
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 1, paramWebImage.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.zzb.zza(paramParcel, 2, paramWebImage.getUrl(), paramInt, false);
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 3, paramWebImage.getWidth());
    com.google.android.gms.common.internal.safeparcel.zzb.zzc(paramParcel, 4, paramWebImage.getHeight());
    com.google.android.gms.common.internal.safeparcel.zzb.zzH(paramParcel, i);
  }
  
  public WebImage zzB(Parcel paramParcel)
  {
    int m = zza.zzJ(paramParcel);
    int j = 0;
    Uri localUri = null;
    int i = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzI(paramParcel);
      switch (zza.zzaP(n))
      {
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        i = zza.zzg(paramParcel, n);
        break;
      case 2: 
        localUri = (Uri)zza.zza(paramParcel, n, Uri.CREATOR);
        break;
      case 3: 
        j = zza.zzg(paramParcel, n);
        break;
      case 4: 
        k = zza.zzg(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new WebImage(i, localUri, j, k);
  }
  
  public WebImage[] zzaD(int paramInt)
  {
    return new WebImage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */