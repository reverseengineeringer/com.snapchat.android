package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.zzc;
import com.google.android.gms.location.places.zzf;

class zzpt$zza$zza
  implements zzpt
{
  private IBinder zzle;
  
  zzpt$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  public void zza(zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramzzqh != null)
        {
          localParcel1.writeInt(1);
          paramzzqh.writeToParcel(localParcel1, 0);
          if (paramPendingIntent != null)
          {
            localParcel1.writeInt(1);
            paramPendingIntent.writeToParcel(localParcel1, 0);
            if (paramzzpv == null) {
              break label131;
            }
            paramzzqh = paramzzpv.asBinder();
            localParcel1.writeStrongBinder(paramzzqh);
            zzle.transact(3, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label131:
      paramzzqh = null;
    }
  }
  
  public void zza(PlaceFilter paramPlaceFilter, zzqh paramzzqh, zzpv paramzzpv)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramPlaceFilter != null)
        {
          localParcel1.writeInt(1);
          paramPlaceFilter.writeToParcel(localParcel1, 0);
          if (paramzzqh != null)
          {
            localParcel1.writeInt(1);
            paramzzqh.writeToParcel(localParcel1, 0);
            if (paramzzpv == null) {
              break label132;
            }
            paramPlaceFilter = paramzzpv.asBinder();
            localParcel1.writeStrongBinder(paramPlaceFilter);
            zzle.transact(6, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label132:
      paramPlaceFilter = null;
    }
  }
  
  public void zza(PlaceReport paramPlaceReport, zzqh paramzzqh, zzpv paramzzpv)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramPlaceReport != null)
        {
          localParcel1.writeInt(1);
          paramPlaceReport.writeToParcel(localParcel1, 0);
          if (paramzzqh != null)
          {
            localParcel1.writeInt(1);
            paramzzqh.writeToParcel(localParcel1, 0);
            if (paramzzpv == null) {
              break label132;
            }
            paramPlaceReport = paramzzpv.asBinder();
            localParcel1.writeStrongBinder(paramPlaceReport);
            zzle.transact(7, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label132:
      paramPlaceReport = null;
    }
  }
  
  public void zza(zzc paramzzc, zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramzzc != null)
        {
          localParcel1.writeInt(1);
          paramzzc.writeToParcel(localParcel1, 0);
          if (paramzzqh != null)
          {
            localParcel1.writeInt(1);
            paramzzqh.writeToParcel(localParcel1, 0);
            if (paramPendingIntent == null) {
              break label150;
            }
            localParcel1.writeInt(1);
            paramPendingIntent.writeToParcel(localParcel1, 0);
            if (paramzzpv == null) {
              break label159;
            }
            paramzzc = paramzzpv.asBinder();
            localParcel1.writeStrongBinder(paramzzc);
            zzle.transact(4, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label150:
      localParcel1.writeInt(0);
      continue;
      label159:
      paramzzc = null;
    }
  }
  
  public void zza(zzf paramzzf, zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramzzf != null)
        {
          localParcel1.writeInt(1);
          paramzzf.writeToParcel(localParcel1, 0);
          if (paramzzqh != null)
          {
            localParcel1.writeInt(1);
            paramzzqh.writeToParcel(localParcel1, 0);
            if (paramPendingIntent == null) {
              break label150;
            }
            localParcel1.writeInt(1);
            paramPendingIntent.writeToParcel(localParcel1, 0);
            if (paramzzpv == null) {
              break label159;
            }
            paramzzf = paramzzpv.asBinder();
            localParcel1.writeStrongBinder(paramzzf);
            zzle.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label150:
      localParcel1.writeInt(0);
      continue;
      label159:
      paramzzf = null;
    }
  }
  
  public void zzb(zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramzzqh != null)
        {
          localParcel1.writeInt(1);
          paramzzqh.writeToParcel(localParcel1, 0);
          if (paramPendingIntent != null)
          {
            localParcel1.writeInt(1);
            paramPendingIntent.writeToParcel(localParcel1, 0);
            if (paramzzpv == null) {
              break label131;
            }
            paramzzqh = paramzzpv.asBinder();
            localParcel1.writeStrongBinder(paramzzqh);
            zzle.transact(5, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label131:
      paramzzqh = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpt.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */