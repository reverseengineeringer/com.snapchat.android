package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.location.places.PlacesOptions;
import com.google.android.gms.location.places.PlacesOptions.Builder;

public class zzpx$zza
  implements Api.zzb<zzpx, PlacesOptions>
{
  private final String zzaor;
  private final String zzaos;
  
  public zzpx$zza(String paramString1, String paramString2)
  {
    zzaor = paramString1;
    zzaos = paramString2;
  }
  
  public int getPriority()
  {
    return Integer.MAX_VALUE;
  }
  
  public zzpx zzb(Context paramContext, Looper paramLooper, zzf paramzzf, PlacesOptions paramPlacesOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    String str1;
    String str2;
    if (zzaor != null)
    {
      str1 = zzaor;
      if (zzaos == null) {
        break label73;
      }
      str2 = zzaos;
      label26:
      if (paramPlacesOptions != null) {
        break label82;
      }
      paramPlacesOptions = new PlacesOptions.Builder().build();
    }
    label73:
    label82:
    for (;;)
    {
      return new zzpx(paramContext, paramLooper, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener, str1, str2, paramPlacesOptions);
      str1 = paramContext.getPackageName();
      break;
      str2 = paramContext.getPackageName();
      break label26;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpx.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */