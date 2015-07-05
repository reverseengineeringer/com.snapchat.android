package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;

class ILocationSourceDelegate$zza$zza
  implements ILocationSourceDelegate
{
  private IBinder zzle;
  
  ILocationSourceDelegate$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  /* Error */
  public void activate(zzi paramzzi)
  {
    // Byte code:
    //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 29
    //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +42 -> 57
    //   18: aload_1
    //   19: invokeinterface 39 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 18	com/google/android/gms/maps/internal/ILocationSourceDelegate$zza$zza:zzle	Landroid/os/IBinder;
    //   34: iconst_1
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 48 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 51	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 54	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 54	android/os/Parcel:recycle	()V
    //   56: return
    //   57: aconst_null
    //   58: astore_1
    //   59: goto -34 -> 25
    //   62: astore_1
    //   63: aload_3
    //   64: invokevirtual 54	android/os/Parcel:recycle	()V
    //   67: aload_2
    //   68: invokevirtual 54	android/os/Parcel:recycle	()V
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	zza
    //   0	73	1	paramzzi	zzi
    //   3	65	2	localParcel1	Parcel
    //   7	57	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	62	finally
    //   18	25	62	finally
    //   25	48	62	finally
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public void deactivate()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ILocationSourceDelegate");
      zzle.transact(2, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.android.gms.maps.internal.ILocationSourceDelegate.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */