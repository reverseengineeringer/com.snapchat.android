package com.flurry.sdk;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

class dz$a
  implements LocationListener
{
  public dz$a(dz paramdz) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    if (paramLocation != null) {
      dz.a(a, paramLocation);
    }
    el.a(4, dz.h(), "Location received");
    if (dz.a(a) >= 3)
    {
      el.a(4, dz.h(), "Max location reports reached, stopping");
      dz.b(a);
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */