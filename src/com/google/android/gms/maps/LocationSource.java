package com.google.android.gms.maps;

import android.location.Location;

public abstract interface LocationSource
{
  public abstract void activate(OnLocationChangedListener paramOnLocationChangedListener);
  
  public abstract void deactivate();
  
  public static abstract interface OnLocationChangedListener
  {
    public abstract void onLocationChanged(Location paramLocation);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.LocationSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */