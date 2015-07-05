package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.zzd;

public abstract interface zzcp
  extends IInterface
{
  public abstract String getBody();
  
  public abstract void recordImpression();
  
  public abstract zzd zzcD();
  
  public abstract String zzcE();
  
  public abstract String zzcw();
  
  public abstract zzd zzcx();
  
  public abstract String zzcz();
  
  public abstract void zzl(int paramInt);
  
  public static abstract class zza
    extends Binder
    implements zzcp
  {
    public zza()
    {
      attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      zzd localzzd2 = null;
      zzd localzzd1 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        zzl(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        recordImpression();
        paramParcel2.writeNoException();
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        paramParcel1 = zzcw();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        localzzd2 = zzcx();
        paramParcel2.writeNoException();
        paramParcel1 = localzzd1;
        if (localzzd2 != null) {
          paramParcel1 = localzzd2.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        paramParcel1 = getBody();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        localzzd1 = zzcD();
        paramParcel2.writeNoException();
        paramParcel1 = localzzd2;
        if (localzzd1 != null) {
          paramParcel1 = localzzd1.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        paramParcel1 = zzcz();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
      paramParcel1 = zzcE();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */