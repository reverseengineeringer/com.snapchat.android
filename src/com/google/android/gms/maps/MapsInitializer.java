package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class MapsInitializer
{
  public static int initialize(Context paramContext)
  {
    com.google.android.gms.common.internal.zzx.zzl(paramContext);
    try
    {
      paramContext = com.google.android.gms.maps.internal.zzx.zzac(paramContext);
      zza(paramContext);
      return 0;
    }
    catch (GooglePlayServicesNotAvailableException paramContext) {}
    return errorCode;
  }
  
  public static void zza(zzc paramzzc)
  {
    try
    {
      CameraUpdateFactory.zza(paramzzc.zzqA());
      BitmapDescriptorFactory.zza(paramzzc.zzqB());
      return;
    }
    catch (RemoteException paramzzc)
    {
      throw new RuntimeRemoteException(paramzzc);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapsInitializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */