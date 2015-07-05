package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@zzgi
public final class zzhy
  implements SafeParcelable
{
  public static final zzhz CREATOR = new zzhz();
  public final int versionCode;
  public String zzzH;
  public int zzzI;
  public int zzzJ;
  public boolean zzzK;
  
  public zzhy(int paramInt1, int paramInt2, boolean paramBoolean) {}
  
  zzhy(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    versionCode = paramInt1;
    zzzH = paramString;
    zzzI = paramInt2;
    zzzJ = paramInt3;
    zzzK = paramBoolean;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzhz.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */