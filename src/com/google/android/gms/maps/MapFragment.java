package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.internal.zzm.zza;
import com.google.android.gms.maps.internal.zzw;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MapFragment
  extends Fragment
{
  private final zzb zzapV = new zzb(this);
  private GoogleMap zzapW;
  
  public static MapFragment newInstance()
  {
    return new MapFragment();
  }
  
  public static MapFragment newInstance(GoogleMapOptions paramGoogleMapOptions)
  {
    MapFragment localMapFragment = new MapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramGoogleMapOptions);
    localMapFragment.setArguments(localBundle);
    return localMapFragment;
  }
  
  @Deprecated
  public final GoogleMap getMap()
  {
    Object localObject = zzqr();
    if (localObject == null) {}
    for (;;)
    {
      return null;
      try
      {
        localObject = ((IMapFragmentDelegate)localObject).getMap();
        if (localObject == null) {
          continue;
        }
        if ((zzapW == null) || (zzapW.zzqg().asBinder() != ((IGoogleMapDelegate)localObject).asBinder())) {
          zzapW = new GoogleMap((IGoogleMapDelegate)localObject);
        }
        return zzapW;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    com.google.android.gms.common.internal.zzx.zzbd("getMapAsync must be called on the main thread.");
    zzapV.getMapAsync(paramOnMapReadyCallback);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MapFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    zzb.zza(zzapV, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    zzapV.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return zzapV.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    zzapV.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    zzapV.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    zzb.zza(zzapV, paramActivity);
    paramAttributeSet = GoogleMapOptions.createFromAttributes(paramActivity, paramAttributeSet);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAttributeSet);
    zzapV.onInflate(paramActivity, localBundle, paramBundle);
  }
  
  public void onLowMemory()
  {
    zzapV.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    zzapV.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    zzapV.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MapFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    zzapV.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
  
  protected IMapFragmentDelegate zzqr()
  {
    zzapV.zzqs();
    if (zzapV.zzlg() == null) {
      return null;
    }
    return ((zza)zzapV.zzlg()).zzqr();
  }
  
  static class zza
    implements MapLifecycleDelegate
  {
    private final Fragment zzXZ;
    private final IMapFragmentDelegate zzapX;
    
    public zza(Fragment paramFragment, IMapFragmentDelegate paramIMapFragmentDelegate)
    {
      zzapX = ((IMapFragmentDelegate)com.google.android.gms.common.internal.zzx.zzl(paramIMapFragmentDelegate));
      zzXZ = ((Fragment)com.google.android.gms.common.internal.zzx.zzl(paramFragment));
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
        paramBundle = zzXZ.getArguments();
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
  
  static class zzb
    extends zza<MapFragment.zza>
  {
    private final Fragment zzXZ;
    protected zzf<MapFragment.zza> zzaqa;
    private final List<OnMapReadyCallback> zzaqb = new ArrayList();
    private Activity zzoi;
    
    zzb(Fragment paramFragment)
    {
      zzXZ = paramFragment;
    }
    
    private void setActivity(Activity paramActivity)
    {
      zzoi = paramActivity;
      zzqs();
    }
    
    public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
    {
      if (zzlg() != null)
      {
        ((MapFragment.zza)zzlg()).getMapAsync(paramOnMapReadyCallback);
        return;
      }
      zzaqb.add(paramOnMapReadyCallback);
    }
    
    protected void zza(zzf<MapFragment.zza> paramzzf)
    {
      zzaqa = paramzzf;
      zzqs();
    }
    
    public void zzqs()
    {
      if ((zzoi != null) && (zzaqa != null) && (zzlg() == null)) {}
      try
      {
        MapsInitializer.initialize(zzoi);
        Object localObject = com.google.android.gms.maps.internal.zzx.zzac(zzoi).zzj(zze.zzn(zzoi));
        zzaqa.zza(new MapFragment.zza(zzXZ, (IMapFragmentDelegate)localObject));
        localObject = zzaqb.iterator();
        while (((Iterator)localObject).hasNext())
        {
          OnMapReadyCallback localOnMapReadyCallback = (OnMapReadyCallback)((Iterator)localObject).next();
          ((MapFragment.zza)zzlg()).getMapAsync(localOnMapReadyCallback);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */