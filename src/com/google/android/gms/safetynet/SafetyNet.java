package com.google.android.gms.safetynet;

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
import com.google.android.gms.internal.zzum;
import com.google.android.gms.internal.zzun;
import com.google.android.gms.internal.zzuo;

public final class SafetyNet
{
  public static final Api<Api.ApiOptions.NoOptions> API = new Api(zzGS, zzGR, new Scope[0]);
  public static final SafetyNetApi SafetyNetApi = new zzum();
  public static final Api.zzc<zzun> zzGR = new Api.zzc();
  public static final Api.zzb<zzun, Api.ApiOptions.NoOptions> zzGS = new Api.zzb()
  {
    public final int getPriority()
    {
      return Integer.MAX_VALUE;
    }
    
    public final zzun zzp(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, Api.ApiOptions.NoOptions paramAnonymousNoOptions, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new zzun(paramAnonymousContext, paramAnonymousLooper, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
  public static final zzc zzawG = new zzuo();
}

/* Location:
 * Qualified Name:     com.google.android.gms.safetynet.SafetyNet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */