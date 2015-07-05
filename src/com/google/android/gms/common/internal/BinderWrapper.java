package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class BinderWrapper
  implements Parcelable
{
  public static final Parcelable.Creator<BinderWrapper> CREATOR = new Parcelable.Creator()
  {
    public final BinderWrapper zzD(Parcel paramAnonymousParcel)
    {
      return new BinderWrapper(paramAnonymousParcel, null);
    }
    
    public final BinderWrapper[] zzaG(int paramAnonymousInt)
    {
      return new BinderWrapper[paramAnonymousInt];
    }
  };
  private IBinder zzPp = null;
  
  public BinderWrapper() {}
  
  public BinderWrapper(IBinder paramIBinder)
  {
    zzPp = paramIBinder;
  }
  
  private BinderWrapper(Parcel paramParcel)
  {
    zzPp = paramParcel.readStrongBinder();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStrongBinder(zzPp);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.BinderWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */