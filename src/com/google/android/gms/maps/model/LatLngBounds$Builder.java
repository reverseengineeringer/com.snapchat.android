package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.zzx;

public final class LatLngBounds$Builder
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

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */