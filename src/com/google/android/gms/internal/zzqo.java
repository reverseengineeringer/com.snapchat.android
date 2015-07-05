package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public class zzqo
  implements SafeParcelable
{
  public static final zzqp CREATOR = new zzqp();
  public static final zzqo zzaph = new zzqo(0, "Home");
  public static final zzqo zzapi = new zzqo(0, "Work");
  final int zzFG;
  private final String zzapj;
  
  zzqo(int paramInt, String paramString)
  {
    zzFG = paramInt;
    zzapj = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof zzqo)) {
      return false;
    }
    paramObject = (zzqo)paramObject;
    return zzw.equal(zzapj, zzapj);
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { zzapj });
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("alias", zzapj).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzqp.zza(this, paramParcel, paramInt);
  }
  
  public String zzpY()
  {
    return zzapj;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */