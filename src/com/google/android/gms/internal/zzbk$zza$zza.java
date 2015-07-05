package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class zzbk$zza$zza
  implements zzbk
{
  private IBinder zzle;
  
  zzbk$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public void onAppEvent(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAppEventListener");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
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
 * Qualified Name:     com.google.android.gms.internal.zzbk.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */