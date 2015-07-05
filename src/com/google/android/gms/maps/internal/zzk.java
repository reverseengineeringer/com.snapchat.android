package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface zzk
  extends IInterface
{
  public abstract void onMapLoaded();
  
  public static abstract class zza
    extends Binder
    implements zzk
  {
    public zza()
    {
      attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    }
    
    public static zzk zzbF(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
      if ((localIInterface != null) && ((localIInterface instanceof zzk))) {
        return (zzk)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
      onMapLoaded();
      paramParcel2.writeNoException();
      return true;
    }
    
    static class zza
      implements zzk
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
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */