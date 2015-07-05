package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzd.zza;

public abstract interface zzg
  extends IInterface
{
  public abstract zzd zzb(Bitmap paramBitmap);
  
  public abstract zzd zzcs(String paramString);
  
  public abstract zzd zzct(String paramString);
  
  public abstract zzd zzcu(String paramString);
  
  public abstract zzd zze(float paramFloat);
  
  public abstract zzd zzgn(int paramInt);
  
  public abstract zzd zzqN();
  
  public static abstract class zza
    extends Binder
    implements zzg
  {
    public static zzg zzbW(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      if ((localIInterface != null) && ((localIInterface instanceof zzg))) {
        return (zzg)localIInterface;
      }
      return new zza(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      Object localObject1 = null;
      Object localObject2 = null;
      Object localObject3 = null;
      zzd localzzd1 = null;
      Object localObject4 = null;
      zzd localzzd2 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        paramParcel1 = zzgn(paramParcel1.readInt());
        paramParcel2.writeNoException();
        if (paramParcel1 != null) {}
        for (paramParcel1 = paramParcel1.asBinder();; paramParcel1 = null)
        {
          paramParcel2.writeStrongBinder(paramParcel1);
          return true;
        }
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        localzzd1 = zzcs(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel1 = localzzd2;
        if (localzzd1 != null) {
          paramParcel1 = localzzd1.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        localzzd1 = zzct(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localzzd1 != null) {
          paramParcel1 = localzzd1.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        localzzd1 = zzqN();
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject2;
        if (localzzd1 != null) {
          paramParcel1 = localzzd1.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        localzzd1 = zze(paramParcel1.readFloat());
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject3;
        if (localzzd1 != null) {
          paramParcel1 = localzzd1.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          localzzd2 = zzb(paramParcel1);
          paramParcel2.writeNoException();
          paramParcel1 = localzzd1;
          if (localzzd2 != null) {
            paramParcel1 = localzzd2.asBinder();
          }
          paramParcel2.writeStrongBinder(paramParcel1);
          return true;
        }
      }
      paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
      localzzd1 = zzcu(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject4;
      if (localzzd1 != null) {
        paramParcel1 = localzzd1.asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    }
    
    static class zza
      implements zzg
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
      public zzd zzb(Bitmap paramBitmap)
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
        //   15: ifnull +51 -> 66
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 45	android/graphics/Bitmap:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/google/android/gms/maps/model/internal/zzg$zza$zza:zzle	Landroid/os/IBinder;
        //   33: bipush 6
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 51 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 54	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 57	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
        //   52: invokestatic 63	com/google/android/gms/dynamic/zzd$zza:zzau	(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;
        //   55: astore_1
        //   56: aload_3
        //   57: invokevirtual 66	android/os/Parcel:recycle	()V
        //   60: aload_2
        //   61: invokevirtual 66	android/os/Parcel:recycle	()V
        //   64: aload_1
        //   65: areturn
        //   66: aload_2
        //   67: iconst_0
        //   68: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   71: goto -42 -> 29
        //   74: astore_1
        //   75: aload_3
        //   76: invokevirtual 66	android/os/Parcel:recycle	()V
        //   79: aload_2
        //   80: invokevirtual 66	android/os/Parcel:recycle	()V
        //   83: aload_1
        //   84: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	85	0	this	zza
        //   0	85	1	paramBitmap	Bitmap
        //   3	77	2	localParcel1	Parcel
        //   7	69	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	74	finally
        //   18	29	74	finally
        //   29	56	74	finally
        //   66	71	74	finally
      }
      
      public zzd zzcs(String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
          localParcel1.writeString(paramString);
          zzle.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString = zzd.zza.zzau(localParcel2.readStrongBinder());
          return paramString;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public zzd zzct(String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
          localParcel1.writeString(paramString);
          zzle.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString = zzd.zza.zzau(localParcel2.readStrongBinder());
          return paramString;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public zzd zzcu(String paramString)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
          localParcel1.writeString(paramString);
          zzle.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString = zzd.zza.zzau(localParcel2.readStrongBinder());
          return paramString;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public zzd zze(float paramFloat)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
          localParcel1.writeFloat(paramFloat);
          zzle.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          zzd localzzd = zzd.zza.zzau(localParcel2.readStrongBinder());
          return localzzd;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public zzd zzgn(int paramInt)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
          localParcel1.writeInt(paramInt);
          zzle.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          zzd localzzd = zzd.zza.zzau(localParcel2.readStrongBinder());
          return localzzd;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public zzd zzqN()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
          zzle.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          zzd localzzd = zzd.zza.zzau(localParcel2.readStrongBinder());
          return localzzd;
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
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */