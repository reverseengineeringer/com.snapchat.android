package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.zzi;
import com.google.android.gms.location.places.zzi.zzc;
import java.util.Arrays;
import java.util.List;

class zzpr$2
  extends zzi.zzc<zzps>
{
  zzpr$2(zzpr paramzzpr, Api.zzc paramzzc, GoogleApiClient paramGoogleApiClient, String[] paramArrayOfString)
  {
    super(paramzzc, paramGoogleApiClient);
  }
  
  protected void zza(zzps paramzzps)
  {
    List localList = Arrays.asList(zzaom);
    paramzzps.zza(new zzi(this, paramzzps.getContext()), localList);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpr.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */