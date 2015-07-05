package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.zzr.zza;
import com.google.android.gms.maps.internal.zzs.zza;
import com.google.android.gms.maps.internal.zzt.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public class StreetViewPanorama
{
  private final IStreetViewPanoramaDelegate zzaqk;
  
  protected StreetViewPanorama(IStreetViewPanoramaDelegate paramIStreetViewPanoramaDelegate)
  {
    zzaqk = ((IStreetViewPanoramaDelegate)zzx.zzl(paramIStreetViewPanoramaDelegate));
  }
  
  public void animateTo(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong)
  {
    try
    {
      zzaqk.animateTo(paramStreetViewPanoramaCamera, paramLong);
      return;
    }
    catch (RemoteException paramStreetViewPanoramaCamera)
    {
      throw new RuntimeRemoteException(paramStreetViewPanoramaCamera);
    }
  }
  
  public StreetViewPanoramaLocation getLocation()
  {
    try
    {
      StreetViewPanoramaLocation localStreetViewPanoramaLocation = zzaqk.getStreetViewPanoramaLocation();
      return localStreetViewPanoramaLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public StreetViewPanoramaCamera getPanoramaCamera()
  {
    try
    {
      StreetViewPanoramaCamera localStreetViewPanoramaCamera = zzaqk.getPanoramaCamera();
      return localStreetViewPanoramaCamera;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isPanningGesturesEnabled()
  {
    try
    {
      boolean bool = zzaqk.isPanningGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isStreetNamesEnabled()
  {
    try
    {
      boolean bool = zzaqk.isStreetNamesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isUserNavigationEnabled()
  {
    try
    {
      boolean bool = zzaqk.isUserNavigationEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isZoomGesturesEnabled()
  {
    try
    {
      boolean bool = zzaqk.isZoomGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public Point orientationToPoint(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
  {
    try
    {
      paramStreetViewPanoramaOrientation = zzaqk.orientationToPoint(paramStreetViewPanoramaOrientation);
      if (paramStreetViewPanoramaOrientation == null) {
        return null;
      }
      paramStreetViewPanoramaOrientation = (Point)zze.zzf(paramStreetViewPanoramaOrientation);
      return paramStreetViewPanoramaOrientation;
    }
    catch (RemoteException paramStreetViewPanoramaOrientation)
    {
      throw new RuntimeRemoteException(paramStreetViewPanoramaOrientation);
    }
  }
  
  public StreetViewPanoramaOrientation pointToOrientation(Point paramPoint)
  {
    try
    {
      paramPoint = zzaqk.pointToOrientation(zze.zzn(paramPoint));
      return paramPoint;
    }
    catch (RemoteException paramPoint)
    {
      throw new RuntimeRemoteException(paramPoint);
    }
  }
  
  public final void setOnStreetViewPanoramaCameraChangeListener(final OnStreetViewPanoramaCameraChangeListener paramOnStreetViewPanoramaCameraChangeListener)
  {
    if (paramOnStreetViewPanoramaCameraChangeListener == null) {}
    try
    {
      zzaqk.setOnStreetViewPanoramaCameraChangeListener(null);
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaCameraChangeListener)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaCameraChangeListener);
    }
    zzaqk.setOnStreetViewPanoramaCameraChangeListener(new zzr.zza()
    {
      public void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera paramAnonymousStreetViewPanoramaCamera)
      {
        paramOnStreetViewPanoramaCameraChangeListener.onStreetViewPanoramaCameraChange(paramAnonymousStreetViewPanoramaCamera);
      }
    });
  }
  
  public final void setOnStreetViewPanoramaChangeListener(final OnStreetViewPanoramaChangeListener paramOnStreetViewPanoramaChangeListener)
  {
    if (paramOnStreetViewPanoramaChangeListener == null) {}
    try
    {
      zzaqk.setOnStreetViewPanoramaChangeListener(null);
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaChangeListener)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaChangeListener);
    }
    zzaqk.setOnStreetViewPanoramaChangeListener(new zzs.zza()
    {
      public void onStreetViewPanoramaChange(StreetViewPanoramaLocation paramAnonymousStreetViewPanoramaLocation)
      {
        paramOnStreetViewPanoramaChangeListener.onStreetViewPanoramaChange(paramAnonymousStreetViewPanoramaLocation);
      }
    });
  }
  
  public final void setOnStreetViewPanoramaClickListener(final OnStreetViewPanoramaClickListener paramOnStreetViewPanoramaClickListener)
  {
    if (paramOnStreetViewPanoramaClickListener == null) {}
    try
    {
      zzaqk.setOnStreetViewPanoramaClickListener(null);
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaClickListener)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaClickListener);
    }
    zzaqk.setOnStreetViewPanoramaClickListener(new zzt.zza()
    {
      public void onStreetViewPanoramaClick(StreetViewPanoramaOrientation paramAnonymousStreetViewPanoramaOrientation)
      {
        paramOnStreetViewPanoramaClickListener.onStreetViewPanoramaClick(paramAnonymousStreetViewPanoramaOrientation);
      }
    });
  }
  
  public void setPanningGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqk.enablePanning(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setPosition(LatLng paramLatLng)
  {
    try
    {
      zzaqk.setPosition(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public void setPosition(LatLng paramLatLng, int paramInt)
  {
    try
    {
      zzaqk.setPositionWithRadius(paramLatLng, paramInt);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public void setPosition(String paramString)
  {
    try
    {
      zzaqk.setPositionWithID(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public void setStreetNamesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqk.enableStreetNames(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setUserNavigationEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqk.enableUserNavigation(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setZoomGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqk.enableZoom(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  IStreetViewPanoramaDelegate zzqu()
  {
    return zzaqk;
  }
  
  public static abstract interface OnStreetViewPanoramaCameraChangeListener
  {
    public abstract void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera paramStreetViewPanoramaCamera);
  }
  
  public static abstract interface OnStreetViewPanoramaChangeListener
  {
    public abstract void onStreetViewPanoramaChange(StreetViewPanoramaLocation paramStreetViewPanoramaLocation);
  }
  
  public static abstract interface OnStreetViewPanoramaClickListener
  {
    public abstract void onStreetViewPanoramaClick(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanorama
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */