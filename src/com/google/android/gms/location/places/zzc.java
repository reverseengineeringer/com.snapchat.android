package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public final class zzc
  implements SafeParcelable
{
  public static final zzd CREATOR = new zzd();
  private final int zzFG;
  private final int zzalN;
  private final int zzanA;
  private final PlaceFilter zzanB;
  
  zzc(int paramInt1, int paramInt2, int paramInt3, PlaceFilter paramPlaceFilter)
  {
    zzFG = paramInt1;
    zzalN = paramInt2;
    zzanA = paramInt3;
    zzanB = paramPlaceFilter;
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
      if (!(paramObject instanceof zzc)) {
        return false;
      }
      paramObject = (zzc)paramObject;
    } while ((zzalN == zzalN) && (zzanA == zzanA) && (zzanB.equals(zzanB)));
    return false;
  }
  
  public final int getVersionCode()
  {
    return zzFG;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(zzalN), Integer.valueOf(zzanA) });
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("transitionTypes", Integer.valueOf(zzalN)).zza("loiteringTimeMillis", Integer.valueOf(zzanA)).zza("placeFilter", zzanB).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzd.zza(this, paramParcel, paramInt);
  }
  
  public final int zzpD()
  {
    return zzalN;
  }
  
  public final int zzpG()
  {
    return zzanA;
  }
  
  public final PlaceFilter zzpH()
  {
    return zzanB;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */