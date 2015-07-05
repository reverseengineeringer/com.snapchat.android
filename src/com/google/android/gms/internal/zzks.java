package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzk;

public class zzks
  extends zzk<zzku>
{
  public zzks(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, 39, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  protected zzku zzY(IBinder paramIBinder)
  {
    return zzku.zza.zzaa(paramIBinder);
  }
  
  public String zzcF()
  {
    return "com.google.android.gms.common.service.START";
  }
  
  protected String zzcG()
  {
    return "com.google.android.gms.common.internal.service.ICommonService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */