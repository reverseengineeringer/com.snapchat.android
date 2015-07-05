package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

class zzvg$zzc<T>
{
  private T mData;
  private Status zzHb;
  private long zzaBW;
  
  public zzvg$zzc(Status paramStatus, T paramT, long paramLong)
  {
    zzHb = paramStatus;
    mData = paramT;
    zzaBW = paramLong;
  }
  
  public void zzD(T paramT)
  {
    mData = paramT;
  }
  
  public void zzJ(long paramLong)
  {
    zzaBW = paramLong;
  }
  
  public void zzaO(Status paramStatus)
  {
    zzHb = paramStatus;
  }
  
  public long zzum()
  {
    return zzaBW;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvg.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */