package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Scope;
import java.util.List;

public abstract interface zzuy
  extends IInterface
{
  public abstract void zza(String paramString1, String paramString2, zzva paramzzva);
  
  public abstract void zza(String paramString, List<Scope> paramList, zzva paramzzva);
  
  public static abstract class zza
    extends Binder
    implements zzuy
  {
    public zza()
    {
      attachInterface(this, "com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
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
        paramParcel2.writeString("com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
        zza(paramParcel1.readString(), paramParcel1.createTypedArrayList(Scope.CREATOR), zzva.zza.zzcF(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gms.signin.internal.IOfflineAccessCallbacks");
      zza(paramParcel1.readString(), paramParcel1.readString(), zzva.zza.zzcF(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzuy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */