package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Api<O extends ApiOptions>
{
  private final zzb<?, O> zzLS;
  private final zzc<?> zzLT;
  private final ArrayList<Scope> zzLU;
  
  public <C extends zza> Api(zzb<C, O> paramzzb, zzc<C> paramzzc, Scope... paramVarArgs)
  {
    zzLS = paramzzb;
    zzLT = paramzzc;
    zzLU = new ArrayList(Arrays.asList(paramVarArgs));
  }
  
  public final zzb<?, O> zzhT()
  {
    return zzLS;
  }
  
  public final List<Scope> zzhU()
  {
    return zzLU;
  }
  
  public final zzc<?> zzhV()
  {
    return zzLT;
  }
  
  public static abstract interface ApiOptions
  {
    public static abstract interface HasOptions
      extends Api.ApiOptions
    {}
    
    public static final class NoOptions
      implements Api.ApiOptions.NotRequiredOptions
    {}
    
    public static abstract interface NotRequiredOptions
      extends Api.ApiOptions
    {}
    
    public static abstract interface Optional
      extends Api.ApiOptions.HasOptions, Api.ApiOptions.NotRequiredOptions
    {}
  }
  
  public static abstract interface zza
  {
    public abstract void connect();
    
    public abstract void disconnect();
    
    public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
    
    public abstract boolean isConnected();
    
    public abstract void zza(GoogleApiClient.zza paramzza);
    
    public abstract void zza(zzq paramzzq);
    
    public abstract void zzb(zzq paramzzq);
    
    public abstract boolean zzhc();
  }
  
  public static abstract interface zzb<T extends Api.zza, O>
  {
    public abstract int getPriority();
    
    public abstract T zza(Context paramContext, Looper paramLooper, zzf paramzzf, O paramO, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener);
  }
  
  public static final class zzc<C extends Api.zza> {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Api
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */