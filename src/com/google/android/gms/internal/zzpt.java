package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.PlaceReportCreator;
import com.google.android.gms.location.places.zzc;
import com.google.android.gms.location.places.zzd;
import com.google.android.gms.location.places.zze;
import com.google.android.gms.location.places.zzf;
import com.google.android.gms.location.places.zzg;

public abstract interface zzpt
  extends IInterface
{
  public abstract void zza(zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv);
  
  public abstract void zza(PlaceFilter paramPlaceFilter, zzqh paramzzqh, zzpv paramzzpv);
  
  public abstract void zza(PlaceReport paramPlaceReport, zzqh paramzzqh, zzpv paramzzpv);
  
  public abstract void zza(zzc paramzzc, zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv);
  
  public abstract void zza(zzf paramzzf, zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv);
  
  public abstract void zzb(zzqh paramzzqh, PendingIntent paramPendingIntent, zzpv paramzzpv);
  
  public static abstract class zza
    extends Binder
    implements zzpt
  {
    public static zzpt zzbn(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
      if ((localIInterface != null) && ((localIInterface instanceof zzpt))) {
        return (zzpt)localIInterface;
      }
      return new zza(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      PendingIntent localPendingIntent = null;
      Object localObject2 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = zzf.CREATOR.zzdC(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label178;
          }
          localObject2 = zzqh.CREATOR.zzdI(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label184;
          }
        }
        for (localPendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; localPendingIntent = null)
        {
          zza((zzf)localObject1, (zzqh)localObject2, localPendingIntent, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
          localObject1 = null;
          break;
          localObject2 = null;
          break label128;
        }
      case 3: 
        paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = zzqh.CREATOR.zzdI(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label260;
          }
        }
        for (localObject2 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; localObject2 = null)
        {
          zza((zzqh)localObject1, (PendingIntent)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
          localObject1 = null;
          break;
        }
      case 4: 
        paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = zzc.CREATOR.zzdA(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label354;
          }
          localObject2 = zzqh.CREATOR.zzdI(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label360;
          }
        }
        for (localPendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; localPendingIntent = null)
        {
          zza((zzc)localObject1, (zzqh)localObject2, localPendingIntent, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
          localObject1 = null;
          break;
          localObject2 = null;
          break label304;
        }
      case 5: 
        paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = zzqh.CREATOR.zzdI(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label436;
          }
        }
        for (localObject2 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; localObject2 = null)
        {
          zzb((zzqh)localObject1, (PendingIntent)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
          localObject1 = null;
          break;
        }
      case 6: 
        label128:
        label178:
        label184:
        label260:
        label304:
        label354:
        label360:
        label436:
        paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
        if (paramParcel1.readInt() != 0) {}
        for (localObject1 = PlaceFilter.CREATOR.zzdB(paramParcel1);; localObject1 = null)
        {
          if (paramParcel1.readInt() != 0) {
            localObject2 = zzqh.CREATOR.zzdI(paramParcel1);
          }
          zza((PlaceFilter)localObject1, (zzqh)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        }
      }
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
      if (paramParcel1.readInt() != 0) {}
      for (Object localObject1 = PlaceReport.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
      {
        localObject2 = localPendingIntent;
        if (paramParcel1.readInt() != 0) {
          localObject2 = zzqh.CREATOR.zzdI(paramParcel1);
        }
        zza((PlaceReport)localObject1, (zzqh)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      }
    }
    
    static class zza
      implements zzpt
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
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */