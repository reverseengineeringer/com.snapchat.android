package com.google.android.gms.maps.model;

public abstract interface TileProvider
{
  public static final Tile NO_TILE = new Tile(-1, -1, null);
  
  public abstract Tile getTile(int paramInt1, int paramInt2, int paramInt3);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */