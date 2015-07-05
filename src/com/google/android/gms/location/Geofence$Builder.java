package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.zzpk;

public final class Geofence$Builder
{
  private int zzalN = 0;
  private long zzalO = Long.MIN_VALUE;
  private short zzalP = -1;
  private double zzalQ;
  private double zzalR;
  private float zzalS;
  private int zzalT = 0;
  private int zzalU = -1;
  private String zzxv = null;
  
  public final Geofence build()
  {
    if (zzxv == null) {
      throw new IllegalArgumentException("Request ID not set.");
    }
    if (zzalN == 0) {
      throw new IllegalArgumentException("Transitions types not set.");
    }
    if (((zzalN & 0x4) != 0) && (zzalU < 0)) {
      throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
    }
    if (zzalO == Long.MIN_VALUE) {
      throw new IllegalArgumentException("Expiration not set.");
    }
    if (zzalP == -1) {
      throw new IllegalArgumentException("Geofence region not set.");
    }
    if (zzalT < 0) {
      throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
    }
    return new zzpk(zzxv, zzalN, (short)1, zzalQ, zzalR, zzalS, zzalO, zzalT, zzalU);
  }
  
  public final Builder setCircularRegion(double paramDouble1, double paramDouble2, float paramFloat)
  {
    zzalP = 1;
    zzalQ = paramDouble1;
    zzalR = paramDouble2;
    zzalS = paramFloat;
    return this;
  }
  
  public final Builder setExpirationDuration(long paramLong)
  {
    if (paramLong < 0L)
    {
      zzalO = -1L;
      return this;
    }
    zzalO = (SystemClock.elapsedRealtime() + paramLong);
    return this;
  }
  
  public final Builder setLoiteringDelay(int paramInt)
  {
    zzalU = paramInt;
    return this;
  }
  
  public final Builder setNotificationResponsiveness(int paramInt)
  {
    zzalT = paramInt;
    return this;
  }
  
  public final Builder setRequestId(String paramString)
  {
    zzxv = paramString;
    return this;
  }
  
  public final Builder setTransitionTypes(int paramInt)
  {
    zzalN = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.Geofence.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */