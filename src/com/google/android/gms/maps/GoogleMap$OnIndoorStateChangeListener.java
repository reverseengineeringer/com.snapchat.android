package com.google.android.gms.maps;

import com.google.android.gms.maps.model.IndoorBuilding;

public abstract interface GoogleMap$OnIndoorStateChangeListener
{
  public abstract void onIndoorBuildingFocused();
  
  public abstract void onIndoorLevelActivated(IndoorBuilding paramIndoorBuilding);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.OnIndoorStateChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */