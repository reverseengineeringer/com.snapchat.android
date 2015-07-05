package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzbk$zza
  extends Binder
  implements zzbk
{
  public zzbk$zza()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IAppEventListener");
  }
  
  public static zzbk zzi(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
    if ((localIInterface != null) && ((localIInterface instanceof zzbk))) {
      return (zzbk)localIInterface;
    }
    return new zza(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.ads.internal.client.IAppEventListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
    onAppEvent(paramParcel1.readString(), paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
  
  static class zza
    implements zzbk
  {
    private IBinder zzle;
    
    zza(IBinder paramIBinder)
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbk.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */