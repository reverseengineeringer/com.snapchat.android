package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zzky
  implements SafeParcelable
{
  public static final zzkz CREATOR = new zzkz();
  private final int zzFG;
  private final zzla zzQJ;
  
  zzky(int paramInt, zzla paramzzla)
  {
    zzFG = paramInt;
    zzQJ = paramzzla;
  }
  
  private zzky(zzla paramzzla)
  {
    zzFG = 1;
    zzQJ = paramzzla;
  }
  
  public static zzky zza(zzld.zzb<?, ?> paramzzb)
  {
    if ((paramzzb instanceof zzla)) {
      return new zzky((zzla)paramzzb);
    }
    throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzkz.zza(this, paramParcel, paramInt);
  }
  
  zzla zzju()
  {
    return zzQJ;
  }
  
  public zzld.zzb<?, ?> zzjv()
  {
    if (zzQJ != null) {
      return zzQJ;
    }
    throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */