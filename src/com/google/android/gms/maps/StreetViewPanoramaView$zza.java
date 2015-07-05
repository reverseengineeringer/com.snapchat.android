package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzu.zza;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class StreetViewPanoramaView$zza
  implements StreetViewLifecycleDelegate
{
  private final IStreetViewPanoramaViewDelegate zzaqD;
  private View zzaqE;
  private final ViewGroup zzaqd;
  
  public StreetViewPanoramaView$zza(ViewGroup paramViewGroup, IStreetViewPanoramaViewDelegate paramIStreetViewPanoramaViewDelegate)
  {
    zzaqD = ((IStreetViewPanoramaViewDelegate)zzx.zzl(paramIStreetViewPanoramaViewDelegate));
    zzaqd = ((ViewGroup)zzx.zzl(paramViewGroup));
  }
  
  public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    try
    {
      zzaqD.getStreetViewPanoramaAsync(new zzu.zza()
      {
        public void zza(IStreetViewPanoramaDelegate paramAnonymousIStreetViewPanoramaDelegate)
        {
          paramOnStreetViewPanoramaReadyCallback.onStreetViewPanoramaReady(new StreetViewPanorama(paramAnonymousIStreetViewPanoramaDelegate));
        }
      });
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaReadyCallback)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaReadyCallback);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      zzaqD.onCreate(paramBundle);
      zzaqE = ((View)zze.zzf(zzaqD.getView()));
      zzaqd.removeAllViews();
      zzaqd.addView(zzaqE);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onDestroy()
  {
    try
    {
      zzaqD.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onLowMemory()
  {
    try
    {
      zzaqD.onLowMemory();
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
      zzaqD.onPause();
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
      zzaqD.onResume();
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
      zzaqD.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
  
  public IStreetViewPanoramaViewDelegate zzqz()
  {
    return zzaqD;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */