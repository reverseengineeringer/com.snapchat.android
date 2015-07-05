package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.zzd.zza;

public abstract class zzfq$zza
  extends Binder
  implements zzfq
{
  public static zzfq zzB(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManagerCreator");
    if ((localIInterface != null) && ((localIInterface instanceof zzfq))) {
      return (zzfq)localIInterface;
    }
    return new zza(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManagerCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManagerCreator");
    paramParcel1 = zzc(zzd.zza.zzau(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    paramParcel2.writeStrongBinder(paramParcel1);
    return true;
  }
  
  static class zza
    implements zzfq
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
    public IBinder zzc(com.google.android.gms.dynamic.zzd paramzzd)
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
      //   15: ifnull +48 -> 63
      //   18: aload_1
      //   19: invokeinterface 39 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 42	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/internal/zzfq$zza$zza:zzle	Landroid/os/IBinder;
      //   34: iconst_1
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 48 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 51	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 54	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: astore_1
      //   53: aload_3
      //   54: invokevirtual 57	android/os/Parcel:recycle	()V
      //   57: aload_2
      //   58: invokevirtual 57	android/os/Parcel:recycle	()V
      //   61: aload_1
      //   62: areturn
      //   63: aconst_null
      //   64: astore_1
      //   65: goto -40 -> 25
      //   68: astore_1
      //   69: aload_3
      //   70: invokevirtual 57	android/os/Parcel:recycle	()V
      //   73: aload_2
      //   74: invokevirtual 57	android/os/Parcel:recycle	()V
      //   77: aload_1
      //   78: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	79	0	this	zza
      //   0	79	1	paramzzd	com.google.android.gms.dynamic.zzd
      //   3	71	2	localParcel1	Parcel
      //   7	63	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	68	finally
      //   18	25	68	finally
      //   25	53	68	finally
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfq.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */