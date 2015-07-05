package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.zzi;

class IProjectionDelegate$zza$zza
  implements IProjectionDelegate
{
  private IBinder zzle;
  
  IProjectionDelegate$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  /* Error */
  public LatLng fromScreenLocation(com.google.android.gms.dynamic.zzd paramzzd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore_3
    //   6: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   9: astore 4
    //   11: aload_3
    //   12: ldc 31
    //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +65 -> 83
    //   21: aload_1
    //   22: invokeinterface 39 1 0
    //   27: astore_1
    //   28: aload_3
    //   29: aload_1
    //   30: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   33: aload_0
    //   34: getfield 18	com/google/android/gms/maps/internal/IProjectionDelegate$zza$zza:zzle	Landroid/os/IBinder;
    //   37: iconst_1
    //   38: aload_3
    //   39: aload 4
    //   41: iconst_0
    //   42: invokeinterface 48 5 0
    //   47: pop
    //   48: aload 4
    //   50: invokevirtual 51	android/os/Parcel:readException	()V
    //   53: aload_2
    //   54: astore_1
    //   55: aload 4
    //   57: invokevirtual 55	android/os/Parcel:readInt	()I
    //   60: ifeq +12 -> 72
    //   63: getstatic 61	com/google/android/gms/maps/model/LatLng:CREATOR	Lcom/google/android/gms/maps/model/zzi;
    //   66: aload 4
    //   68: invokevirtual 67	com/google/android/gms/maps/model/zzi:zzdW	(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
    //   71: astore_1
    //   72: aload 4
    //   74: invokevirtual 70	android/os/Parcel:recycle	()V
    //   77: aload_3
    //   78: invokevirtual 70	android/os/Parcel:recycle	()V
    //   81: aload_1
    //   82: areturn
    //   83: aconst_null
    //   84: astore_1
    //   85: goto -57 -> 28
    //   88: astore_1
    //   89: aload 4
    //   91: invokevirtual 70	android/os/Parcel:recycle	()V
    //   94: aload_3
    //   95: invokevirtual 70	android/os/Parcel:recycle	()V
    //   98: aload_1
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	zza
    //   0	100	1	paramzzd	com.google.android.gms.dynamic.zzd
    //   1	53	2	localObject	Object
    //   5	90	3	localParcel1	Parcel
    //   9	81	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   11	17	88	finally
    //   21	28	88	finally
    //   28	53	88	finally
    //   55	72	88	finally
  }
  
  public LatLng fromScreenLocation2(zzy paramzzy)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
        if (paramzzy != null)
        {
          localParcel1.writeInt(1);
          paramzzy.writeToParcel(localParcel1, 0);
          zzle.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramzzy = LatLng.CREATOR.zzdW(localParcel2);
            return paramzzy;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramzzy = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  /* Error */
  public com.google.android.gms.maps.model.VisibleRegion getVisibleRegion()
  {
    // Byte code:
    //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 31
    //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 18	com/google/android/gms/maps/internal/IProjectionDelegate$zza$zza:zzle	Landroid/os/IBinder;
    //   18: iconst_3
    //   19: aload_2
    //   20: aload_3
    //   21: iconst_0
    //   22: invokeinterface 48 5 0
    //   27: pop
    //   28: aload_3
    //   29: invokevirtual 51	android/os/Parcel:readException	()V
    //   32: aload_3
    //   33: invokevirtual 55	android/os/Parcel:readInt	()I
    //   36: ifeq +21 -> 57
    //   39: getstatic 89	com/google/android/gms/maps/model/VisibleRegion:CREATOR	Lcom/google/android/gms/maps/model/zzy;
    //   42: aload_3
    //   43: invokevirtual 95	com/google/android/gms/maps/model/zzy:zzeg	(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/VisibleRegion;
    //   46: astore_1
    //   47: aload_3
    //   48: invokevirtual 70	android/os/Parcel:recycle	()V
    //   51: aload_2
    //   52: invokevirtual 70	android/os/Parcel:recycle	()V
    //   55: aload_1
    //   56: areturn
    //   57: aconst_null
    //   58: astore_1
    //   59: goto -12 -> 47
    //   62: astore_1
    //   63: aload_3
    //   64: invokevirtual 70	android/os/Parcel:recycle	()V
    //   67: aload_2
    //   68: invokevirtual 70	android/os/Parcel:recycle	()V
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	zza
    //   46	13	1	localVisibleRegion	com.google.android.gms.maps.model.VisibleRegion
    //   62	10	1	localObject	Object
    //   3	65	2	localParcel1	Parcel
    //   7	57	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	47	62	finally
  }
  
  /* Error */
  public com.google.android.gms.dynamic.zzd toScreenLocation(LatLng paramLatLng)
  {
    // Byte code:
    //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 31
    //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +50 -> 65
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 76	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 98	com/google/android/gms/maps/model/LatLng:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 18	com/google/android/gms/maps/internal/IProjectionDelegate$zza$zza:zzle	Landroid/os/IBinder;
    //   33: iconst_2
    //   34: aload_2
    //   35: aload_3
    //   36: iconst_0
    //   37: invokeinterface 48 5 0
    //   42: pop
    //   43: aload_3
    //   44: invokevirtual 51	android/os/Parcel:readException	()V
    //   47: aload_3
    //   48: invokevirtual 101	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   51: invokestatic 107	com/google/android/gms/dynamic/zzd$zza:zzau	(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;
    //   54: astore_1
    //   55: aload_3
    //   56: invokevirtual 70	android/os/Parcel:recycle	()V
    //   59: aload_2
    //   60: invokevirtual 70	android/os/Parcel:recycle	()V
    //   63: aload_1
    //   64: areturn
    //   65: aload_2
    //   66: iconst_0
    //   67: invokevirtual 76	android/os/Parcel:writeInt	(I)V
    //   70: goto -41 -> 29
    //   73: astore_1
    //   74: aload_3
    //   75: invokevirtual 70	android/os/Parcel:recycle	()V
    //   78: aload_2
    //   79: invokevirtual 70	android/os/Parcel:recycle	()V
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	zza
    //   0	84	1	paramLatLng	LatLng
    //   3	76	2	localParcel1	Parcel
    //   7	68	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	73	finally
    //   18	29	73	finally
    //   29	55	73	finally
    //   65	70	73	finally
  }
  
  public zzy toScreenLocation2(LatLng paramLatLng)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
        if (paramLatLng != null)
        {
          localParcel1.writeInt(1);
          paramLatLng.writeToParcel(localParcel1, 0);
          zzle.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramLatLng = zzy.CREATOR.zzdR(localParcel2);
            return paramLatLng;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramLatLng = null;
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
 * Qualified Name:     com.google.android.gms.maps.internal.IProjectionDelegate.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */