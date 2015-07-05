package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public final class LocationRequest
  implements SafeParcelable
{
  public static final zzg CREATOR = new zzg();
  public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
  public static final int PRIORITY_HIGH_ACCURACY = 100;
  public static final int PRIORITY_LOW_POWER = 104;
  public static final int PRIORITY_NO_POWER = 105;
  int mPriority;
  private final int zzFG;
  boolean zzabz;
  long zzalO;
  long zzamf;
  long zzamg;
  int zzamh;
  float zzami;
  long zzamj;
  
  public LocationRequest()
  {
    zzFG = 1;
    mPriority = 102;
    zzamf = 3600000L;
    zzamg = 600000L;
    zzabz = false;
    zzalO = Long.MAX_VALUE;
    zzamh = Integer.MAX_VALUE;
    zzami = 0.0F;
    zzamj = 0L;
  }
  
  LocationRequest(int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt3, float paramFloat, long paramLong4)
  {
    zzFG = paramInt1;
    mPriority = paramInt2;
    zzamf = paramLong1;
    zzamg = paramLong2;
    zzabz = paramBoolean;
    zzalO = paramLong3;
    zzamh = paramInt3;
    zzami = paramFloat;
    zzamj = paramLong4;
  }
  
  public static LocationRequest create()
  {
    return new LocationRequest();
  }
  
  private static void zzA(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("invalid interval: " + paramLong);
    }
  }
  
  private static void zza(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("invalid displacement: " + paramFloat);
    }
  }
  
  private static void zzfj(int paramInt)
  {
    switch (paramInt)
    {
    case 101: 
    case 103: 
    default: 
      throw new IllegalArgumentException("invalid quality: " + paramInt);
    }
  }
  
  public static String zzfk(int paramInt)
  {
    switch (paramInt)
    {
    case 101: 
    case 103: 
    default: 
      return "???";
    case 100: 
      return "PRIORITY_HIGH_ACCURACY";
    case 102: 
      return "PRIORITY_BALANCED_POWER_ACCURACY";
    case 104: 
      return "PRIORITY_LOW_POWER";
    }
    return "PRIORITY_NO_POWER";
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
      if (!(paramObject instanceof LocationRequest)) {
        return false;
      }
      paramObject = (LocationRequest)paramObject;
    } while ((mPriority == mPriority) && (zzamf == zzamf) && (zzamg == zzamg) && (zzabz == zzabz) && (zzalO == zzalO) && (zzamh == zzamh) && (zzami == zzami));
    return false;
  }
  
  public final long getExpirationTime()
  {
    return zzalO;
  }
  
  public final long getFastestInterval()
  {
    return zzamg;
  }
  
  public final long getInterval()
  {
    return zzamf;
  }
  
  public final int getNumUpdates()
  {
    return zzamh;
  }
  
  public final int getPriority()
  {
    return mPriority;
  }
  
  public final float getSmallestDisplacement()
  {
    return zzami;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(mPriority), Long.valueOf(zzamf), Long.valueOf(zzamg), Boolean.valueOf(zzabz), Long.valueOf(zzalO), Integer.valueOf(zzamh), Float.valueOf(zzami) });
  }
  
  public final LocationRequest setExpirationDuration(long paramLong)
  {
    long l = SystemClock.elapsedRealtime();
    if (paramLong > Long.MAX_VALUE - l) {}
    for (zzalO = Long.MAX_VALUE;; zzalO = (l + paramLong))
    {
      if (zzalO < 0L) {
        zzalO = 0L;
      }
      return this;
    }
  }
  
  public final LocationRequest setExpirationTime(long paramLong)
  {
    zzalO = paramLong;
    if (zzalO < 0L) {
      zzalO = 0L;
    }
    return this;
  }
  
  public final LocationRequest setFastestInterval(long paramLong)
  {
    zzA(paramLong);
    zzabz = true;
    zzamg = paramLong;
    return this;
  }
  
  public final LocationRequest setInterval(long paramLong)
  {
    zzA(paramLong);
    zzamf = paramLong;
    if (!zzabz) {
      zzamg = ((zzamf / 6.0D));
    }
    return this;
  }
  
  public final LocationRequest setNumUpdates(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("invalid numUpdates: " + paramInt);
    }
    zzamh = paramInt;
    return this;
  }
  
  public final LocationRequest setPriority(int paramInt)
  {
    zzfj(paramInt);
    mPriority = paramInt;
    return this;
  }
  
  public final LocationRequest setSmallestDisplacement(float paramFloat)
  {
    zza(paramFloat);
    zzami = paramFloat;
    return this;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Request[").append(zzfk(mPriority));
    if (mPriority != 105)
    {
      localStringBuilder.append(" requested=");
      localStringBuilder.append(zzamf + "ms");
    }
    localStringBuilder.append(" fastest=");
    localStringBuilder.append(zzamg + "ms");
    if (zzamj > zzamf)
    {
      localStringBuilder.append(" maxWait=");
      localStringBuilder.append(zzamj + "ms");
    }
    if (zzalO != Long.MAX_VALUE)
    {
      long l1 = zzalO;
      long l2 = SystemClock.elapsedRealtime();
      localStringBuilder.append(" expireIn=");
      localStringBuilder.append(l1 - l2 + "ms");
    }
    if (zzamh != Integer.MAX_VALUE) {
      localStringBuilder.append(" num=").append(zzamh);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzg.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */