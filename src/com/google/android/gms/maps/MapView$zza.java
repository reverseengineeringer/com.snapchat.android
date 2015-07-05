package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzm.zza;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class MapView$zza
  implements MapLifecycleDelegate
{
  private final ViewGroup zzaqd;
  private final IMapViewDelegate zzaqe;
  private View zzaqf;
  
  public MapView$zza(ViewGroup paramViewGroup, IMapViewDelegate paramIMapViewDelegate)
  {
    zzaqe = ((IMapViewDelegate)zzx.zzl(paramIMapViewDelegate));
    zzaqd = ((ViewGroup)zzx.zzl(paramViewGroup));
  }
  
  public void getMapAsync(final OnMapReadyCallback paramOnMapReadyCallback)
  {
    try
    {
      zzaqe.getMapAsync(new zzm.zza()
      {
        public void zza(IGoogleMapDelegate paramAnonymousIGoogleMapDelegate)
        {
          paramOnMapReadyCallback.onMapReady(new GoogleMap(paramAnonymousIGoogleMapDelegate));
        }
      });
      return;
    }
    catch (RemoteException paramOnMapReadyCallback)
    {
      throw new RuntimeRemoteException(paramOnMapReadyCallback);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      zzaqe.onCreate(paramBundle);
      zzaqf = ((View)zze.zzf(zzaqe.getView()));
      zzaqd.removeAllViews();
      zzaqd.addView(zzaqf);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
  }
  
  public void onDestroy()
  {
    try
    {
      zzaqe.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
  }
  
  public void onLowMemory()
  {
    try
    {
      zzaqe.onLowMemory();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onPause()
  {
    try
    {
      zzaqe.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onResume()
  {
    try
    {
      zzaqe.onResume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      zzaqe.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
  
  public IMapViewDelegate zzqt()
  {
    return zzaqe;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */