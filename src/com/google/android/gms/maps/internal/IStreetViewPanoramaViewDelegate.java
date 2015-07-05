package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzd.zza;

public abstract interface IStreetViewPanoramaViewDelegate
  extends IInterface
{
  public abstract IStreetViewPanoramaDelegate getStreetViewPanorama();
  
  public abstract void getStreetViewPanoramaAsync(zzu paramzzu);
  
  public abstract zzd getView();
  
  public abstract void onCreate(Bundle paramBundle);
  
  public abstract void onDestroy();
  
  public abstract void onLowMemory();
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void onSaveInstanceState(Bundle paramBundle);
  
  public static abstract class zza
    extends Binder
    implements IStreetViewPanoramaViewDelegate
  {
    public static IStreetViewPanoramaViewDelegate zzbU(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
      if ((localIInterface != null) && ((localIInterface instanceof IStreetViewPanoramaViewDelegate))) {
        return (IStreetViewPanoramaViewDelegate)localIInterface;
      }
      return new zza(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      Object localObject2 = null;
      Object localObject3 = null;
      IStreetViewPanoramaDelegate localIStreetViewPanoramaDelegate = null;
      Object localObject1 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        localIStreetViewPanoramaDelegate = getStreetViewPanorama();
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localIStreetViewPanoramaDelegate != null) {
          paramParcel1 = localIStreetViewPanoramaDelegate.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        localObject1 = localObject2;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        }
        onCreate((Bundle)localObject1);
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onResume();
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onPause();
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onDestroy();
        paramParcel2.writeNoException();
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        onLowMemory();
        paramParcel2.writeNoException();
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        localObject1 = localObject3;
        if (paramParcel1.readInt() != 0) {
          localObject1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        }
        onSaveInstanceState((Bundle)localObject1);
        paramParcel2.writeNoException();
        if (localObject1 != null)
        {
          paramParcel2.writeInt(1);
          ((Bundle)localObject1).writeToParcel(paramParcel2, 1);
        }
        for (;;)
        {
          return true;
          paramParcel2.writeInt(0);
        }
      case 8: 
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        localObject1 = getView();
        paramParcel2.writeNoException();
        paramParcel1 = localIStreetViewPanoramaDelegate;
        if (localObject1 != null) {
          paramParcel1 = ((zzd)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
      getStreetViewPanoramaAsync(zzu.zza.zzbP(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    
    static class zza
      implements IStreetViewPanoramaViewDelegate
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
      
      public IStreetViewPanoramaDelegate getStreetViewPanorama()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          zzle.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          IStreetViewPanoramaDelegate localIStreetViewPanoramaDelegate = IStreetViewPanoramaDelegate.zza.zzbS(localParcel2.readStrongBinder());
          return localIStreetViewPanoramaDelegate;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public void getStreetViewPanoramaAsync(zzu paramzzu)
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
        //   15: ifnull +43 -> 58
        //   18: aload_1
        //   19: invokeinterface 62 1 0
        //   24: astore_1
        //   25: aload_2
        //   26: aload_1
        //   27: invokevirtual 65	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   30: aload_0
        //   31: getfield 18	com/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza$zza:zzle	Landroid/os/IBinder;
        //   34: bipush 9
        //   36: aload_2
        //   37: aload_3
        //   38: iconst_0
        //   39: invokeinterface 41 5 0
        //   44: pop
        //   45: aload_3
        //   46: invokevirtual 44	android/os/Parcel:readException	()V
        //   49: aload_3
        //   50: invokevirtual 56	android/os/Parcel:recycle	()V
        //   53: aload_2
        //   54: invokevirtual 56	android/os/Parcel:recycle	()V
        //   57: return
        //   58: aconst_null
        //   59: astore_1
        //   60: goto -35 -> 25
        //   63: astore_1
        //   64: aload_3
        //   65: invokevirtual 56	android/os/Parcel:recycle	()V
        //   68: aload_2
        //   69: invokevirtual 56	android/os/Parcel:recycle	()V
        //   72: aload_1
        //   73: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	74	0	this	zza
        //   0	74	1	paramzzu	zzu
        //   3	66	2	localParcel1	Parcel
        //   7	58	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	63	finally
        //   18	25	63	finally
        //   25	49	63	finally
      }
      
      public zzd getView()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          zzle.transact(8, localParcel1, localParcel2, 0);
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
      
      /* Error */
      public void onCreate(Bundle paramBundle)
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
        //   20: invokevirtual 79	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 85	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza$zza:zzle	Landroid/os/IBinder;
        //   33: iconst_2
        //   34: aload_2
        //   35: aload_3
        //   36: iconst_0
        //   37: invokeinterface 41 5 0
        //   42: pop
        //   43: aload_3
        //   44: invokevirtual 44	android/os/Parcel:readException	()V
        //   47: aload_3
        //   48: invokevirtual 56	android/os/Parcel:recycle	()V
        //   51: aload_2
        //   52: invokevirtual 56	android/os/Parcel:recycle	()V
        //   55: return
        //   56: aload_2
        //   57: iconst_0
        //   58: invokevirtual 79	android/os/Parcel:writeInt	(I)V
        //   61: goto -32 -> 29
        //   64: astore_1
        //   65: aload_3
        //   66: invokevirtual 56	android/os/Parcel:recycle	()V
        //   69: aload_2
        //   70: invokevirtual 56	android/os/Parcel:recycle	()V
        //   73: aload_1
        //   74: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	75	0	this	zza
        //   0	75	1	paramBundle	Bundle
        //   3	67	2	localParcel1	Parcel
        //   7	59	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	64	finally
        //   18	29	64	finally
        //   29	47	64	finally
        //   56	61	64	finally
      }
      
      public void onDestroy()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          zzle.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onLowMemory()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          zzle.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onPause()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          zzle.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void onResume()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
          zzle.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public void onSaveInstanceState(Bundle paramBundle)
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
        //   15: ifnull +54 -> 69
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 79	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 85	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza$zza:zzle	Landroid/os/IBinder;
        //   33: bipush 7
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 41 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 44	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 94	android/os/Parcel:readInt	()I
        //   52: ifeq +8 -> 60
        //   55: aload_1
        //   56: aload_3
        //   57: invokevirtual 98	android/os/Bundle:readFromParcel	(Landroid/os/Parcel;)V
        //   60: aload_3
        //   61: invokevirtual 56	android/os/Parcel:recycle	()V
        //   64: aload_2
        //   65: invokevirtual 56	android/os/Parcel:recycle	()V
        //   68: return
        //   69: aload_2
        //   70: iconst_0
        //   71: invokevirtual 79	android/os/Parcel:writeInt	(I)V
        //   74: goto -45 -> 29
        //   77: astore_1
        //   78: aload_3
        //   79: invokevirtual 56	android/os/Parcel:recycle	()V
        //   82: aload_2
        //   83: invokevirtual 56	android/os/Parcel:recycle	()V
        //   86: aload_1
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	zza
        //   0	88	1	paramBundle	Bundle
        //   3	80	2	localParcel1	Parcel
        //   7	72	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	77	finally
        //   18	29	77	finally
        //   29	60	77	finally
        //   69	74	77	finally
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */