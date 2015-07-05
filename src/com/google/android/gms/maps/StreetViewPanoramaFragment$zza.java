package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzu.zza;
import com.google.android.gms.maps.internal.zzw;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class StreetViewPanoramaFragment$zza
  implements StreetViewLifecycleDelegate
{
  private final Fragment zzXZ;
  private final IStreetViewPanoramaFragmentDelegate zzaqr;
  
  public StreetViewPanoramaFragment$zza(Fragment paramFragment, IStreetViewPanoramaFragmentDelegate paramIStreetViewPanoramaFragmentDelegate)
  {
    zzaqr = ((IStreetViewPanoramaFragmentDelegate)zzx.zzl(paramIStreetViewPanoramaFragmentDelegate));
    zzXZ = ((Fragment)zzx.zzl(paramFragment));
  }
  
  public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    try
    {
      zzaqr.getStreetViewPanoramaAsync(new zzu.zza()
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
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = zzXZ.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("StreetViewPanoramaOptions"))) {
        zzw.zza(localBundle, "StreetViewPanoramaOptions", paramBundle.getParcelable("StreetViewPanoramaOptions"));
      }
      zzaqr.onCreate(localBundle);
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
      paramLayoutInflater = zzaqr.onCreateView(zze.zzn(paramLayoutInflater), zze.zzn(paramViewGroup), paramBundle);
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
      zzaqr.onDestroy();
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
      zzaqr.onDestroyView();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    try
    {
      zzaqr.onInflate(zze.zzn(paramActivity), null, paramBundle2);
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
      zzaqr.onLowMemory();
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
      zzaqr.onPause();
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
      zzaqr.onResume();
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
      zzaqr.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
  
  public IStreetViewPanoramaFragmentDelegate zzqv()
  {
    return zzaqr;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaFragment.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */