package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.internal.zzm.zza;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MapView
  extends FrameLayout
{
  private GoogleMap zzapW;
  private final zzb zzaqc;
  
  public MapView(Context paramContext)
  {
    super(paramContext);
    zzaqc = new zzb(this, paramContext, null);
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    zzaqc = new zzb(this, paramContext, GoogleMapOptions.createFromAttributes(paramContext, paramAttributeSet));
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    zzaqc = new zzb(this, paramContext, GoogleMapOptions.createFromAttributes(paramContext, paramAttributeSet));
  }
  
  public MapView(Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    super(paramContext);
    zzaqc = new zzb(this, paramContext, paramGoogleMapOptions);
  }
  
  @Deprecated
  public final GoogleMap getMap()
  {
    if (zzapW != null) {
      return zzapW;
    }
    zzaqc.zzqs();
    if (zzaqc.zzlg() == null) {
      return null;
    }
    try
    {
      zzapW = new GoogleMap(((zza)zzaqc.zzlg()).zzqt().getMap());
      return zzapW;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    com.google.android.gms.common.internal.zzx.zzbd("getMapAsync() must be called on the main thread");
    zzaqc.getMapAsync(paramOnMapReadyCallback);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    zzaqc.onCreate(paramBundle);
    if (zzaqc.zzlg() == null) {
      zza.zzb(this);
    }
  }
  
  public final void onDestroy()
  {
    zzaqc.onDestroy();
  }
  
  public final void onLowMemory()
  {
    zzaqc.onLowMemory();
  }
  
  public final void onPause()
  {
    zzaqc.onPause();
  }
  
  public final void onResume()
  {
    zzaqc.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    zzaqc.onSaveInstanceState(paramBundle);
  }
  
  static class zza
    implements MapLifecycleDelegate
  {
    private final ViewGroup zzaqd;
    private final IMapViewDelegate zzaqe;
    private View zzaqf;
    
    public zza(ViewGroup paramViewGroup, IMapViewDelegate paramIMapViewDelegate)
    {
      zzaqe = ((IMapViewDelegate)com.google.android.gms.common.internal.zzx.zzl(paramIMapViewDelegate));
      zzaqd = ((ViewGroup)com.google.android.gms.common.internal.zzx.zzl(paramViewGroup));
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
  
  static class zzb
    extends zza<MapView.zza>
  {
    private final Context mContext;
    protected zzf<MapView.zza> zzaqa;
    private final List<OnMapReadyCallback> zzaqb = new ArrayList();
    private final ViewGroup zzaqh;
    private final GoogleMapOptions zzaqi;
    
    zzb(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
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
        Object localObject = com.google.android.gms.maps.internal.zzx.zzac(mContext).zza(zze.zzn(mContext), zzaqi);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */