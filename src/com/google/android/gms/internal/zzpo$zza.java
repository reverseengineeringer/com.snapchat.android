package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.location.places.AutocompletePrediction.Substring;

public class zzpo$zza
  implements SafeParcelable, AutocompletePrediction.Substring
{
  public static final Parcelable.Creator<zza> CREATOR = new zzqk();
  final int mLength;
  final int mOffset;
  final int zzFG;
  
  public zzpo$zza(int paramInt1, int paramInt2, int paramInt3)
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpo.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */