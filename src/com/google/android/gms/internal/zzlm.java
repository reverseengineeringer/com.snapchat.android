package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class zzlm
  implements SafeParcelable
{
  public static final zzln CREATOR = new zzln();
  final int zzFG;
  private final long zzRi;
  private String zzRj;
  private final String zzRk;
  private final String zzRl;
  private final String zzRm;
  private final String zzRn;
  private final String zzRo;
  private final long zzRp;
  private long zzRq;
  
  zzlm(int paramInt, long paramLong1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong2)
  {
    zzFG = paramInt;
    zzRi = paramLong1;
    zzRj = paramString1;
    zzRk = paramString2;
    zzRl = paramString3;
    zzRm = paramString4;
    zzRn = paramString5;
    zzRq = -1L;
    zzRo = paramString6;
    zzRp = paramLong2;
  }
  
  public zzlm(long paramLong1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong2)
  {
    this(1, paramLong1, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramLong2);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final long getTimeMillis()
  {
    return zzRi;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzln.zza(this, paramParcel, paramInt);
  }
  
  public final String zzjT()
  {
    return zzRj;
  }
  
  public final String zzjU()
  {
    return zzRk;
  }
  
  public final String zzjV()
  {
    return zzRl;
  }
  
  public final String zzjW()
  {
    return zzRm;
  }
  
  public final String zzjX()
  {
    return zzRn;
  }
  
  public final String zzjY()
  {
    return zzRo;
  }
  
  public final long zzjZ()
  {
    return zzRp;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */