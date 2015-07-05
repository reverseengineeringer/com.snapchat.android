package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.List;

@Deprecated
public final class zzqd
  implements SafeParcelable
{
  public static final zzqe CREATOR = new zzqe();
  public final String name;
  public final int versionCode;
  public final String zzaoQ;
  public final String zzaoR;
  public final String zzaoS;
  public final List<String> zzaoT;
  
  public zzqd(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList)
  {
    versionCode = paramInt;
    name = paramString1;
    zzaoQ = paramString2;
    zzaoR = paramString3;
    zzaoS = paramString4;
    zzaoT = paramList;
  }
  
  public static zzqd zza(String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList)
  {
    return new zzqd(0, paramString1, paramString2, paramString3, paramString4, paramList);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof zzqd)) {
        return false;
      }
      paramObject = (zzqd)paramObject;
    } while ((zzw.equal(name, name)) && (zzw.equal(zzaoQ, zzaoQ)) && (zzw.equal(zzaoR, zzaoR)) && (zzw.equal(zzaoS, zzaoS)) && (zzw.equal(zzaoT, zzaoT)));
    return false;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { name, zzaoQ, zzaoR, zzaoS });
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("name", name).zza("address", zzaoQ).zza("internationalPhoneNumber", zzaoR).zza("regularOpenHours", zzaoS).zza("attributions", zzaoT).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzqe.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */