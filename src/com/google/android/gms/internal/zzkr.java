package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza.zza;

abstract class zzkr<R extends Result>
  extends zza.zza<R, zzks>
{
  public zzkr(GoogleApiClient paramGoogleApiClient)
  {
    super(zzko.zzGR, paramGoogleApiClient);
  }
  
  static abstract class zza
    extends zzkr<Status>
  {
    public zza(GoogleApiClient paramGoogleApiClient)
    {
      super();
    }
    
    public Status zzb(Status paramStatus)
    {
      return paramStatus;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */