package com.google.android.gms.dynamic;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface zzd
  extends IInterface
{
  public static abstract class zza
    extends Binder
    implements zzd
  {
    public zza()
    {
      attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
    }
    
    public static zzd zzau(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
      if ((localIInterface != null) && ((localIInterface instanceof zzd))) {
        return (zzd)localIInterface;
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
      }
      paramParcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
      return true;
    }
    
    static class zza
      implements zzd
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
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */