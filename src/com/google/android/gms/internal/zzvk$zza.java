package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

public class zzvk$zza
{
  private final Status zzHb;
  private final zza zzaCa;
  private final byte[] zzaCb;
  private final long zzaCc;
  private final zzve zzaCd;
  private final zzvl.zzc zzaCe;
  
  public zzvk$zza(Status paramStatus, zzve paramzzve, zza paramzza)
  {
    this(paramStatus, paramzzve, null, null, paramzza, 0L);
  }
  
  public zzvk$zza(Status paramStatus, zzve paramzzve, byte[] paramArrayOfByte, zzvl.zzc paramzzc, zza paramzza, long paramLong)
  {
    zzHb = paramStatus;
    zzaCd = paramzzve;
    zzaCb = paramArrayOfByte;
    zzaCe = paramzzc;
    zzaCa = paramzza;
    zzaCc = paramLong;
  }
  
  public Status getStatus()
  {
    return zzHb;
  }
  
  public zza zzup()
  {
    return zzaCa;
  }
  
  public byte[] zzuq()
  {
    return zzaCb;
  }
  
  public zzve zzur()
  {
    return zzaCd;
  }
  
  public zzvl.zzc zzus()
  {
    return zzaCe;
  }
  
  public long zzut()
  {
    return zzaCc;
  }
  
  public static enum zza
  {
    private zza() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvk.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */