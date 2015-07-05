package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface zzbm
  extends IInterface
{
  public abstract void zza(String paramString1, String paramString2);
  
  public static abstract class zza
    extends Binder
    implements zzbm
  {
    public zza()
    {
      attachInterface(this, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
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
        paramParcel2.writeString("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
      zza(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */