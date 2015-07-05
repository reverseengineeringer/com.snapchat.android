package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.internal.zzl.zza;

public abstract class zzn$zza
  extends Binder
  implements zzn
{
  public zzn$zza()
  {
    attachInterface(this, "com.google.android.gms.maps.internal.IOnMarkerClickListener");
  }
  
  public static zzn zzbI(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
    if ((localIInterface != null) && ((localIInterface instanceof zzn))) {
      return (zzn)localIInterface;
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
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMarkerClickListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerClickListener");
    boolean bool = zza(zzl.zza.zzcb(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    if (bool) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      paramParcel2.writeInt(paramInt1);
      return true;
    }
  }
  
  static class zza
    implements zzn
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
    public boolean zza(com.google.android.gms.maps.model.internal.zzl paramzzl)
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_3
      //   2: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   5: astore 4
      //   7: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   10: astore 5
      //   12: aload 4
      //   14: ldc 30
      //   16: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   19: aload_1
      //   20: ifnull +59 -> 79
      //   23: aload_1
      //   24: invokeinterface 38 1 0
      //   29: astore_1
      //   30: aload 4
      //   32: aload_1
      //   33: invokevirtual 41	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   36: aload_0
      //   37: getfield 18	com/google/android/gms/maps/internal/zzn$zza$zza:zzle	Landroid/os/IBinder;
      //   40: iconst_1
      //   41: aload 4
      //   43: aload 5
      //   45: iconst_0
      //   46: invokeinterface 47 5 0
      //   51: pop
      //   52: aload 5
      //   54: invokevirtual 50	android/os/Parcel:readException	()V
      //   57: aload 5
      //   59: invokevirtual 54	android/os/Parcel:readInt	()I
      //   62: istore_2
      //   63: iload_2
      //   64: ifeq +20 -> 84
      //   67: aload 5
      //   69: invokevirtual 57	android/os/Parcel:recycle	()V
      //   72: aload 4
      //   74: invokevirtual 57	android/os/Parcel:recycle	()V
      //   77: iload_3
      //   78: ireturn
      //   79: aconst_null
      //   80: astore_1
      //   81: goto -51 -> 30
      //   84: iconst_0
      //   85: istore_3
      //   86: goto -19 -> 67
      //   89: astore_1
      //   90: aload 5
      //   92: invokevirtual 57	android/os/Parcel:recycle	()V
      //   95: aload 4
      //   97: invokevirtual 57	android/os/Parcel:recycle	()V
      //   100: aload_1
      //   101: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	102	0	this	zza
      //   0	102	1	paramzzl	com.google.android.gms.maps.model.internal.zzl
      //   62	2	2	i	int
      //   1	85	3	bool	boolean
      //   5	91	4	localParcel1	Parcel
      //   10	81	5	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   12	19	89	finally
      //   23	30	89	finally
      //   30	63	89	finally
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzn.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */