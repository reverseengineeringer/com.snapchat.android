package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.PlaceReportCreator;
import com.google.android.gms.location.places.zzb;
import com.google.android.gms.location.places.zzc;
import com.google.android.gms.location.places.zzd;
import com.google.android.gms.location.places.zze;
import com.google.android.gms.location.places.zzf;
import com.google.android.gms.location.places.zzj;
import com.google.android.gms.location.places.zzk;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.zzi;
import java.util.List;

public abstract class zzpu$zza
  extends Binder
  implements zzpu
{
  public static zzpu zzbo(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
    if ((localIInterface != null) && ((localIInterface instanceof zzpu))) {
      return (zzpu)localIInterface;
    }
    return new zza(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Object localObject6 = null;
    Object localObject3 = null;
    Object localObject1 = null;
    Object localObject7 = null;
    Object localObject8 = null;
    Object localObject9 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject2 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.location.places.internal.IGooglePlacesService");
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = LatLngBounds.CREATOR.zzdV(paramParcel1);
        paramInt1 = paramParcel1.readInt();
        localObject3 = paramParcel1.readString();
        if (paramParcel1.readInt() == 0) {
          break label284;
        }
      }
      for (localObject1 = PlaceFilter.CREATOR.zzdB(paramParcel1);; localObject1 = null)
      {
        if (paramParcel1.readInt() != 0) {
          localObject2 = zzqh.CREATOR.zzdI(paramParcel1);
        }
        zza(paramParcel2, paramInt1, (String)localObject3, (PlaceFilter)localObject1, (zzqh)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
        return true;
        paramParcel2 = null;
        break;
      }
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      localObject1 = paramParcel1.readString();
      paramParcel2 = (Parcel)localObject6;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = zzqh.CREATOR.zzdI(paramParcel1);
      }
      zza((String)localObject1, paramParcel2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = LatLng.CREATOR.zzdW(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label416;
        }
      }
      for (localObject1 = PlaceFilter.CREATOR.zzdB(paramParcel1);; localObject1 = null)
      {
        localObject2 = localObject3;
        if (paramParcel1.readInt() != 0) {
          localObject2 = zzqh.CREATOR.zzdI(paramParcel1);
        }
        zza(paramParcel2, (PlaceFilter)localObject1, (zzqh)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
        return true;
        paramParcel2 = null;
        break;
      }
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel2 = PlaceFilter.CREATOR.zzdB(paramParcel1);; paramParcel2 = null)
      {
        if (paramParcel1.readInt() != 0) {
          localObject1 = zzqh.CREATOR.zzdI(paramParcel1);
        }
        zzb(paramParcel2, (zzqh)localObject1, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
        return true;
      }
    case 6: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      localObject1 = paramParcel1.readString();
      paramParcel2 = (Parcel)localObject7;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = zzqh.CREATOR.zzdI(paramParcel1);
      }
      zzb((String)localObject1, paramParcel2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      localObject1 = paramParcel1.createStringArrayList();
      paramParcel2 = (Parcel)localObject8;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = zzqh.CREATOR.zzdI(paramParcel1);
      }
      zza((List)localObject1, paramParcel2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
      return true;
    case 17: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      localObject1 = paramParcel1.createStringArrayList();
      paramParcel2 = (Parcel)localObject9;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = zzqh.CREATOR.zzdI(paramParcel1);
      }
      zzb((List)localObject1, paramParcel2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = zzj.CREATOR.zzdD(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label702;
        }
        localObject1 = LatLngBounds.CREATOR.zzdV(paramParcel1);
        localObject3 = paramParcel1.createStringArrayList();
        if (paramParcel1.readInt() == 0) {
          break label708;
        }
      }
      for (localObject2 = zzqh.CREATOR.zzdI(paramParcel1);; localObject2 = null)
      {
        zza(paramParcel2, (LatLngBounds)localObject1, (List)localObject3, (zzqh)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
        return true;
        paramParcel2 = null;
        break;
        localObject1 = null;
        break label655;
      }
    case 9: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = zzf.CREATOR.zzdC(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label786;
        }
        localObject1 = zzqh.CREATOR.zzdI(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label792;
        }
      }
      for (paramParcel1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        zza(paramParcel2, (zzqh)localObject1, paramParcel1);
        return true;
        paramParcel2 = null;
        break;
        localObject1 = null;
        break label751;
      }
    case 10: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = zzqh.CREATOR.zzdI(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label851;
        }
      }
      for (paramParcel1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        zza(paramParcel2, paramParcel1);
        return true;
        paramParcel2 = null;
        break;
      }
    case 11: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = zzc.CREATOR.zzdA(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label928;
        }
        localObject1 = zzqh.CREATOR.zzdI(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label934;
        }
      }
      for (paramParcel1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        zza(paramParcel2, (zzqh)localObject1, paramParcel1);
        return true;
        paramParcel2 = null;
        break;
        localObject1 = null;
        break label893;
      }
    case 12: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = zzqh.CREATOR.zzdI(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label993;
        }
      }
      for (paramParcel1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        zzb(paramParcel2, paramParcel1);
        return true;
        paramParcel2 = null;
        break;
      }
    case 13: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      localObject3 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = LatLngBounds.CREATOR.zzdV(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label1082;
        }
        localObject1 = AutocompleteFilter.CREATOR.zzdz(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label1088;
        }
      }
      for (localObject2 = zzqh.CREATOR.zzdI(paramParcel1);; localObject2 = null)
      {
        zza((String)localObject3, paramParcel2, (AutocompleteFilter)localObject1, (zzqh)localObject2, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
        return true;
        paramParcel2 = null;
        break;
        localObject1 = null;
        break label1041;
      }
    case 14: 
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel2 = (AddPlaceRequest)AddPlaceRequest.CREATOR.createFromParcel(paramParcel1);; paramParcel2 = null)
      {
        localObject1 = localObject4;
        if (paramParcel1.readInt() != 0) {
          localObject1 = zzqh.CREATOR.zzdI(paramParcel1);
        }
        zza(paramParcel2, (zzqh)localObject1, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
        return true;
      }
    case 15: 
      label284:
      label416:
      label655:
      label702:
      label708:
      label751:
      label786:
      label792:
      label851:
      label893:
      label928:
      label934:
      label993:
      label1041:
      label1082:
      label1088:
      paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel2 = PlaceReport.CREATOR.createFromParcel(paramParcel1);; paramParcel2 = null)
      {
        localObject1 = localObject5;
        if (paramParcel1.readInt() != 0) {
          localObject1 = zzqh.CREATOR.zzdI(paramParcel1);
        }
        zza(paramParcel2, (zzqh)localObject1);
        return true;
      }
    }
    paramParcel1.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
    if (paramParcel1.readInt() != 0)
    {
      paramParcel2 = zzqo.CREATOR.zzdM(paramParcel1);
      localObject2 = paramParcel1.readString();
      localObject3 = paramParcel1.readString();
      if (paramParcel1.readInt() == 0) {
        break label1290;
      }
    }
    label1290:
    for (localObject1 = zzqh.CREATOR.zzdI(paramParcel1);; localObject1 = null)
    {
      zza(paramParcel2, (String)localObject2, (String)localObject3, (zzqh)localObject1, zzpv.zza.zzbp(paramParcel1.readStrongBinder()));
      return true;
      paramParcel2 = null;
      break;
    }
  }
  
  static class zza
    implements zzpu
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
    
    public void zza(zzqh paramzzqh, PendingIntent paramPendingIntent)
    {
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramzzqh != null)
          {
            localParcel.writeInt(1);
            paramzzqh.writeToParcel(localParcel, 0);
            if (paramPendingIntent != null)
            {
              localParcel.writeInt(1);
              paramPendingIntent.writeToParcel(localParcel, 0);
              zzle.transact(10, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
    
    public void zza(zzqo paramzzqo, String paramString1, String paramString2, zzqh paramzzqh, zzpv paramzzpv)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramzzqo != null)
          {
            localParcel.writeInt(1);
            paramzzqo.writeToParcel(localParcel, 0);
            localParcel.writeString(paramString1);
            localParcel.writeString(paramString2);
            if (paramzzqh != null)
            {
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              paramzzqo = (zzqo)localObject;
              if (paramzzpv != null) {
                paramzzqo = paramzzpv.asBinder();
              }
              localParcel.writeStrongBinder(paramzzqo);
              zzle.transact(16, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
    
    public void zza(AddPlaceRequest paramAddPlaceRequest, zzqh paramzzqh, zzpv paramzzpv)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramAddPlaceRequest != null)
          {
            localParcel.writeInt(1);
            paramAddPlaceRequest.writeToParcel(localParcel, 0);
            if (paramzzqh != null)
            {
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              paramAddPlaceRequest = (AddPlaceRequest)localObject;
              if (paramzzpv != null) {
                paramAddPlaceRequest = paramzzpv.asBinder();
              }
              localParcel.writeStrongBinder(paramAddPlaceRequest);
              zzle.transact(14, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
    
    public void zza(PlaceReport paramPlaceReport, zzqh paramzzqh)
    {
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramPlaceReport != null)
          {
            localParcel.writeInt(1);
            paramPlaceReport.writeToParcel(localParcel, 0);
            if (paramzzqh != null)
            {
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              zzle.transact(15, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
    
    public void zza(zzc paramzzc, zzqh paramzzqh, PendingIntent paramPendingIntent)
    {
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramzzc != null)
          {
            localParcel.writeInt(1);
            paramzzc.writeToParcel(localParcel, 0);
            if (paramzzqh != null)
            {
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              if (paramPendingIntent == null) {
                break label111;
              }
              localParcel.writeInt(1);
              paramPendingIntent.writeToParcel(localParcel, 0);
              zzle.transact(11, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
        continue;
        label111:
        localParcel.writeInt(0);
      }
    }
    
    public void zza(zzf paramzzf, zzqh paramzzqh, PendingIntent paramPendingIntent)
    {
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramzzf != null)
          {
            localParcel.writeInt(1);
            paramzzf.writeToParcel(localParcel, 0);
            if (paramzzqh != null)
            {
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              if (paramPendingIntent == null) {
                break label111;
              }
              localParcel.writeInt(1);
              paramPendingIntent.writeToParcel(localParcel, 0);
              zzle.transact(9, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
        continue;
        label111:
        localParcel.writeInt(0);
      }
    }
    
    public void zza(zzj paramzzj, LatLngBounds paramLatLngBounds, List<String> paramList, zzqh paramzzqh, zzpv paramzzpv)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramzzj != null)
          {
            localParcel.writeInt(1);
            paramzzj.writeToParcel(localParcel, 0);
            if (paramLatLngBounds != null)
            {
              localParcel.writeInt(1);
              paramLatLngBounds.writeToParcel(localParcel, 0);
              localParcel.writeStringList(paramList);
              if (paramzzqh == null) {
                break label144;
              }
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              paramzzj = (zzj)localObject;
              if (paramzzpv != null) {
                paramzzj = paramzzpv.asBinder();
              }
              localParcel.writeStrongBinder(paramzzj);
              zzle.transact(8, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
        continue;
        label144:
        localParcel.writeInt(0);
      }
    }
    
    public void zza(LatLng paramLatLng, PlaceFilter paramPlaceFilter, zzqh paramzzqh, zzpv paramzzpv)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramLatLng != null)
          {
            localParcel.writeInt(1);
            paramLatLng.writeToParcel(localParcel, 0);
            if (paramPlaceFilter != null)
            {
              localParcel.writeInt(1);
              paramPlaceFilter.writeToParcel(localParcel, 0);
              if (paramzzqh == null) {
                break label135;
              }
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              paramLatLng = (LatLng)localObject;
              if (paramzzpv != null) {
                paramLatLng = paramzzpv.asBinder();
              }
              localParcel.writeStrongBinder(paramLatLng);
              zzle.transact(4, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
        continue;
        label135:
        localParcel.writeInt(0);
      }
    }
    
    public void zza(LatLngBounds paramLatLngBounds, int paramInt, String paramString, PlaceFilter paramPlaceFilter, zzqh paramzzqh, zzpv paramzzpv)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramLatLngBounds != null)
          {
            localParcel.writeInt(1);
            paramLatLngBounds.writeToParcel(localParcel, 0);
            localParcel.writeInt(paramInt);
            localParcel.writeString(paramString);
            if (paramPlaceFilter != null)
            {
              localParcel.writeInt(1);
              paramPlaceFilter.writeToParcel(localParcel, 0);
              if (paramzzqh == null) {
                break label151;
              }
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              paramLatLngBounds = (LatLngBounds)localObject;
              if (paramzzpv != null) {
                paramLatLngBounds = paramzzpv.asBinder();
              }
              localParcel.writeStrongBinder(paramLatLngBounds);
              zzle.transact(2, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
        continue;
        label151:
        localParcel.writeInt(0);
      }
    }
    
    /* Error */
    public void zza(String paramString, zzqh paramzzqh, zzpv paramzzpv)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   6: astore 5
      //   8: aload 5
      //   10: ldc 30
      //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   15: aload 5
      //   17: aload_1
      //   18: invokevirtual 63	android/os/Parcel:writeString	(Ljava/lang/String;)V
      //   21: aload_2
      //   22: ifnull +57 -> 79
      //   25: aload 5
      //   27: iconst_1
      //   28: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   31: aload_2
      //   32: aload 5
      //   34: iconst_0
      //   35: invokevirtual 44	com/google/android/gms/internal/zzqh:writeToParcel	(Landroid/os/Parcel;I)V
      //   38: aload 4
      //   40: astore_1
      //   41: aload_3
      //   42: ifnull +10 -> 52
      //   45: aload_3
      //   46: invokeinterface 67 1 0
      //   51: astore_1
      //   52: aload 5
      //   54: aload_1
      //   55: invokevirtual 70	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   58: aload_0
      //   59: getfield 18	com/google/android/gms/internal/zzpu$zza$zza:zzle	Landroid/os/IBinder;
      //   62: iconst_3
      //   63: aload 5
      //   65: aconst_null
      //   66: iconst_1
      //   67: invokeinterface 53 5 0
      //   72: pop
      //   73: aload 5
      //   75: invokevirtual 56	android/os/Parcel:recycle	()V
      //   78: return
      //   79: aload 5
      //   81: iconst_0
      //   82: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   85: goto -47 -> 38
      //   88: astore_1
      //   89: aload 5
      //   91: invokevirtual 56	android/os/Parcel:recycle	()V
      //   94: aload_1
      //   95: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	96	0	this	zza
      //   0	96	1	paramString	String
      //   0	96	2	paramzzqh	zzqh
      //   0	96	3	paramzzpv	zzpv
      //   1	38	4	localObject	Object
      //   6	84	5	localParcel	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	21	88	finally
      //   25	38	88	finally
      //   45	52	88	finally
      //   52	73	88	finally
      //   79	85	88	finally
    }
    
    public void zza(String paramString, LatLngBounds paramLatLngBounds, AutocompleteFilter paramAutocompleteFilter, zzqh paramzzqh, zzpv paramzzpv)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          localParcel.writeString(paramString);
          if (paramLatLngBounds != null)
          {
            localParcel.writeInt(1);
            paramLatLngBounds.writeToParcel(localParcel, 0);
            if (paramAutocompleteFilter != null)
            {
              localParcel.writeInt(1);
              paramAutocompleteFilter.writeToParcel(localParcel, 0);
              if (paramzzqh == null) {
                break label144;
              }
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              paramString = (String)localObject;
              if (paramzzpv != null) {
                paramString = paramzzpv.asBinder();
              }
              localParcel.writeStrongBinder(paramString);
              zzle.transact(13, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
        continue;
        label144:
        localParcel.writeInt(0);
      }
    }
    
    /* Error */
    public void zza(List<String> paramList, zzqh paramzzqh, zzpv paramzzpv)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   6: astore 5
      //   8: aload 5
      //   10: ldc 30
      //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   15: aload 5
      //   17: aload_1
      //   18: invokevirtual 97	android/os/Parcel:writeStringList	(Ljava/util/List;)V
      //   21: aload_2
      //   22: ifnull +58 -> 80
      //   25: aload 5
      //   27: iconst_1
      //   28: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   31: aload_2
      //   32: aload 5
      //   34: iconst_0
      //   35: invokevirtual 44	com/google/android/gms/internal/zzqh:writeToParcel	(Landroid/os/Parcel;I)V
      //   38: aload 4
      //   40: astore_1
      //   41: aload_3
      //   42: ifnull +10 -> 52
      //   45: aload_3
      //   46: invokeinterface 67 1 0
      //   51: astore_1
      //   52: aload 5
      //   54: aload_1
      //   55: invokevirtual 70	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   58: aload_0
      //   59: getfield 18	com/google/android/gms/internal/zzpu$zza$zza:zzle	Landroid/os/IBinder;
      //   62: bipush 7
      //   64: aload 5
      //   66: aconst_null
      //   67: iconst_1
      //   68: invokeinterface 53 5 0
      //   73: pop
      //   74: aload 5
      //   76: invokevirtual 56	android/os/Parcel:recycle	()V
      //   79: return
      //   80: aload 5
      //   82: iconst_0
      //   83: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   86: goto -48 -> 38
      //   89: astore_1
      //   90: aload 5
      //   92: invokevirtual 56	android/os/Parcel:recycle	()V
      //   95: aload_1
      //   96: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	97	0	this	zza
      //   0	97	1	paramList	List<String>
      //   0	97	2	paramzzqh	zzqh
      //   0	97	3	paramzzpv	zzpv
      //   1	38	4	localObject	Object
      //   6	85	5	localParcel	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	21	89	finally
      //   25	38	89	finally
      //   45	52	89	finally
      //   52	74	89	finally
      //   80	86	89	finally
    }
    
    public void zzb(zzqh paramzzqh, PendingIntent paramPendingIntent)
    {
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramzzqh != null)
          {
            localParcel.writeInt(1);
            paramzzqh.writeToParcel(localParcel, 0);
            if (paramPendingIntent != null)
            {
              localParcel.writeInt(1);
              paramPendingIntent.writeToParcel(localParcel, 0);
              zzle.transact(12, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
    
    public void zzb(PlaceFilter paramPlaceFilter, zzqh paramzzqh, zzpv paramzzpv)
    {
      Object localObject = null;
      Parcel localParcel = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
          if (paramPlaceFilter != null)
          {
            localParcel.writeInt(1);
            paramPlaceFilter.writeToParcel(localParcel, 0);
            if (paramzzqh != null)
            {
              localParcel.writeInt(1);
              paramzzqh.writeToParcel(localParcel, 0);
              paramPlaceFilter = (PlaceFilter)localObject;
              if (paramzzpv != null) {
                paramPlaceFilter = paramzzpv.asBinder();
              }
              localParcel.writeStrongBinder(paramPlaceFilter);
              zzle.transact(5, localParcel, null, 1);
            }
          }
          else
          {
            localParcel.writeInt(0);
            continue;
          }
          localParcel.writeInt(0);
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
    
    /* Error */
    public void zzb(String paramString, zzqh paramzzqh, zzpv paramzzpv)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   6: astore 5
      //   8: aload 5
      //   10: ldc 30
      //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   15: aload 5
      //   17: aload_1
      //   18: invokevirtual 63	android/os/Parcel:writeString	(Ljava/lang/String;)V
      //   21: aload_2
      //   22: ifnull +58 -> 80
      //   25: aload 5
      //   27: iconst_1
      //   28: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   31: aload_2
      //   32: aload 5
      //   34: iconst_0
      //   35: invokevirtual 44	com/google/android/gms/internal/zzqh:writeToParcel	(Landroid/os/Parcel;I)V
      //   38: aload 4
      //   40: astore_1
      //   41: aload_3
      //   42: ifnull +10 -> 52
      //   45: aload_3
      //   46: invokeinterface 67 1 0
      //   51: astore_1
      //   52: aload 5
      //   54: aload_1
      //   55: invokevirtual 70	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   58: aload_0
      //   59: getfield 18	com/google/android/gms/internal/zzpu$zza$zza:zzle	Landroid/os/IBinder;
      //   62: bipush 6
      //   64: aload 5
      //   66: aconst_null
      //   67: iconst_1
      //   68: invokeinterface 53 5 0
      //   73: pop
      //   74: aload 5
      //   76: invokevirtual 56	android/os/Parcel:recycle	()V
      //   79: return
      //   80: aload 5
      //   82: iconst_0
      //   83: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   86: goto -48 -> 38
      //   89: astore_1
      //   90: aload 5
      //   92: invokevirtual 56	android/os/Parcel:recycle	()V
      //   95: aload_1
      //   96: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	97	0	this	zza
      //   0	97	1	paramString	String
      //   0	97	2	paramzzqh	zzqh
      //   0	97	3	paramzzpv	zzpv
      //   1	38	4	localObject	Object
      //   6	85	5	localParcel	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	21	89	finally
      //   25	38	89	finally
      //   45	52	89	finally
      //   52	74	89	finally
      //   80	86	89	finally
    }
    
    /* Error */
    public void zzb(List<String> paramList, zzqh paramzzqh, zzpv paramzzpv)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   6: astore 5
      //   8: aload 5
      //   10: ldc 30
      //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   15: aload 5
      //   17: aload_1
      //   18: invokevirtual 97	android/os/Parcel:writeStringList	(Ljava/util/List;)V
      //   21: aload_2
      //   22: ifnull +58 -> 80
      //   25: aload 5
      //   27: iconst_1
      //   28: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   31: aload_2
      //   32: aload 5
      //   34: iconst_0
      //   35: invokevirtual 44	com/google/android/gms/internal/zzqh:writeToParcel	(Landroid/os/Parcel;I)V
      //   38: aload 4
      //   40: astore_1
      //   41: aload_3
      //   42: ifnull +10 -> 52
      //   45: aload_3
      //   46: invokeinterface 67 1 0
      //   51: astore_1
      //   52: aload 5
      //   54: aload_1
      //   55: invokevirtual 70	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   58: aload_0
      //   59: getfield 18	com/google/android/gms/internal/zzpu$zza$zza:zzle	Landroid/os/IBinder;
      //   62: bipush 17
      //   64: aload 5
      //   66: aconst_null
      //   67: iconst_1
      //   68: invokeinterface 53 5 0
      //   73: pop
      //   74: aload 5
      //   76: invokevirtual 56	android/os/Parcel:recycle	()V
      //   79: return
      //   80: aload 5
      //   82: iconst_0
      //   83: invokevirtual 38	android/os/Parcel:writeInt	(I)V
      //   86: goto -48 -> 38
      //   89: astore_1
      //   90: aload 5
      //   92: invokevirtual 56	android/os/Parcel:recycle	()V
      //   95: aload_1
      //   96: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	97	0	this	zza
      //   0	97	1	paramList	List<String>
      //   0	97	2	paramzzqh	zzqh
      //   0	97	3	paramzzpv	zzpv
      //   1	38	4	localObject	Object
      //   6	85	5	localParcel	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	21	89	finally
      //   25	38	89	finally
      //   45	52	89	finally
      //   52	74	89	finally
      //   80	86	89	finally
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpu.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */