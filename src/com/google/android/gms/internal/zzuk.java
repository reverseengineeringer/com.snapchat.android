package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.safetynet.zza;

public abstract interface zzuk
  extends IInterface
{
  public abstract void zza(Status paramStatus, zza paramzza);
  
  public abstract void zzcG(String paramString);
  
  public static abstract class zza
    extends Binder
    implements zzuk
  {
    public zza()
    {
      attachInterface(this, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
    }
    
    public static zzuk zzcB(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
      if ((localIInterface != null) && ((localIInterface instanceof zzuk))) {
        return (zzuk)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
        if (paramParcel1.readInt() != 0)
        {
          paramParcel2 = Status.CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label108;
          }
        }
        label108:
        for (paramParcel1 = (zza)zza.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          zza(paramParcel2, paramParcel1);
          return true;
          paramParcel2 = null;
          break;
        }
      }
      paramParcel1.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
      zzcG(paramParcel1.readString());
      return true;
    }
    
    static class zza
      implements zzuk
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
      
      public void zza(Status paramStatus, zza paramzza)
      {
        Parcel localParcel = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
            if (paramStatus != null)
            {
              localParcel.writeInt(1);
              paramStatus.writeToParcel(localParcel, 0);
              if (paramzza != null)
              {
                localParcel.writeInt(1);
                paramzza.writeToParcel(localParcel, 0);
                zzle.transact(1, localParcel, null, 1);
              }
            }
            else
            {
              localParcel.writeInt(0);
              continue;
            }
            localParcel.writeInt(0);
          }
          finally
          {
            localParcel.recycle();
          }
        }
      }
      
      public void zzcG(String paramString)
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
          localParcel.writeString(paramString);
          zzle.transact(2, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzuk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */