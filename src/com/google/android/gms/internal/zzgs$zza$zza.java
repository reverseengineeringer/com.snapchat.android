package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class zzgs$zza$zza
  implements zzgs
{
  private IBinder zzle;
  
  zzgs$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public zzgq zzd(zzgo paramzzgo)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (paramzzgo != null)
        {
          localParcel1.writeInt(1);
          paramzzgo.writeToParcel(localParcel1, 0);
          zzle.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramzzgo = zzgq.CREATOR.zzi(localParcel2);
            return paramzzgo;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramzzgo = null;
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
 * Qualified Name:     com.google.android.gms.internal.zzgs.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */