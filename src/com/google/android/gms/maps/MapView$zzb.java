package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class MapView$zzb
  extends zza<MapView.zza>
{
  private final Context mContext;
  protected zzf<MapView.zza> zzaqa;
  private final List<OnMapReadyCallback> zzaqb = new ArrayList();
  private final ViewGroup zzaqh;
  private final GoogleMapOptions zzaqi;
  
  MapView$zzb(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    zzaqh = paramViewGroup;
    mContext = paramContext;
    zzaqi = paramGoogleMapOptions;
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    if (zzlg() != null)
    {
      ((MapView.zza)zzlg()).getMapAsync(paramOnMapReadyCallback);
      return;
    }
    zzaqb.add(paramOnMapReadyCallback);
  }
  
  protected void zza(zzf<MapView.zza> paramzzf)
  {
    zzaqa = paramzzf;
    zzqs();
  }
  
  public void zzqs()
  {
    if ((zzaqa != null) && (zzlg() == null)) {}
    try
    {
      Object localObject = zzx.zzac(mContext).zza(zze.zzn(mContext), zzaqi);
      zzaqa.zza(new MapView.zza(zzaqh, (IMapViewDelegate)localObject));
      localObject = zzaqb.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnMapReadyCallback localOnMapReadyCallback = (OnMapReadyCallback)((Iterator)localObject).next();
        ((MapView.zza)zzlg()).getMapAsync(localOnMapReadyCallback);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
      zzaqb.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */