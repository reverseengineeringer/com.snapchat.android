package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import java.util.concurrent.Executors;

public final class zzup
{
  public static final Api<zzus> API = new Api(zzGS, zzGR, new Scope[0]);
  public static final Api.zzc<zzvc> zzGR = new Api.zzc();
  public static final Api.zzb<zzvc, zzus> zzGS = new Api.zzb()
  {
    public final int getPriority()
    {
      return Integer.MAX_VALUE;
    }
    
    public final zzvc zza(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, zzus paramAnonymouszzus, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      if (paramAnonymouszzus == null) {
        paramAnonymouszzus = zzus.zzawP;
      }
      for (;;)
      {
        return new zzvc(paramAnonymousContext, paramAnonymousLooper, paramAnonymouszzf, paramAnonymouszzus, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener, Executors.newSingleThreadExecutor());
      }
    }
  };
  public static final zzuq zzawO = new zzvb();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */