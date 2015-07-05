package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzd.zza;

public abstract interface zzv
  extends IInterface
{
  public abstract void onSnapshotReady(Bitmap paramBitmap);
  
  public abstract void zzh(zzd paramzzd);
  
  public static abstract class zza
    extends Binder
    implements zzv
  {
    public zza()
    {
      attachInterface(this, "com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    }
    
    public static zzv zzbR(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
      if ((localIInterface != null) && ((localIInterface instanceof zzv))) {
        return (zzv)localIInterface;
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
        paramParcel2.writeString("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          onSnapshotReady(paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      }
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
      zzh(zzd.zza.zzau(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    
    static class zza
      implements zzv
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
      
      /* Error */
      public void onSnapshotReady(Bitmap paramBitmap)
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
        //   15: ifnull +41 -> 56
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 45	android/graphics/Bitmap:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/google/android/gms/maps/internal/zzv$zza$zza:zzle	Landroid/os/IBinder;
        //   33: iconst_1
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 51 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 54	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 57	android/os/Parcel:recycle	()V
        //   51: aload_2
        //   52: invokevirtual 57	android/os/Parcel:recycle	()V
        //   55: return
        //   56: aload_2
        //   57: iconst_0
        //   58: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   61: goto -32 -> 29
        //   64: astore_1
        //   65: aload_3
        //   66: invokevirtual 57	android/os/Parcel:recycle	()V
        //   69: aload_2
        //   70: invokevirtual 57	android/os/Parcel:recycle	()V
        //   73: aload_1
        //   74: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	75	0	this	zza
        //   0	75	1	paramBitmap	Bitmap
        //   3	67	2	localParcel1	Parcel
        //   7	59	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	64	finally
        //   18	29	64	finally
        //   29	47	64	finally
        //   56	61	64	finally
      }
      
      /* Error */
      public void zzh(zzd paramzzd)
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
        //   15: ifnull +42 -> 57
        //   18: aload_1
        //   19: invokeinterface 63 1 0
        //   24: astore_1
        //   25: aload_2
        //   26: aload_1
        //   27: invokevirtual 66	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   30: aload_0
        //   31: getfield 18	com/google/android/gms/maps/internal/zzv$zza$zza:zzle	Landroid/os/IBinder;
        //   34: iconst_2
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 51 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 54	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 57	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 57	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aconst_null
        //   58: astore_1
        //   59: goto -34 -> 25
        //   62: astore_1
        //   63: aload_3
        //   64: invokevirtual 57	android/os/Parcel:recycle	()V
        //   67: aload_2
        //   68: invokevirtual 57	android/os/Parcel:recycle	()V
        //   71: aload_1
        //   72: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	73	0	this	zza
        //   0	73	1	paramzzd	zzd
        //   3	65	2	localParcel1	Parcel
        //   7	57	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	62	finally
        //   18	25	62	finally
        //   25	48	62	finally
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */