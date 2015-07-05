package com.google.android.gms.maps.internal;

import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.maps.OnStreetViewPanoramaReadyCallback;

public abstract interface StreetViewLifecycleDelegate
  extends LifecycleDelegate
{
  public abstract void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.StreetViewLifecycleDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */