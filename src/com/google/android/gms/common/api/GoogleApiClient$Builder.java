package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzup;
import com.google.android.gms.internal.zzur;
import com.google.android.gms.internal.zzus;
import com.google.android.gms.internal.zzus.zza;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class GoogleApiClient$Builder
{
  private final Context mContext;
  private Account zzFN;
  private Looper zzMc;
  private final Set<String> zzMe = new HashSet();
  private int zzMf;
  private View zzMg;
  private String zzMh;
  private String zzMi;
  private final Map<Api<?>, Api.ApiOptions> zzMj = new HashMap();
  private final Map<Api<?>, Boolean> zzMk = new HashMap();
  private FragmentActivity zzMl;
  private int zzMm = -1;
  private GoogleApiClient.OnConnectionFailedListener zzMn;
  private Api.zzb<? extends zzur, zzus> zzMo;
  private final Set<GoogleApiClient.ConnectionCallbacks> zzMp = new HashSet();
  private final Set<GoogleApiClient.OnConnectionFailedListener> zzMq = new HashSet();
  private zzus.zza zzMr = new zzus.zza();
  
  public GoogleApiClient$Builder(Context paramContext)
  {
    mContext = paramContext;
    zzMc = paramContext.getMainLooper();
    zzMh = paramContext.getPackageName();
    zzMi = paramContext.getClass().getName();
    zzMo = zzup.zzGS;
  }
  
  public GoogleApiClient$Builder(Context paramContext, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this(paramContext);
    zzx.zzb(paramConnectionCallbacks, "Must provide a connected listener");
    zzMp.add(paramConnectionCallbacks);
    zzx.zzb(paramOnConnectionFailedListener, "Must provide a connection failed listener");
    zzMq.add(paramOnConnectionFailedListener);
  }
  
  private GoogleApiClient zzhZ()
  {
    zzh localzzh = zzh.zza(zzMl);
    GoogleApiClient localGoogleApiClient = localzzh.zzar(zzMm);
    Object localObject = localGoogleApiClient;
    if (localGoogleApiClient == null) {
      localObject = new zzd(mContext.getApplicationContext(), zzMc, zzhY(), zzMo, zzMj, zzMk, zzMp, zzMq, zzMm);
    }
    localzzh.zza(zzMm, (GoogleApiClient)localObject, zzMn);
    return (GoogleApiClient)localObject;
  }
  
  public final Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> paramApi)
  {
    zzMj.put(paramApi, null);
    paramApi = paramApi.zzhU();
    int j = paramApi.size();
    int i = 0;
    while (i < j)
    {
      zzMe.add(((Scope)paramApi.get(i)).zzio());
      i += 1;
    }
    return this;
  }
  
  public final <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> paramApi, O paramO)
  {
    zzx.zzb(paramO, "Null options are not permitted for this Api");
    zzMj.put(paramApi, paramO);
    paramApi = paramApi.zzhU();
    int j = paramApi.size();
    int i = 0;
    while (i < j)
    {
      zzMe.add(((Scope)paramApi.get(i)).zzio());
      i += 1;
    }
    return this;
  }
  
  public final Builder addConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzMp.add(paramConnectionCallbacks);
    return this;
  }
  
  public final Builder addOnConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzMq.add(paramOnConnectionFailedListener);
    return this;
  }
  
  public final Builder addScope(Scope paramScope)
  {
    zzMe.add(paramScope.zzio());
    return this;
  }
  
  public final GoogleApiClient build()
  {
    if (!zzMj.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "must call addApi() to add at least one API");
      if (zzMm < 0) {
        break;
      }
      return zzhZ();
    }
    return new zzd(mContext, zzMc, zzhY(), zzMo, zzMj, zzMk, zzMp, zzMq, -1);
  }
  
  public final Builder enableAutoManage(FragmentActivity paramFragmentActivity, int paramInt, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "clientId must be non-negative");
      zzMm = paramInt;
      zzMl = ((FragmentActivity)zzx.zzb(paramFragmentActivity, "Null activity is not permitted."));
      zzMn = paramOnConnectionFailedListener;
      return this;
    }
  }
  
  public final Builder requestServerAuthCode(String paramString, GoogleApiClient.ServerAuthCodeCallbacks paramServerAuthCodeCallbacks)
  {
    zzMr.zza(paramString, paramServerAuthCodeCallbacks);
    return this;
  }
  
  public final Builder setAccountName(String paramString)
  {
    if (paramString == null) {}
    for (paramString = null;; paramString = new Account(paramString, "com.google"))
    {
      zzFN = paramString;
      return this;
    }
  }
  
  public final Builder setGravityForPopups(int paramInt)
  {
    zzMf = paramInt;
    return this;
  }
  
  public final Builder setHandler(Handler paramHandler)
  {
    zzx.zzb(paramHandler, "Handler must not be null");
    zzMc = paramHandler.getLooper();
    return this;
  }
  
  public final Builder setViewForPopups(View paramView)
  {
    zzMg = paramView;
    return this;
  }
  
  public final Builder useDefaultAccount()
  {
    return setAccountName("<<default account>>");
  }
  
  public final zzf zzhY()
  {
    return new zzf(zzFN, zzMe, zzMf, zzMg, zzMh, zzMi, zzMr.zzsy());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiClient.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */