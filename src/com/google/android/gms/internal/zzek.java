package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@zzgi
public final class zzek
  implements SafeParcelable
{
  public static final zzej CREATOR = new zzej();
  public final String mimeType;
  public final String packageName;
  public final int versionCode;
  public final String zztQ;
  public final String zztR;
  public final String zztS;
  public final String zztT;
  public final String zztU;
  
  public zzek(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    versionCode = paramInt;
    zztQ = paramString1;
    zztR = paramString2;
    mimeType = paramString3;
    packageName = paramString4;
    zztS = paramString5;
    zztT = paramString6;
    zztU = paramString7;
  }
  
  public zzek(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this(1, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzej.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */