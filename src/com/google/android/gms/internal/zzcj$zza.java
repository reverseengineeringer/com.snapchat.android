package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzcj$zza
  extends Binder
  implements zzcj
{
  public zzcj$zza()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
  }
  
  public static zzcj zzn(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    if ((localIInterface != null) && ((localIInterface instanceof zzcj))) {
      return (zzcj)localIInterface;
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    zza(zzci.zza.zzm(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
  
  static class zza
    implements zzcj
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
    public void zza(zzci paramzzci)
    {
      // Byte code:
      //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 30
      //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +42 -> 57
      //   18: aload_1
      //   19: invokeinterface 38 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 41	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/internal/zzcj$zza$zza:zzle	Landroid/os/IBinder;
      //   34: iconst_1
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 47 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 50	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 53	android/os/Parcel:recycle	()V
      //   52: aload_2
      //   53: invokevirtual 53	android/os/Parcel:recycle	()V
      //   56: return
      //   57: aconst_null
      //   58: astore_1
      //   59: goto -34 -> 25
      //   62: astore_1
      //   63: aload_3
      //   64: invokevirtual 53	android/os/Parcel:recycle	()V
      //   67: aload_2
      //   68: invokevirtual 53	android/os/Parcel:recycle	()V
      //   71: aload_1
      //   72: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	73	0	this	zza
      //   0	73	1	paramzzci	zzci
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcj.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */