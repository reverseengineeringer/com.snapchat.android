package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zze<T extends SafeParcelable>
  extends AbstractDataBuffer<T>
{
  private static final String[] zzNS = { "data" };
  private final Parcelable.Creator<T> zzNT;
  
  public zze(DataHolder paramDataHolder, Parcelable.Creator<T> paramCreator)
  {
    super(paramDataHolder);
    zzNT = paramCreator;
  }
  
  public T zzaw(int paramInt)
  {
    Object localObject = zzMd.zzf("data", paramInt, zzMd.zzax(paramInt));
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall((byte[])localObject, 0, localObject.length);
    localParcel.setDataPosition(0);
    localObject = (SafeParcelable)zzNT.createFromParcel(localParcel);
    localParcel.recycle();
    return (T)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */