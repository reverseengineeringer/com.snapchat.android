package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zze;
import com.google.android.gms.common.internal.zzx;

public final class zzqr
  extends zze<zzqq>
  implements Result
{
  private final Status zzHb;
  
  public zzqr(DataHolder paramDataHolder)
  {
    this(paramDataHolder, new Status(paramDataHolder.getStatusCode()));
  }
  
  private zzqr(DataHolder paramDataHolder, Status paramStatus)
  {
    super(paramDataHolder, zzqq.CREATOR);
    if ((paramDataHolder == null) || (paramDataHolder.getStatusCode() == paramStatus.getStatusCode())) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzO(bool);
      zzHb = paramStatus;
      return;
    }
  }
  
  public static zzqr zzaE(Status paramStatus)
  {
    return new zzqr(null, paramStatus);
  }
  
  public final Status getStatus()
  {
    return zzHb;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */