package com.google.android.gms.maps;

import android.view.View;
import com.google.android.gms.maps.model.Marker;

public abstract interface GoogleMap$InfoWindowAdapter
{
  public abstract View getInfoContents(Marker paramMarker);
  
  public abstract View getInfoWindow(Marker paramMarker);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.InfoWindowAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */