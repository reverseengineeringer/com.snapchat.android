package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.List;

public class zzqq
  implements SafeParcelable
{
  public static final zzqs CREATOR = new zzqs();
  final int zzFG;
  private final String zzHg;
  private final String zzanM;
  private final List<zzqu> zzapk;
  private final List<zzqo> zzapl;
  private final List<zzqm> zzapm;
  
  zzqq(int paramInt, String paramString1, String paramString2, List<zzqu> paramList, List<zzqo> paramList1, List<zzqm> paramList2)
  {
    zzFG = paramInt;
    zzHg = paramString1;
    zzanM = paramString2;
    zzapk = paramList;
    zzapl = paramList1;
    zzapm = paramList2;
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
      if (!(paramObject instanceof zzqq)) {
        return false;
      }
      paramObject = (zzqq)paramObject;
    } while ((zzHg.equals(zzHg)) && (zzanM.equals(zzanM)) && (zzapk.equals(zzapk)) && (zzapl.equals(zzapl)) && (zzapm.equals(zzapm)));
    return false;
  }
  
  public String getPlaceId()
  {
    return zzanM;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { zzHg, zzanM, zzapk, zzapl, zzapm });
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("accountName", zzHg).zza("placeId", zzanM).zza("testDataImpls", zzapk).zza("placeAliases", zzapl).zza("hereContents", zzapm).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzqs.zza(this, paramParcel, paramInt);
  }
  
  public String zzpZ()
  {
    return zzHg;
  }
  
  public List<zzqo> zzqa()
  {
    return zzapl;
  }
  
  public List<zzqm> zzqb()
  {
    return zzapm;
  }
  
  public List<zzqu> zzqc()
  {
    return zzapk;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */