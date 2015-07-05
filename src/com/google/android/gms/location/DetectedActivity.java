package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Comparator;

public class DetectedActivity
  implements SafeParcelable
{
  public static final DetectedActivityCreator CREATOR = new DetectedActivityCreator();
  public static final int IN_VEHICLE = 0;
  public static final int ON_BICYCLE = 1;
  public static final int ON_FOOT = 2;
  public static final int RUNNING = 8;
  public static final int STILL = 3;
  public static final int TILTING = 5;
  public static final int UNKNOWN = 4;
  public static final int WALKING = 7;
  public static final Comparator<DetectedActivity> zzalK = new Comparator()
  {
    public final int zza(DetectedActivity paramAnonymousDetectedActivity1, DetectedActivity paramAnonymousDetectedActivity2)
    {
      int j = Integer.valueOf(paramAnonymousDetectedActivity2.getConfidence()).compareTo(Integer.valueOf(paramAnonymousDetectedActivity1.getConfidence()));
      int i = j;
      if (j == 0) {
        i = Integer.valueOf(paramAnonymousDetectedActivity1.getType()).compareTo(Integer.valueOf(paramAnonymousDetectedActivity2.getType()));
      }
      return i;
    }
  };
  private final int zzFG;
  int zzalL;
  int zzalM;
  
  public DetectedActivity(int paramInt1, int paramInt2)
  {
    zzFG = 1;
    zzalL = paramInt1;
    zzalM = paramInt2;
  }
  
  public DetectedActivity(int paramInt1, int paramInt2, int paramInt3)
  {
    zzFG = paramInt1;
    zzalL = paramInt2;
    zzalM = paramInt3;
  }
  
  private int zzff(int paramInt)
  {
    int i = paramInt;
    if (paramInt > 9) {
      i = 4;
    }
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getConfidence()
  {
    return zzalM;
  }
  
  public int getType()
  {
    return zzff(zzalL);
  }
  
  public int getVersionCode()
  {
    return zzFG;
  }
  
  public String toString()
  {
    return "DetectedActivity [type=" + getType() + ", confidence=" + zzalM + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    DetectedActivityCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.DetectedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */