package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.Locale;

public class zzqh
  implements SafeParcelable
{
  public static final zzqi CREATOR = new zzqi();
  public static final zzqh zzapa = new zzqh("com.google.android.gms", Locale.getDefault(), null);
  public final int versionCode;
  public final String zzaob;
  public final String zzapb;
  public final String zzapc;
  public final String zzapd;
  public final String zzape;
  
  public zzqh(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    versionCode = paramInt;
    zzapb = paramString1;
    zzapc = paramString2;
    zzapd = paramString3;
    zzaob = paramString4;
    zzape = paramString5;
  }
  
  public zzqh(String paramString1, Locale paramLocale, String paramString2)
  {
    this(1, paramString1, paramLocale.toString(), paramString2, null, null);
  }
  
  public zzqh(String paramString1, Locale paramLocale, String paramString2, String paramString3, String paramString4)
  {
    this(1, paramString1, paramLocale.toString(), paramString2, paramString3, paramString4);
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
      if ((paramObject == null) || (!(paramObject instanceof zzqh))) {
        return false;
      }
      paramObject = (zzqh)paramObject;
    } while ((zzapc.equals(zzapc)) && (zzapb.equals(zzapb)) && (zzw.equal(zzapd, zzapd)) && (zzw.equal(zzaob, zzaob)) && (zzw.equal(zzape, zzape)));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { zzapb, zzapc, zzapd, zzaob, zzape });
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("clientPackageName", zzapb).zza("locale", zzapc).zza("accountName", zzapd).zza("gCoreClientName", zzaob).zza("chargedPackageName", zzape).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzqi.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */