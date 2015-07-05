package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class UiSettings
{
  private final IUiSettingsDelegate zzaqL;
  
  UiSettings(IUiSettingsDelegate paramIUiSettingsDelegate)
  {
    zzaqL = paramIUiSettingsDelegate;
  }
  
  public final boolean isCompassEnabled()
  {
    try
    {
      boolean bool = zzaqL.isCompassEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isIndoorLevelPickerEnabled()
  {
    try
    {
      boolean bool = zzaqL.isIndoorLevelPickerEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isMapToolbarEnabled()
  {
    try
    {
      boolean bool = zzaqL.isMapToolbarEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isMyLocationButtonEnabled()
  {
    try
    {
      boolean bool = zzaqL.isMyLocationButtonEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isRotateGesturesEnabled()
  {
    try
    {
      boolean bool = zzaqL.isRotateGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isScrollGesturesEnabled()
  {
    try
    {
      boolean bool = zzaqL.isScrollGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isTiltGesturesEnabled()
  {
    try
    {
      boolean bool = zzaqL.isTiltGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isZoomControlsEnabled()
  {
    try
    {
      boolean bool = zzaqL.isZoomControlsEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isZoomGesturesEnabled()
  {
    try
    {
      boolean bool = zzaqL.isZoomGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setAllGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setAllGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setCompassEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setCompassEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setIndoorLevelPickerEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setIndoorLevelPickerEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setMapToolbarEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setMapToolbarEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setMyLocationButtonEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setMyLocationButtonEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setRotateGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setRotateGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setScrollGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setScrollGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setTiltGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setTiltGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setZoomControlsEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setZoomControlsEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setZoomGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      zzaqL.setZoomGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.UiSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */