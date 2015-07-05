package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.internal.zzaa;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final zzg CREATOR = new zzg();
  public final LatLng northeast;
  public final LatLng southwest;
  private final int zzFG;
  
  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    zzx.zzb(paramLatLng1, "null southwest");
    zzx.zzb(paramLatLng2, "null northeast");
    if (latitude >= latitude) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(latitude), Double.valueOf(latitude) });
      zzFG = paramInt;
      southwest = paramLatLng1;
      northeast = paramLatLng2;
      return;
    }
  }
  
  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    this(1, paramLatLng1, paramLatLng2);
  }
  
  public static Builder builder()
  {
    return new Builder();
  }
  
  private static double zzb(double paramDouble1, double paramDouble2)
  {
    return (paramDouble1 - paramDouble2 + 360.0D) % 360.0D;
  }
  
  private static double zzc(double paramDouble1, double paramDouble2)
  {
    return (paramDouble2 - paramDouble1 + 360.0D) % 360.0D;
  }
  
  private boolean zzc(double paramDouble)
  {
    return (southwest.latitude <= paramDouble) && (paramDouble <= northeast.latitude);
  }
  
  private boolean zzd(double paramDouble)
  {
    if (southwest.longitude <= northeast.longitude) {
      if ((southwest.longitude > paramDouble) || (paramDouble > northeast.longitude)) {}
    }
    while ((southwest.longitude <= paramDouble) || (paramDouble <= northeast.longitude))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public final boolean contains(LatLng paramLatLng)
  {
    return (zzc(latitude)) && (zzd(longitude));
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LatLngBounds)) {
        return false;
      }
      paramObject = (LatLngBounds)paramObject;
    } while ((southwest.equals(southwest)) && (northeast.equals(northeast)));
    return false;
  }
  
  public final LatLng getCenter()
  {
    double d2 = (southwest.latitude + northeast.latitude) / 2.0D;
    double d1 = northeast.longitude;
    double d3 = southwest.longitude;
    if (d3 <= d1) {}
    for (d1 = (d1 + d3) / 2.0D;; d1 = (d1 + 360.0D + d3) / 2.0D) {
      return new LatLng(d2, d1);
    }
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { southwest, northeast });
  }
  
  public final LatLngBounds including(LatLng paramLatLng)
  {
    double d4 = Math.min(southwest.latitude, latitude);
    double d5 = Math.max(northeast.latitude, latitude);
    double d2 = northeast.longitude;
    double d3 = southwest.longitude;
    double d1 = longitude;
    if (!zzd(d1)) {
      if (zzb(d3, d1) >= zzc(d2, d1)) {}
    }
    for (;;)
    {
      return new LatLngBounds(new LatLng(d4, d1), new LatLng(d5, d2));
      d2 = d1;
      d1 = d3;
      continue;
      d1 = d3;
    }
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("southwest", southwest).zza("northeast", northeast).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzh.zza(this, paramParcel, paramInt);
      return;
    }
    zzg.zza(this, paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    private double zzaro = Double.POSITIVE_INFINITY;
    private double zzarp = Double.NEGATIVE_INFINITY;
    private double zzarq = NaN.0D;
    private double zzarr = NaN.0D;
    
    private boolean zzd(double paramDouble)
    {
      if (zzarq <= zzarr) {
        if ((zzarq > paramDouble) || (paramDouble > zzarr)) {}
      }
      while ((zzarq <= paramDouble) || (paramDouble <= zzarr))
      {
        return true;
        return false;
      }
      return false;
    }
    
    public final LatLngBounds build()
    {
      if (!Double.isNaN(zzarq)) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zza(bool, "no included points");
        return new LatLngBounds(new LatLng(zzaro, zzarq), new LatLng(zzarp, zzarr));
      }
    }
    
    public final Builder include(LatLng paramLatLng)
    {
      zzaro = Math.min(zzaro, latitude);
      zzarp = Math.max(zzarp, latitude);
      double d = longitude;
      if (Double.isNaN(zzarq)) {
        zzarq = d;
      }
      do
      {
        zzarr = d;
        do
        {
          return this;
        } while (zzd(d));
      } while (LatLngBounds.zzd(zzarq, d) >= LatLngBounds.zze(zzarr, d));
      zzarq = d;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */