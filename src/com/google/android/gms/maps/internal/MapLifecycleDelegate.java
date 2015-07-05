package com.google.android.gms.maps.internal;

import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.maps.OnMapReadyCallback;

public abstract interface MapLifecycleDelegate
  extends LifecycleDelegate
{
  public abstract void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.MapLifecycleDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */