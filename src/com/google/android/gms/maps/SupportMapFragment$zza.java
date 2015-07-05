package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzm.zza;
import com.google.android.gms.maps.internal.zzw;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class SupportMapFragment$zza
  implements MapLifecycleDelegate
{
  private final Fragment zzPt;
  private final IMapFragmentDelegate zzapX;
  
  public SupportMapFragment$zza(Fragment paramFragment, IMapFragmentDelegate paramIMapFragmentDelegate)
  {
    zzapX = ((IMapFragmentDelegate)zzx.zzl(paramIMapFragmentDelegate));
    zzPt = ((Fragment)zzx.zzl(paramFragment));
  }
  
  public void getMapAsync(final OnMapReadyCallback paramOnMapReadyCallback)
  {
    try
    {
      zzapX.getMapAsync(new zzm.zza()
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
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = zzPt.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("MapOptions"))) {
        zzw.zza(localBundle, "MapOptions", paramBundle.getParcelable("MapOptions"));
      }
      zzapX.onCreate(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = zzapX.onCreateView(zze.zzn(paramLayoutInflater), zze.zzn(paramViewGroup), paramBundle);
      return (View)zze.zzf(paramLayoutInflater);
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new RuntimeRemoteException(paramLayoutInflater);
    }
  }
  
  public void onDestroy()
  {
    try
    {
      zzapX.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    try
    {
      zzapX.onDestroyView();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    paramBundle1 = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
    try
    {
      zzapX.onInflate(zze.zzn(paramActivity), paramBundle1, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeRemoteException(paramActivity);
    }
  }
  
  public void onLowMemory()
  {
    try
    {
      zzapX.onLowMemory();
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
      zzapX.onPause();
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
      zzapX.onResume();
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
      zzapX.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
  
  public IMapFragmentDelegate zzqr()
  {
    return zzapX;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */