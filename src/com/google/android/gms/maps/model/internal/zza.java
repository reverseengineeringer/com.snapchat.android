package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class zza
  implements SafeParcelable
{
  public static final zzb CREATOR = new zzb();
  private final int zzFG;
  private byte zzarN;
  private Bundle zzarO;
  private Bitmap zzarP;
  
  zza(int paramInt, byte paramByte, Bundle paramBundle, Bitmap paramBitmap)
  {
    zzFG = paramInt;
    zzarN = paramByte;
    zzarO = paramBundle;
    zzarP = paramBitmap;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Bitmap getBitmap()
  {
    return zzarP;
  }
  
  public final byte getType()
  {
    return zzarN;
  }
  
  public final int getVersionCode()
  {
    return zzFG;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzb.zza(this, paramParcel, paramInt);
  }
  
  public final Bundle zzqL()
  {
    return zzarO;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */