package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class zzik
  implements Parcelable
{
  @Deprecated
  public static final Parcelable.Creator<zzik> CREATOR = new Parcelable.Creator()
  {
    @Deprecated
    public final zzik[] zzO(int paramAnonymousInt)
    {
      return new zzik[paramAnonymousInt];
    }
    
    @Deprecated
    public final zzik zzk(Parcel paramAnonymousParcel)
    {
      return new zzik(paramAnonymousParcel);
    }
  };
  private String mValue;
  private String zzFA;
  private String zzFB;
  
  @Deprecated
  public zzik() {}
  
  @Deprecated
  zzik(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public zzik(String paramString1, String paramString2, String paramString3)
  {
    zzFA = paramString1;
    zzFB = paramString2;
    mValue = paramString3;
  }
  
  @Deprecated
  private void readFromParcel(Parcel paramParcel)
  {
    zzFA = paramParcel.readString();
    zzFB = paramParcel.readString();
    mValue = paramParcel.readString();
  }
  
  @Deprecated
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return zzFA;
  }
  
  public String getValue()
  {
    return mValue;
  }
  
  @Deprecated
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(zzFA);
    paramParcel.writeString(zzFB);
    paramParcel.writeString(mValue);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */