package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zzaa;

public final class Tile
  implements SafeParcelable
{
  public static final zzu CREATOR = new zzu();
  public final byte[] data;
  public final int height;
  public final int width;
  private final int zzFG;
  
  Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    zzFG = paramInt1;
    width = paramInt2;
    height = paramInt3;
    data = paramArrayOfByte;
  }
  
  public Tile(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    this(1, paramInt1, paramInt2, paramArrayOfByte);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzv.zza(this, paramParcel, paramInt);
      return;
    }
    zzu.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */