package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.internal.zzg;

public final class BitmapDescriptorFactory
{
  public static final float HUE_AZURE = 210.0F;
  public static final float HUE_BLUE = 240.0F;
  public static final float HUE_CYAN = 180.0F;
  public static final float HUE_GREEN = 120.0F;
  public static final float HUE_MAGENTA = 300.0F;
  public static final float HUE_ORANGE = 30.0F;
  public static final float HUE_RED = 0.0F;
  public static final float HUE_ROSE = 330.0F;
  public static final float HUE_VIOLET = 270.0F;
  public static final float HUE_YELLOW = 60.0F;
  private static zzg zzaqQ;
  
  public static BitmapDescriptor defaultMarker()
  {
    try
    {
      BitmapDescriptor localBitmapDescriptor = new BitmapDescriptor(zzqG().zzqN());
      return localBitmapDescriptor;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public static BitmapDescriptor defaultMarker(float paramFloat)
  {
    try
    {
      BitmapDescriptor localBitmapDescriptor = new BitmapDescriptor(zzqG().zze(paramFloat));
      return localBitmapDescriptor;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public static BitmapDescriptor fromAsset(String paramString)
  {
    try
    {
      paramString = new BitmapDescriptor(zzqG().zzcs(paramString));
      return paramString;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public static BitmapDescriptor fromBitmap(Bitmap paramBitmap)
  {
    try
    {
      paramBitmap = new BitmapDescriptor(zzqG().zzb(paramBitmap));
      return paramBitmap;
    }
    catch (RemoteException paramBitmap)
    {
      throw new RuntimeRemoteException(paramBitmap);
    }
  }
  
  public static BitmapDescriptor fromFile(String paramString)
  {
    try
    {
      paramString = new BitmapDescriptor(zzqG().zzct(paramString));
      return paramString;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public static BitmapDescriptor fromPath(String paramString)
  {
    try
    {
      paramString = new BitmapDescriptor(zzqG().zzcu(paramString));
      return paramString;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public static BitmapDescriptor fromResource(int paramInt)
  {
    try
    {
      BitmapDescriptor localBitmapDescriptor = new BitmapDescriptor(zzqG().zzgn(paramInt));
      return localBitmapDescriptor;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public static void zza(zzg paramzzg)
  {
    if (zzaqQ != null) {
      return;
    }
    zzaqQ = (zzg)zzx.zzl(paramzzg);
  }
  
  private static zzg zzqG()
  {
    return (zzg)zzx.zzb(zzaqQ, "IBitmapDescriptorFactory is not initialized");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.BitmapDescriptorFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */