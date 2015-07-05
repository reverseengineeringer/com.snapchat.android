package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.zza;

class zzuk$zza$zza
  implements zzuk
{
  private IBinder zzle;
  
  zzuk$zza$zza(IBinder paramIBinder)
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzuk.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */