package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.PlaceLikelihood;

public class zzqa
  implements SafeParcelable, PlaceLikelihood
{
  public static final Parcelable.Creator<zzqa> CREATOR = new zzqb();
  final int zzFG;
  final zzpy zzaoO;
  final float zzaoP;
  
  zzqa(int paramInt, zzpy paramzzpy, float paramFloat)
  {
    zzFG = paramInt;
    zzaoO = paramzzpy;
    zzaoP = paramFloat;
  }
  
  public static zzqa zza(zzpy paramzzpy, float paramFloat)
  {
    return new zzqa(0, (zzpy)zzx.zzl(paramzzpy), paramFloat);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof zzqa)) {
        return false;
      }
      paramObject = (zzqa)paramObject;
    } while ((zzaoO.equals(zzaoO)) && (zzaoP == zzaoP));
    return false;
  }
  
  public float getLikelihood()
  {
    return zzaoP;
  }
  
  public Place getPlace()
  {
    return zzaoO;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { zzaoO, Float.valueOf(zzaoP) });
  }
  
  public boolean isDataValid()
  {
    return true;
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("place", zzaoO).zza("likelihood", Float.valueOf(zzaoP)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzqb.zza(this, paramParcel, paramInt);
  }
  
  public PlaceLikelihood zzpX()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */