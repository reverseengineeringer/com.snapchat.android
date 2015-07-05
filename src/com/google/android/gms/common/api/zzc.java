package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

public abstract class zzc
  implements Releasable, Result
{
  protected final Status zzHb;
  protected final DataHolder zzMd;
  
  protected zzc(DataHolder paramDataHolder)
  {
    this(paramDataHolder, new Status(paramDataHolder.getStatusCode()));
  }
  
  protected zzc(DataHolder paramDataHolder, Status paramStatus)
  {
    zzHb = paramStatus;
    zzMd = paramDataHolder;
  }
  
  public Status getStatus()
  {
    return zzHb;
  }
  
  public void release()
  {
    if (zzMd != null) {
      zzMd.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */