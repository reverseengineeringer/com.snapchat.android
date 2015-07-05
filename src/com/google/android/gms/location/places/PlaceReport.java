package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;

public class PlaceReport
  implements SafeParcelable
{
  public static final PlaceReportCreator CREATOR = new PlaceReportCreator();
  private final String mTag;
  final int zzFG;
  private final String zzanM;
  private final String zzanN;
  
  PlaceReport(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    zzFG = paramInt;
    zzanM = paramString1;
    mTag = paramString2;
    zzanN = paramString3;
  }
  
  public static PlaceReport create(String paramString1, String paramString2)
  {
    return zzf(paramString1, paramString2, "unknown");
  }
  
  private static boolean zzcm(String paramString)
  {
    boolean bool = true;
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        bool = false;
      }
      return bool;
      if (paramString.equals("unknown"))
      {
        i = 0;
        continue;
        if (paramString.equals("userReported"))
        {
          i = 1;
          continue;
          if (paramString.equals("inferredGeofencing"))
          {
            i = 2;
            continue;
            if (paramString.equals("inferredRadioSignals"))
            {
              i = 3;
              continue;
              if (paramString.equals("inferredReverseGeocoding")) {
                i = 4;
              }
            }
          }
        }
      }
    }
  }
  
  public static PlaceReport zzf(String paramString1, String paramString2, String paramString3)
  {
    zzx.zzbn(paramString1);
    zzx.zzbn(paramString2);
    zzx.zzbn(paramString3);
    zzx.zzb(zzcm(paramString3), "Invalid source");
    return new PlaceReport(1, paramString1, paramString2, paramString3);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PlaceReport)) {}
    do
    {
      return false;
      paramObject = (PlaceReport)paramObject;
    } while ((!zzw.equal(zzanM, zzanM)) || (!zzw.equal(mTag, mTag)) || (!zzw.equal(zzanN, zzanN)));
    return true;
  }
  
  public String getPlaceId()
  {
    return zzanM;
  }
  
  public String getSource()
  {
    return zzanN;
  }
  
  public String getTag()
  {
    return mTag;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { zzanM, mTag, zzanN });
  }
  
  public String toString()
  {
    zzw.zza localzza = zzw.zzk(this);
    localzza.zza("placeId", zzanM);
    localzza.zza("tag", mTag);
    if (!"unknown".equals(zzanN)) {
      localzza.zza("source", zzanN);
    }
    return localzza.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    PlaceReportCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.PlaceReport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */