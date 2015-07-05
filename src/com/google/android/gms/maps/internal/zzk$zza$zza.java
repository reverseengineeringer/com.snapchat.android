package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;

class zzk$zza$zza
  implements zzk
{
  private IBinder zzle;
  
  zzk$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public void onMapLoaded()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
      zzle.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzk.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */