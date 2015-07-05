package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

public class zztj
  implements SafeParcelable
{
  public static final zztk CREATOR = new zztk();
  public final String packageName;
  public final int versionCode;
  public final int zzatW;
  public final int zzatX;
  public final String zzatY;
  public final String zzatZ;
  public final boolean zzaua;
  public final String zzaub;
  
  public zztj(int paramInt1, String paramString1, int paramInt2, int paramInt3, String paramString2, String paramString3, boolean paramBoolean, String paramString4)
  {
    versionCode = paramInt1;
    packageName = paramString1;
    zzatW = paramInt2;
    zzatX = paramInt3;
    zzatY = paramString2;
    zzatZ = paramString3;
    zzaua = paramBoolean;
    zzaub = paramString4;
  }
  
  @Deprecated
  public zztj(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, boolean paramBoolean)
  {
    versionCode = 1;
    packageName = ((String)zzx.zzl(paramString1));
    zzatW = paramInt1;
    zzatX = paramInt2;
    zzaub = null;
    zzatY = paramString2;
    zzatZ = paramString3;
    zzaua = paramBoolean;
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
      if (!(paramObject instanceof zztj)) {
        break;
      }
      paramObject = (zztj)paramObject;
    } while ((packageName.equals(packageName)) && (zzatW == zzatW) && (zzatX == zzatX) && (zzw.equal(zzaub, zzaub)) && (zzw.equal(zzatY, zzatY)) && (zzw.equal(zzatZ, zzatZ)) && (zzaua == zzaua));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { packageName, Integer.valueOf(zzatW), Integer.valueOf(zzatX), zzatY, zzatZ, Boolean.valueOf(zzaua) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PlayLoggerContext[");
    localStringBuilder.append("package=").append(packageName).append(',');
    localStringBuilder.append("versionCode=").append(versionCode).append(',');
    localStringBuilder.append("logSource=").append(zzatX).append(',');
    localStringBuilder.append("logSourceName=").append(zzaub).append(',');
    localStringBuilder.append("uploadAccount=").append(zzatY).append(',');
    localStringBuilder.append("loggingId=").append(zzatZ).append(',');
    localStringBuilder.append("logAndroidId=").append(zzaua);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zztk.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */