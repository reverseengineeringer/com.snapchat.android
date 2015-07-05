package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.concurrent.TimeUnit;

public final class zzf
  implements SafeParcelable
{
  public static final zzg CREATOR = new zzg();
  static final long zzanO = TimeUnit.HOURS.toMillis(1L);
  private final int mPriority;
  final int zzFG;
  private final long zzalO;
  private final long zzamf;
  private final PlaceFilter zzanP;
  
  public zzf(int paramInt1, PlaceFilter paramPlaceFilter, long paramLong1, int paramInt2, long paramLong2)
  {
    zzFG = paramInt1;
    zzanP = paramPlaceFilter;
    zzamf = paramLong1;
    mPriority = paramInt2;
    zzalO = paramLong2;
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
      if (!(paramObject instanceof zzf)) {
        return false;
      }
      paramObject = (zzf)paramObject;
    } while ((zzw.equal(zzanP, zzanP)) && (zzamf == zzamf) && (mPriority == mPriority) && (zzalO == zzalO));
    return false;
  }
  
  public final long getExpirationTime()
  {
    return zzalO;
  }
  
  public final long getInterval()
  {
    return zzamf;
  }
  
  public final int getPriority()
  {
    return mPriority;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { zzanP, Long.valueOf(zzamf), Integer.valueOf(mPriority), Long.valueOf(zzalO) });
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("filter", zzanP).zza("interval", Long.valueOf(zzamf)).zza("priority", Integer.valueOf(mPriority)).zza("expireAt", Long.valueOf(zzalO)).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzg.zza(this, paramParcel, paramInt);
  }
  
  public final PlaceFilter zzpH()
  {
    return zzanP;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */