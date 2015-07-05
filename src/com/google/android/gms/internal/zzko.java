package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;

public final class zzko
{
  public static final Api<Api.ApiOptions.NoOptions> API = new Api(zzGS, zzGR, new Scope[0]);
  public static final Api.zzc<zzks> zzGR = new Api.zzc();
  private static final Api.zzb<zzks, Api.ApiOptions.NoOptions> zzGS = new Api.zzb()
  {
    public final int getPriority()
    {
      return Integer.MAX_VALUE;
    }
    
    public final zzks zzc(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, Api.ApiOptions.NoOptions paramAnonymousNoOptions, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new zzks(paramAnonymousContext, paramAnonymousLooper, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
  public static final zzkp zzQy = new zzkq();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */