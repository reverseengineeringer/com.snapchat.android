package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.Geofence;
import java.util.Locale;

public class zzpk
  implements SafeParcelable, Geofence
{
  public static final zzpl CREATOR = new zzpl();
  private final int zzFG;
  private final int zzalN;
  private final short zzalP;
  private final double zzalQ;
  private final double zzalR;
  private final float zzalS;
  private final int zzalT;
  private final int zzalU;
  private final long zzanp;
  private final String zzxv;
  
  public zzpk(int paramInt1, String paramString, int paramInt2, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt3, int paramInt4)
  {
    zzcl(paramString);
    zzb(paramFloat);
    zza(paramDouble1, paramDouble2);
    paramInt2 = zzfw(paramInt2);
    zzFG = paramInt1;
    zzalP = paramShort;
    zzxv = paramString;
    zzalQ = paramDouble1;
    zzalR = paramDouble2;
    zzalS = paramFloat;
    zzanp = paramLong;
    zzalN = paramInt2;
    zzalT = paramInt3;
    zzalU = paramInt4;
  }
  
  public zzpk(String paramString, int paramInt1, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt2, int paramInt3)
  {
    this(1, paramString, paramInt1, paramShort, paramDouble1, paramDouble2, paramFloat, paramLong, paramInt2, paramInt3);
  }
  
  private static void zza(double paramDouble1, double paramDouble2)
  {
    if ((paramDouble1 > 90.0D) || (paramDouble1 < -90.0D)) {
      throw new IllegalArgumentException("invalid latitude: " + paramDouble1);
    }
    if ((paramDouble2 > 180.0D) || (paramDouble2 < -180.0D)) {
      throw new IllegalArgumentException("invalid longitude: " + paramDouble2);
    }
  }
  
  private static void zzb(float paramFloat)
  {
    if (paramFloat <= 0.0F) {
      throw new IllegalArgumentException("invalid radius: " + paramFloat);
    }
  }
  
  private static void zzcl(String paramString)
  {
    if ((paramString == null) || (paramString.length() > 100)) {
      throw new IllegalArgumentException("requestId is null or too long: " + paramString);
    }
  }
  
  private static int zzfw(int paramInt)
  {
    int i = paramInt & 0x7;
    if (i == 0) {
      throw new IllegalArgumentException("No supported transition specified: " + paramInt);
    }
    return i;
  }
  
  private static String zzfx(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return "CIRCLE";
  }
  
  public static zzpk zzi(byte[] paramArrayOfByte)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    paramArrayOfByte = CREATOR.zzdx(localParcel);
    localParcel.recycle();
    return paramArrayOfByte;
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
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof zzpk)) {
        return false;
      }
      paramObject = (zzpk)paramObject;
      if (zzalS != zzalS) {
        return false;
      }
      if (zzalQ != zzalQ) {
        return false;
      }
      if (zzalR != zzalR) {
        return false;
      }
    } while (zzalP == zzalP);
    return false;
  }
  
  public long getExpirationTime()
  {
    return zzanp;
  }
  
  public double getLatitude()
  {
    return zzalQ;
  }
  
  public double getLongitude()
  {
    return zzalR;
  }
  
  public int getNotificationResponsiveness()
  {
    return zzalT;
  }
  
  public String getRequestId()
  {
    return zzxv;
  }
  
  public int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(zzalQ);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(zzalR);
    return ((((i + 31) * 31 + (int)(l ^ l >>> 32)) * 31 + Float.floatToIntBits(zzalS)) * 31 + zzalP) * 31 + zzalN;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", new Object[] { zzfx(zzalP), zzxv, Integer.valueOf(zzalN), Double.valueOf(zzalQ), Double.valueOf(zzalR), Float.valueOf(zzalS), Integer.valueOf(zzalT / 1000), Integer.valueOf(zzalU), Long.valueOf(zzanp) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzpl.zza(this, paramParcel, paramInt);
  }
  
  public short zzpB()
  {
    return zzalP;
  }
  
  public float zzpC()
  {
    return zzalS;
  }
  
  public int zzpD()
  {
    return zzalN;
  }
  
  public int zzpE()
  {
    return zzalU;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */