package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zzaa;
import com.google.android.gms.maps.model.internal.zzo;
import com.google.android.gms.maps.model.internal.zzo.zza;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final zzw CREATOR = new zzw();
  private final int zzFG;
  private zzo zzarH;
  private TileProvider zzarI;
  private boolean zzarJ = true;
  private float zzarb;
  private boolean zzarc = true;
  
  public TileOverlayOptions()
  {
    zzFG = 1;
  }
  
  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    zzFG = paramInt;
    zzarH = zzo.zza.zzcf(paramIBinder);
    if (zzarH == null) {}
    for (paramIBinder = null;; paramIBinder = new TileProvider()
        {
          private final zzo zzarK = TileOverlayOptions.zza(TileOverlayOptions.this);
          
          public Tile getTile(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            try
            {
              Tile localTile = zzarK.getTile(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
              return localTile;
            }
            catch (RemoteException localRemoteException) {}
            return null;
          }
        })
    {
      zzarI = paramIBinder;
      zzarc = paramBoolean1;
      zzarb = paramFloat;
      zzarJ = paramBoolean2;
      return;
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final TileOverlayOptions fadeIn(boolean paramBoolean)
  {
    zzarJ = paramBoolean;
    return this;
  }
  
  public final boolean getFadeIn()
  {
    return zzarJ;
  }
  
  public final TileProvider getTileProvider()
  {
    return zzarI;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final float getZIndex()
  {
    return zzarb;
  }
  
  public final boolean isVisible()
  {
    return zzarc;
  }
  
  public final TileOverlayOptions tileProvider(final TileProvider paramTileProvider)
  {
    zzarI = paramTileProvider;
    if (zzarI == null) {}
    for (paramTileProvider = null;; paramTileProvider = new zzo.zza()
        {
          public Tile getTile(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            return paramTileProvider.getTile(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
          }
        })
    {
      zzarH = paramTileProvider;
      return this;
    }
  }
  
  public final TileOverlayOptions visible(boolean paramBoolean)
  {
    zzarc = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzx.zza(this, paramParcel, paramInt);
      return;
    }
    zzw.zza(this, paramParcel, paramInt);
  }
  
  public final TileOverlayOptions zIndex(float paramFloat)
  {
    zzarb = paramFloat;
    return this;
  }
  
  final IBinder zzqK()
  {
    return zzarH.asBinder();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */