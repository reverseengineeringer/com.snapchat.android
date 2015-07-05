package com.google.android.gms.maps.model;

public final class CameraPosition$Builder
{
  private LatLng zzaqR;
  private float zzaqS;
  private float zzaqT;
  private float zzaqU;
  
  public CameraPosition$Builder() {}
  
  public CameraPosition$Builder(CameraPosition paramCameraPosition)
  {
    zzaqR = target;
    zzaqS = zoom;
    zzaqT = tilt;
    zzaqU = bearing;
  }
  
  public final Builder bearing(float paramFloat)
  {
    zzaqU = paramFloat;
    return this;
  }
  
  public final CameraPosition build()
  {
    return new CameraPosition(zzaqR, zzaqS, zzaqT, zzaqU);
  }
  
  public final Builder target(LatLng paramLatLng)
  {
    zzaqR = paramLatLng;
    return this;
  }
  
  public final Builder tilt(float paramFloat)
  {
    zzaqT = paramFloat;
    return this;
  }
  
  public final Builder zoom(float paramFloat)
  {
    zzaqS = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */