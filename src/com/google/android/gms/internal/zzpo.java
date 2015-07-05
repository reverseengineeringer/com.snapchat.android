package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.AutocompletePrediction;
import com.google.android.gms.location.places.AutocompletePrediction.Substring;
import java.util.List;

public class zzpo
  implements SafeParcelable, AutocompletePrediction
{
  public static final Parcelable.Creator<zzpo> CREATOR = new zzpp();
  final int zzFG;
  final String zzZO;
  final String zzanM;
  final List<Integer> zzanu;
  final List<zza> zzaoi;
  final int zzaoj;
  
  zzpo(int paramInt1, String paramString1, String paramString2, List<Integer> paramList, List<zza> paramList1, int paramInt2)
  {
    zzFG = paramInt1;
    zzZO = paramString1;
    zzanM = paramString2;
    zzanu = paramList;
    zzaoi = paramList1;
    zzaoj = paramInt2;
  }
  
  public static zzpo zza(String paramString1, String paramString2, List<Integer> paramList, List<zza> paramList1, int paramInt)
  {
    return new zzpo(0, (String)zzx.zzl(paramString1), paramString2, paramList, paramList1, paramInt);
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
      if (!(paramObject instanceof zzpo)) {
        return false;
      }
      paramObject = (zzpo)paramObject;
    } while ((zzw.equal(zzZO, zzZO)) && (zzw.equal(zzanM, zzanM)) && (zzw.equal(zzanu, zzanu)) && (zzw.equal(zzaoi, zzaoi)) && (zzw.equal(Integer.valueOf(zzaoj), Integer.valueOf(zzaoj))));
    return false;
  }
  
  public String getDescription()
  {
    return zzZO;
  }
  
  public List<? extends AutocompletePrediction.Substring> getMatchedSubstrings()
  {
    return zzaoi;
  }
  
  public String getPlaceId()
  {
    return zzanM;
  }
  
  public List<Integer> getPlaceTypes()
  {
    return zzanu;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { zzZO, zzanM, zzanu, zzaoi, Integer.valueOf(zzaoj) });
  }
  
  public boolean isDataValid()
  {
    return true;
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("description", zzZO).zza("placeId", zzanM).zza("placeTypes", zzanu).zza("substrings", zzaoi).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzpp.zza(this, paramParcel, paramInt);
  }
  
  public AutocompletePrediction zzpL()
  {
    return this;
  }
  
  public static class zza
    implements SafeParcelable, AutocompletePrediction.Substring
  {
    public static final Parcelable.Creator<zza> CREATOR = new zzqk();
    final int mLength;
    final int mOffset;
    final int zzFG;
    
    public zza(int paramInt1, int paramInt2, int paramInt3)
    {
      zzFG = paramInt1;
      mOffset = paramInt2;
      mLength = paramInt3;
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
        if (!(paramObject instanceof zza)) {
          return false;
        }
        paramObject = (zza)paramObject;
      } while ((zzw.equal(Integer.valueOf(mOffset), Integer.valueOf(mOffset))) && (zzw.equal(Integer.valueOf(mLength), Integer.valueOf(mLength))));
      return false;
    }
    
    public int getLength()
    {
      return mLength;
    }
    
    public int getOffset()
    {
      return mOffset;
    }
    
    public int hashCode()
    {
      return zzw.hashCode(new Object[] { Integer.valueOf(mOffset), Integer.valueOf(mLength) });
    }
    
    public String toString()
    {
      return zzw.zzk(this).zza("offset", Integer.valueOf(mOffset)).zza("length", Integer.valueOf(mLength)).toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      zzqk.zza(this, paramParcel, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */