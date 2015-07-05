package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.zza.zza;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpf;

public class ActivityRecognition
{
  public static final Api<Api.ApiOptions.NoOptions> API = new Api(zzGS, zzGR, new Scope[0]);
  public static ActivityRecognitionApi ActivityRecognitionApi = new zzov();
  public static final String CLIENT_NAME = "activity_recognition";
  private static final Api.zzc<zzpf> zzGR = new Api.zzc();
  private static final Api.zzb<zzpf, Api.ApiOptions.NoOptions> zzGS = new Api.zzb()
  {
    public final int getPriority()
    {
      return Integer.MAX_VALUE;
    }
    
    public final zzpf zzk(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, Api.ApiOptions.NoOptions paramAnonymousNoOptions, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new zzpf(paramAnonymousContext, paramAnonymousLooper, paramAnonymousContext.getPackageName(), paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener, "activity_recognition");
    }
  };
  
  public static abstract class zza<R extends Result>
    extends zza.zza<R, zzpf>
  {
    public zza(GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.ActivityRecognition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */