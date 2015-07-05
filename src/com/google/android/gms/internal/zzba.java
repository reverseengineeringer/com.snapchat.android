package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zza;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@zzgi
public final class zzba
  implements SafeParcelable
{
  public static final zzbb CREATOR = new zzbb();
  public final int height;
  public final int heightPixels;
  public final int versionCode;
  public final int width;
  public final int widthPixels;
  public final String zzpa;
  public final boolean zzpb;
  public final zzba[] zzpc;
  
  public zzba()
  {
    this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
  }
  
  zzba(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4, int paramInt5, zzba[] paramArrayOfzzba)
  {
    versionCode = paramInt1;
    zzpa = paramString;
    height = paramInt2;
    heightPixels = paramInt3;
    zzpb = paramBoolean;
    width = paramInt4;
    widthPixels = paramInt5;
    zzpc = paramArrayOfzzba;
  }
  
  public zzba(Context paramContext, AdSize paramAdSize)
  {
    this(paramContext, new AdSize[] { paramAdSize });
  }
  
  public zzba(Context paramContext, AdSize[] paramArrayOfAdSize)
  {
    AdSize localAdSize = paramArrayOfAdSize[0];
    versionCode = 2;
    zzpb = false;
    width = localAdSize.getWidth();
    height = localAdSize.getHeight();
    int i;
    int j;
    label62:
    DisplayMetrics localDisplayMetrics;
    int k;
    label98:
    int m;
    if (width == -1)
    {
      i = 1;
      if (height != -2) {
        break label220;
      }
      j = 1;
      localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      if (i == 0) {
        break label226;
      }
      widthPixels = zza(localDisplayMetrics);
      k = (int)(widthPixels / density);
      if (j == 0) {
        break label251;
      }
      m = zzc(localDisplayMetrics);
      label110:
      heightPixels = zzbe.zzbD().zza(localDisplayMetrics, m);
      if ((i == 0) && (j == 0)) {
        break label260;
      }
    }
    label220:
    label226:
    label251:
    label260:
    for (zzpa = (k + "x" + m + "_as");; zzpa = localAdSize.toString())
    {
      if (paramArrayOfAdSize.length <= 1) {
        break label272;
      }
      zzpc = new zzba[paramArrayOfAdSize.length];
      i = n;
      while (i < paramArrayOfAdSize.length)
      {
        zzpc[i] = new zzba(paramContext, paramArrayOfAdSize[i]);
        i += 1;
      }
      i = 0;
      break;
      j = 0;
      break label62;
      k = width;
      widthPixels = zzbe.zzbD().zza(localDisplayMetrics, width);
      break label98;
      m = height;
      break label110;
    }
    label272:
    zzpc = null;
  }
  
  public zzba(zzba paramzzba, zzba[] paramArrayOfzzba)
  {
    this(2, zzpa, height, heightPixels, zzpb, width, widthPixels, paramArrayOfzzba);
  }
  
  public static int zza(DisplayMetrics paramDisplayMetrics)
  {
    return widthPixels;
  }
  
  public static int zzb(DisplayMetrics paramDisplayMetrics)
  {
    return (int)(zzc(paramDisplayMetrics) * density);
  }
  
  private static int zzc(DisplayMetrics paramDisplayMetrics)
  {
    int i = (int)(heightPixels / density);
    if (i <= 400) {
      return 32;
    }
    if (i <= 720) {
      return 50;
    }
    return 90;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzbb.zza(this, paramParcel, paramInt);
  }
  
  public final AdSize zzbB()
  {
    return zza.zza(width, height, zzpa);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */