package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.PlacesOptions;
import com.google.android.gms.location.places.PlacesOptions.Builder;
import com.google.android.gms.location.places.zzi;
import java.util.Locale;

public class zzpx
  extends zzk<zzpt>
{
  private final zzqh zzaop;
  private final Locale zzaoq = Locale.getDefault();
  
  public zzpx(Context paramContext, Looper paramLooper, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString1, String paramString2, PlacesOptions paramPlacesOptions)
  {
    super(paramContext, paramLooper, 67, paramConnectionCallbacks, paramOnConnectionFailedListener, paramzzf);
    paramContext = null;
    if (paramzzf.getAccount() != null) {
      paramContext = getAccountname;
    }
    zzaop = new zzqh(paramString1, zzaoq, paramContext, zzaob, paramString2);
  }
  
  public void zza(zzi paramzzi, PlaceFilter paramPlaceFilter)
  {
    PlaceFilter localPlaceFilter = paramPlaceFilter;
    if (paramPlaceFilter == null) {
      localPlaceFilter = PlaceFilter.zzpJ();
    }
    ((zzpt)zzjb()).zza(localPlaceFilter, zzaop, paramzzi);
  }
  
  public void zza(zzi paramzzi, PlaceReport paramPlaceReport)
  {
    zzx.zzl(paramPlaceReport);
    ((zzpt)zzjb()).zza(paramPlaceReport, zzaop, paramzzi);
  }
  
  protected zzpt zzbq(IBinder paramIBinder)
  {
    return zzpt.zza.zzbn(paramIBinder);
  }
  
  protected String zzcF()
  {
    return "com.google.android.gms.location.places.PlaceDetectionApi";
  }
  
  protected String zzcG()
  {
    return "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService";
  }
  
  public static class zza
    implements Api.zzb<zzpx, PlacesOptions>
  {
    private final String zzaor;
    private final String zzaos;
    
    public zza(String paramString1, String paramString2)
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */