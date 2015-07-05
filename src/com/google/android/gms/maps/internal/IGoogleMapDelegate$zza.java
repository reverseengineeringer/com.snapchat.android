package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import com.google.android.gms.maps.model.internal.zzd;
import com.google.android.gms.maps.model.internal.zzf;
import com.google.android.gms.maps.model.internal.zzh;
import com.google.android.gms.maps.model.internal.zzi;
import com.google.android.gms.maps.model.internal.zzi.zza;
import com.google.android.gms.maps.model.internal.zzj;
import com.google.android.gms.maps.model.internal.zzl;
import com.google.android.gms.maps.model.internal.zzn;
import com.google.android.gms.maps.model.internal.zzp;
import com.google.android.gms.maps.model.internal.zzq;
import com.google.android.gms.maps.model.zzk;
import com.google.android.gms.maps.model.zzo;
import com.google.android.gms.maps.model.zzw;

public abstract class IGoogleMapDelegate$zza
  extends Binder
  implements IGoogleMapDelegate
{
  public static IGoogleMapDelegate zzbu(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    if ((localIInterface != null) && ((localIInterface instanceof IGoogleMapDelegate))) {
      return (IGoogleMapDelegate)localIInterface;
    }
    return new zza(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    int i = 0;
    int j = 0;
    int k = 0;
    boolean bool2 = false;
    int m = 0;
    boolean bool3 = false;
    int n = 0;
    boolean bool1 = false;
    Object localObject3 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject8 = null;
    Object localObject9 = null;
    Object localObject7 = null;
    Object localObject10 = null;
    Object localObject11 = null;
    Object localObject12 = null;
    Object localObject13 = null;
    Object localObject14 = null;
    IPolylineDelegate localIPolylineDelegate = null;
    Object localObject2 = null;
    Object localObject1 = null;
    float f;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = getCameraPosition();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      f = getMaxZoomLevel();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      f = getMinZoomLevel();
      paramParcel2.writeNoException();
      paramParcel2.writeFloat(f);
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      moveCamera(com.google.android.gms.dynamic.zzd.zza.zzau(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      animateCamera(com.google.android.gms.dynamic.zzd.zza.zzau(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      animateCameraWithCallback(com.google.android.gms.dynamic.zzd.zza.zzau(paramParcel1.readStrongBinder()), zzb.zza.zzbs(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.zzd.zza.zzau(paramParcel1.readStrongBinder()), paramParcel1.readInt(), zzb.zza.zzbs(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      stopAnimation();
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = PolylineOptions.CREATOR.zzdZ(paramParcel1);; paramParcel1 = null)
      {
        localIPolylineDelegate = addPolyline(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localIPolylineDelegate != null) {
          paramParcel1 = localIPolylineDelegate.asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 10: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = PolygonOptions.CREATOR.zzdY(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addPolygon(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject3;
        if (localObject1 != null) {
          paramParcel1 = ((com.google.android.gms.maps.model.internal.zzm)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 11: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = MarkerOptions.CREATOR.zzdX(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addMarker(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject4;
        if (localObject1 != null) {
          paramParcel1 = ((zzl)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 12: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = GroundOverlayOptions.CREATOR.zzdU(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addGroundOverlay(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject5;
        if (localObject1 != null) {
          paramParcel1 = ((zzi)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 13: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = TileOverlayOptions.CREATOR.zzef(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addTileOverlay(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject6;
        if (localObject1 != null) {
          paramParcel1 = ((zzn)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 14: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      clear();
      paramParcel2.writeNoException();
      return true;
    case 15: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramInt1 = getMapType();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    case 16: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setMapType(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 17: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isTrafficEnabled();
      paramParcel2.writeNoException();
      if (bool1) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 18: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {
        bool1 = true;
      }
      setTrafficEnabled(bool1);
      paramParcel2.writeNoException();
      return true;
    case 19: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isIndoorEnabled();
      paramParcel2.writeNoException();
      paramInt1 = i;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 20: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (bool1 = true;; bool1 = false)
      {
        bool1 = setIndoorEnabled(bool1);
        paramParcel2.writeNoException();
        paramInt1 = j;
        if (bool1) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 21: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isMyLocationEnabled();
      paramParcel2.writeNoException();
      paramInt1 = k;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 22: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = bool2;
      if (paramParcel1.readInt() != 0) {
        bool1 = true;
      }
      setMyLocationEnabled(bool1);
      paramParcel2.writeNoException();
      return true;
    case 23: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      paramParcel1 = getMyLocation();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 24: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setLocationSource(ILocationSourceDelegate.zza.zzbx(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 25: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = getUiSettings();
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject8;
      if (localObject1 != null) {
        paramParcel1 = ((IUiSettingsDelegate)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 26: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = getProjection();
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject9;
      if (localObject1 != null) {
        paramParcel1 = ((IProjectionDelegate)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 27: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnCameraChangeListener(zzf.zza.zzbA(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 28: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMapClickListener(zzj.zza.zzbE(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 29: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMapLongClickListener(zzl.zza.zzbG(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 30: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMarkerClickListener(zzn.zza.zzbI(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 31: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMarkerDragListener(zzo.zza.zzbJ(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 32: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnInfoWindowClickListener(zzh.zza.zzbC(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 33: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setInfoWindowAdapter(zzd.zza.zzbv(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 35: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = CircleOptions.CREATOR.zzdT(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addCircle(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject7;
        if (localObject1 != null) {
          paramParcel1 = ((zzh)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
      }
    case 36: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMyLocationChangeListener(zzq.zza.zzbL(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 37: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMyLocationButtonClickListener(zzp.zza.zzbK(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 38: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      snapshot(zzv.zza.zzbR(paramParcel1.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzau(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 39: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setPadding(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 40: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = isBuildingsEnabled();
      paramParcel2.writeNoException();
      paramInt1 = m;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 41: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = bool3;
      if (paramParcel1.readInt() != 0) {
        bool1 = true;
      }
      setBuildingsEnabled(bool1);
      paramParcel2.writeNoException();
      return true;
    case 42: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnMapLoadedCallback(zzk.zza.zzbF(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 44: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = getFocusedBuilding();
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject10;
      if (localObject1 != null) {
        paramParcel1 = ((zzj)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 45: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setOnIndoorStateChangeListener(zzg.zza.zzbB(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 53: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      getMapAsync(zzm.zza.zzbH(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 54: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        onCreate(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 55: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onResume();
      paramParcel2.writeNoException();
      return true;
    case 56: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onPause();
      paramParcel2.writeNoException();
      return true;
    case 57: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onDestroy();
      paramParcel2.writeNoException();
      return true;
    case 58: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      onLowMemory();
      paramParcel2.writeNoException();
      return true;
    case 59: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      bool1 = useViewLifecycleWhenInFragment();
      paramParcel2.writeNoException();
      paramInt1 = n;
      if (bool1) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 60: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        onSaveInstanceState(paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 == null) {
          break;
        }
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 61: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setContentDescription(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 64: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject11;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.zzc.CREATOR.zzei(paramParcel1);
      }
      moveCamera2((com.google.android.gms.maps.model.internal.zzc)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 65: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject12;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.zzc.CREATOR.zzei(paramParcel1);
      }
      animateCamera2((com.google.android.gms.maps.model.internal.zzc)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 66: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject13;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.zzc.CREATOR.zzei(paramParcel1);
      }
      animateCameraWithCallback2((com.google.android.gms.maps.model.internal.zzc)localObject1, zzb.zza.zzbs(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 67: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      localObject1 = localObject14;
      if (paramParcel1.readInt() != 0) {
        localObject1 = com.google.android.gms.maps.model.internal.zzc.CREATOR.zzei(paramParcel1);
      }
      animateCameraWithDurationAndCallback2((com.google.android.gms.maps.model.internal.zzc)localObject1, paramParcel1.readInt(), zzb.zza.zzbs(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 68: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramParcel1.readInt() != 0)
      {
        localObject1 = MarkerOptions.CREATOR.zzdX(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label2475;
        }
      }
      for (paramParcel1 = zzp.CREATOR.zzek(paramParcel1);; paramParcel1 = null)
      {
        localObject1 = addMarker2((MarkerOptions)localObject1, paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = localIPolylineDelegate;
        if (localObject1 != null) {
          paramParcel1 = ((zzl)localObject1).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
        localObject1 = null;
        break;
      }
    case 69: 
      label2475:
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      setInfoWindowRenderer(zze.zza.zzbw(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    if (paramParcel1.readInt() != 0)
    {
      localObject1 = GroundOverlayOptions.CREATOR.zzdU(paramParcel1);
      if (paramParcel1.readInt() == 0) {
        break label2582;
      }
    }
    label2582:
    for (paramParcel1 = com.google.android.gms.maps.model.internal.zze.CREATOR.zzej(paramParcel1);; paramParcel1 = null)
    {
      localObject1 = addGroundOverlay2((GroundOverlayOptions)localObject1, paramParcel1);
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject2;
      if (localObject1 != null) {
        paramParcel1 = ((zzi)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
      localObject1 = null;
      break;
    }
  }
  
  static class zza
    implements IGoogleMapDelegate
  {
    private IBinder zzle;
    
    zza(IBinder paramIBinder)
    {
      zzle = paramIBinder;
    }
    
    /* Error */
    public zzh addCircle(CircleOptions paramCircleOptions)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +51 -> 66
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 43	com/google/android/gms/maps/model/CircleOptions:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 35
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 56	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: invokestatic 62	com/google/android/gms/maps/model/internal/zzh$zza:zzbX	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzh;
      //   55: astore_1
      //   56: aload_3
      //   57: invokevirtual 65	android/os/Parcel:recycle	()V
      //   60: aload_2
      //   61: invokevirtual 65	android/os/Parcel:recycle	()V
      //   64: aload_1
      //   65: areturn
      //   66: aload_2
      //   67: iconst_0
      //   68: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   71: goto -42 -> 29
      //   74: astore_1
      //   75: aload_3
      //   76: invokevirtual 65	android/os/Parcel:recycle	()V
      //   79: aload_2
      //   80: invokevirtual 65	android/os/Parcel:recycle	()V
      //   83: aload_1
      //   84: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	85	0	this	zza
      //   0	85	1	paramCircleOptions	CircleOptions
      //   3	77	2	localParcel1	Parcel
      //   7	69	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	74	finally
      //   18	29	74	finally
      //   29	56	74	finally
      //   66	71	74	finally
    }
    
    /* Error */
    public zzi addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +51 -> 66
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 70	com/google/android/gms/maps/model/GroundOverlayOptions:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 12
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 56	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: invokestatic 76	com/google/android/gms/maps/model/internal/zzi$zza:zzbY	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzi;
      //   55: astore_1
      //   56: aload_3
      //   57: invokevirtual 65	android/os/Parcel:recycle	()V
      //   60: aload_2
      //   61: invokevirtual 65	android/os/Parcel:recycle	()V
      //   64: aload_1
      //   65: areturn
      //   66: aload_2
      //   67: iconst_0
      //   68: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   71: goto -42 -> 29
      //   74: astore_1
      //   75: aload_3
      //   76: invokevirtual 65	android/os/Parcel:recycle	()V
      //   79: aload_2
      //   80: invokevirtual 65	android/os/Parcel:recycle	()V
      //   83: aload_1
      //   84: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	85	0	this	zza
      //   0	85	1	paramGroundOverlayOptions	GroundOverlayOptions
      //   3	77	2	localParcel1	Parcel
      //   7	69	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	74	finally
      //   18	29	74	finally
      //   29	56	74	finally
      //   66	71	74	finally
    }
    
    public zzi addGroundOverlay2(GroundOverlayOptions paramGroundOverlayOptions, com.google.android.gms.maps.model.internal.zze paramzze)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramGroundOverlayOptions != null)
          {
            localParcel1.writeInt(1);
            paramGroundOverlayOptions.writeToParcel(localParcel1, 0);
            if (paramzze != null)
            {
              localParcel1.writeInt(1);
              paramzze.writeToParcel(localParcel1, 0);
              zzle.transact(70, localParcel1, localParcel2, 0);
              localParcel2.readException();
              paramGroundOverlayOptions = zzi.zza.zzbY(localParcel2.readStrongBinder());
              return paramGroundOverlayOptions;
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
      }
    }
    
    /* Error */
    public zzl addMarker(MarkerOptions paramMarkerOptions)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +51 -> 66
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 86	com/google/android/gms/maps/model/MarkerOptions:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 11
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 56	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: invokestatic 92	com/google/android/gms/maps/model/internal/zzl$zza:zzcb	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzl;
      //   55: astore_1
      //   56: aload_3
      //   57: invokevirtual 65	android/os/Parcel:recycle	()V
      //   60: aload_2
      //   61: invokevirtual 65	android/os/Parcel:recycle	()V
      //   64: aload_1
      //   65: areturn
      //   66: aload_2
      //   67: iconst_0
      //   68: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   71: goto -42 -> 29
      //   74: astore_1
      //   75: aload_3
      //   76: invokevirtual 65	android/os/Parcel:recycle	()V
      //   79: aload_2
      //   80: invokevirtual 65	android/os/Parcel:recycle	()V
      //   83: aload_1
      //   84: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	85	0	this	zza
      //   0	85	1	paramMarkerOptions	MarkerOptions
      //   3	77	2	localParcel1	Parcel
      //   7	69	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	74	finally
      //   18	29	74	finally
      //   29	56	74	finally
      //   66	71	74	finally
    }
    
    public zzl addMarker2(MarkerOptions paramMarkerOptions, zzp paramzzp)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramMarkerOptions != null)
          {
            localParcel1.writeInt(1);
            paramMarkerOptions.writeToParcel(localParcel1, 0);
            if (paramzzp != null)
            {
              localParcel1.writeInt(1);
              paramzzp.writeToParcel(localParcel1, 0);
              zzle.transact(68, localParcel1, localParcel2, 0);
              localParcel2.readException();
              paramMarkerOptions = com.google.android.gms.maps.model.internal.zzl.zza.zzcb(localParcel2.readStrongBinder());
              return paramMarkerOptions;
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
      }
    }
    
    /* Error */
    public com.google.android.gms.maps.model.internal.zzm addPolygon(PolygonOptions paramPolygonOptions)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +51 -> 66
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 102	com/google/android/gms/maps/model/PolygonOptions:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 10
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 56	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: invokestatic 108	com/google/android/gms/maps/model/internal/zzm$zza:zzcc	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzm;
      //   55: astore_1
      //   56: aload_3
      //   57: invokevirtual 65	android/os/Parcel:recycle	()V
      //   60: aload_2
      //   61: invokevirtual 65	android/os/Parcel:recycle	()V
      //   64: aload_1
      //   65: areturn
      //   66: aload_2
      //   67: iconst_0
      //   68: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   71: goto -42 -> 29
      //   74: astore_1
      //   75: aload_3
      //   76: invokevirtual 65	android/os/Parcel:recycle	()V
      //   79: aload_2
      //   80: invokevirtual 65	android/os/Parcel:recycle	()V
      //   83: aload_1
      //   84: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	85	0	this	zza
      //   0	85	1	paramPolygonOptions	PolygonOptions
      //   3	77	2	localParcel1	Parcel
      //   7	69	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	74	finally
      //   18	29	74	finally
      //   29	56	74	finally
      //   66	71	74	finally
    }
    
    /* Error */
    public IPolylineDelegate addPolyline(PolylineOptions paramPolylineOptions)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +51 -> 66
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 113	com/google/android/gms/maps/model/PolylineOptions:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 9
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 56	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: invokestatic 119	com/google/android/gms/maps/model/internal/IPolylineDelegate$zza:zzcd	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
      //   55: astore_1
      //   56: aload_3
      //   57: invokevirtual 65	android/os/Parcel:recycle	()V
      //   60: aload_2
      //   61: invokevirtual 65	android/os/Parcel:recycle	()V
      //   64: aload_1
      //   65: areturn
      //   66: aload_2
      //   67: iconst_0
      //   68: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   71: goto -42 -> 29
      //   74: astore_1
      //   75: aload_3
      //   76: invokevirtual 65	android/os/Parcel:recycle	()V
      //   79: aload_2
      //   80: invokevirtual 65	android/os/Parcel:recycle	()V
      //   83: aload_1
      //   84: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	85	0	this	zza
      //   0	85	1	paramPolylineOptions	PolylineOptions
      //   3	77	2	localParcel1	Parcel
      //   7	69	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	74	finally
      //   18	29	74	finally
      //   29	56	74	finally
      //   66	71	74	finally
    }
    
    /* Error */
    public zzn addTileOverlay(TileOverlayOptions paramTileOverlayOptions)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +51 -> 66
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 124	com/google/android/gms/maps/model/TileOverlayOptions:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 13
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 56	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
      //   52: invokestatic 130	com/google/android/gms/maps/model/internal/zzn$zza:zzce	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzn;
      //   55: astore_1
      //   56: aload_3
      //   57: invokevirtual 65	android/os/Parcel:recycle	()V
      //   60: aload_2
      //   61: invokevirtual 65	android/os/Parcel:recycle	()V
      //   64: aload_1
      //   65: areturn
      //   66: aload_2
      //   67: iconst_0
      //   68: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   71: goto -42 -> 29
      //   74: astore_1
      //   75: aload_3
      //   76: invokevirtual 65	android/os/Parcel:recycle	()V
      //   79: aload_2
      //   80: invokevirtual 65	android/os/Parcel:recycle	()V
      //   83: aload_1
      //   84: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	85	0	this	zza
      //   0	85	1	paramTileOverlayOptions	TileOverlayOptions
      //   3	77	2	localParcel1	Parcel
      //   7	69	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	74	finally
      //   18	29	74	finally
      //   29	56	74	finally
      //   66	71	74	finally
    }
    
    /* Error */
    public void animateCamera(com.google.android.gms.dynamic.zzd paramzzd)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +42 -> 57
      //   18: aload_1
      //   19: invokeinterface 137 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: iconst_5
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 65	android/os/Parcel:recycle	()V
      //   52: aload_2
      //   53: invokevirtual 65	android/os/Parcel:recycle	()V
      //   56: return
      //   57: aconst_null
      //   58: astore_1
      //   59: goto -34 -> 25
      //   62: astore_1
      //   63: aload_3
      //   64: invokevirtual 65	android/os/Parcel:recycle	()V
      //   67: aload_2
      //   68: invokevirtual 65	android/os/Parcel:recycle	()V
      //   71: aload_1
      //   72: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	73	0	this	zza
      //   0	73	1	paramzzd	com.google.android.gms.dynamic.zzd
      //   3	65	2	localParcel1	Parcel
      //   7	57	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	62	finally
      //   18	25	62	finally
      //   25	48	62	finally
    }
    
    /* Error */
    public void animateCamera2(com.google.android.gms.maps.model.internal.zzc paramzzc)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +42 -> 57
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 145	com/google/android/gms/maps/model/internal/zzc:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 65
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 65	android/os/Parcel:recycle	()V
      //   52: aload_2
      //   53: invokevirtual 65	android/os/Parcel:recycle	()V
      //   56: return
      //   57: aload_2
      //   58: iconst_0
      //   59: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   62: goto -33 -> 29
      //   65: astore_1
      //   66: aload_3
      //   67: invokevirtual 65	android/os/Parcel:recycle	()V
      //   70: aload_2
      //   71: invokevirtual 65	android/os/Parcel:recycle	()V
      //   74: aload_1
      //   75: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	76	0	this	zza
      //   0	76	1	paramzzc	com.google.android.gms.maps.model.internal.zzc
      //   3	68	2	localParcel1	Parcel
      //   7	60	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	65	finally
      //   18	29	65	finally
      //   29	48	65	finally
      //   57	62	65	finally
    }
    
    /* Error */
    public void animateCameraWithCallback(com.google.android.gms.dynamic.zzd paramzzd, zzb paramzzb)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_3
      //   2: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   5: astore 4
      //   7: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   10: astore 5
      //   12: aload 4
      //   14: ldc 29
      //   16: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   19: aload_1
      //   20: ifnull +68 -> 88
      //   23: aload_1
      //   24: invokeinterface 137 1 0
      //   29: astore_1
      //   30: aload 4
      //   32: aload_1
      //   33: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   36: aload_3
      //   37: astore_1
      //   38: aload_2
      //   39: ifnull +10 -> 49
      //   42: aload_2
      //   43: invokeinterface 150 1 0
      //   48: astore_1
      //   49: aload 4
      //   51: aload_1
      //   52: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   55: aload_0
      //   56: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   59: bipush 6
      //   61: aload 4
      //   63: aload 5
      //   65: iconst_0
      //   66: invokeinterface 49 5 0
      //   71: pop
      //   72: aload 5
      //   74: invokevirtual 52	android/os/Parcel:readException	()V
      //   77: aload 5
      //   79: invokevirtual 65	android/os/Parcel:recycle	()V
      //   82: aload 4
      //   84: invokevirtual 65	android/os/Parcel:recycle	()V
      //   87: return
      //   88: aconst_null
      //   89: astore_1
      //   90: goto -60 -> 30
      //   93: astore_1
      //   94: aload 5
      //   96: invokevirtual 65	android/os/Parcel:recycle	()V
      //   99: aload 4
      //   101: invokevirtual 65	android/os/Parcel:recycle	()V
      //   104: aload_1
      //   105: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	106	0	this	zza
      //   0	106	1	paramzzd	com.google.android.gms.dynamic.zzd
      //   0	106	2	paramzzb	zzb
      //   1	36	3	localObject	Object
      //   5	95	4	localParcel1	Parcel
      //   10	85	5	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   12	19	93	finally
      //   23	30	93	finally
      //   30	36	93	finally
      //   42	49	93	finally
      //   49	77	93	finally
    }
    
    public void animateCameraWithCallback2(com.google.android.gms.maps.model.internal.zzc paramzzc, zzb paramzzb)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramzzc != null)
          {
            localParcel1.writeInt(1);
            paramzzc.writeToParcel(localParcel1, 0);
            if (paramzzb != null)
            {
              paramzzc = paramzzb.asBinder();
              localParcel1.writeStrongBinder(paramzzc);
              zzle.transact(66, localParcel1, localParcel2, 0);
              localParcel2.readException();
            }
          }
          else
          {
            localParcel1.writeInt(0);
            continue;
          }
          paramzzc = null;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
    
    /* Error */
    public void animateCameraWithDurationAndCallback(com.google.android.gms.dynamic.zzd paramzzd, int paramInt, zzb paramzzb)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   6: astore 5
      //   8: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   11: astore 6
      //   13: aload 5
      //   15: ldc 29
      //   17: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   20: aload_1
      //   21: ifnull +75 -> 96
      //   24: aload_1
      //   25: invokeinterface 137 1 0
      //   30: astore_1
      //   31: aload 5
      //   33: aload_1
      //   34: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   37: aload 5
      //   39: iload_2
      //   40: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   43: aload 4
      //   45: astore_1
      //   46: aload_3
      //   47: ifnull +10 -> 57
      //   50: aload_3
      //   51: invokeinterface 150 1 0
      //   56: astore_1
      //   57: aload 5
      //   59: aload_1
      //   60: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   63: aload_0
      //   64: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   67: bipush 7
      //   69: aload 5
      //   71: aload 6
      //   73: iconst_0
      //   74: invokeinterface 49 5 0
      //   79: pop
      //   80: aload 6
      //   82: invokevirtual 52	android/os/Parcel:readException	()V
      //   85: aload 6
      //   87: invokevirtual 65	android/os/Parcel:recycle	()V
      //   90: aload 5
      //   92: invokevirtual 65	android/os/Parcel:recycle	()V
      //   95: return
      //   96: aconst_null
      //   97: astore_1
      //   98: goto -67 -> 31
      //   101: astore_1
      //   102: aload 6
      //   104: invokevirtual 65	android/os/Parcel:recycle	()V
      //   107: aload 5
      //   109: invokevirtual 65	android/os/Parcel:recycle	()V
      //   112: aload_1
      //   113: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	114	0	this	zza
      //   0	114	1	paramzzd	com.google.android.gms.dynamic.zzd
      //   0	114	2	paramInt	int
      //   0	114	3	paramzzb	zzb
      //   1	43	4	localObject	Object
      //   6	102	5	localParcel1	Parcel
      //   11	92	6	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   13	20	101	finally
      //   24	31	101	finally
      //   31	43	101	finally
      //   50	57	101	finally
      //   57	85	101	finally
    }
    
    public void animateCameraWithDurationAndCallback2(com.google.android.gms.maps.model.internal.zzc paramzzc, int paramInt, zzb paramzzb)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      for (;;)
      {
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
          if (paramzzc != null)
          {
            localParcel1.writeInt(1);
            paramzzc.writeToParcel(localParcel1, 0);
            localParcel1.writeInt(paramInt);
            if (paramzzb != null)
            {
              paramzzc = paramzzb.asBinder();
              localParcel1.writeStrongBinder(paramzzc);
              zzle.transact(67, localParcel1, localParcel2, 0);
              localParcel2.readException();
            }
          }
          else
          {
            localParcel1.writeInt(0);
            continue;
          }
          paramzzc = null;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
    
    public IBinder asBinder()
    {
      return zzle;
    }
    
    public void clear()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(14, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public CameraPosition getCameraPosition()
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_0
      //   15: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   18: iconst_1
      //   19: aload_2
      //   20: aload_3
      //   21: iconst_0
      //   22: invokeinterface 49 5 0
      //   27: pop
      //   28: aload_3
      //   29: invokevirtual 52	android/os/Parcel:readException	()V
      //   32: aload_3
      //   33: invokevirtual 163	android/os/Parcel:readInt	()I
      //   36: ifeq +21 -> 57
      //   39: getstatic 169	com/google/android/gms/maps/model/CameraPosition:CREATOR	Lcom/google/android/gms/maps/model/zza;
      //   42: aload_3
      //   43: invokevirtual 175	com/google/android/gms/maps/model/zza:zzdS	(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;
      //   46: astore_1
      //   47: aload_3
      //   48: invokevirtual 65	android/os/Parcel:recycle	()V
      //   51: aload_2
      //   52: invokevirtual 65	android/os/Parcel:recycle	()V
      //   55: aload_1
      //   56: areturn
      //   57: aconst_null
      //   58: astore_1
      //   59: goto -12 -> 47
      //   62: astore_1
      //   63: aload_3
      //   64: invokevirtual 65	android/os/Parcel:recycle	()V
      //   67: aload_2
      //   68: invokevirtual 65	android/os/Parcel:recycle	()V
      //   71: aload_1
      //   72: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	73	0	this	zza
      //   46	13	1	localCameraPosition	CameraPosition
      //   62	10	1	localObject	Object
      //   3	65	2	localParcel1	Parcel
      //   7	57	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	47	62	finally
    }
    
    public zzj getFocusedBuilding()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(44, localParcel1, localParcel2, 0);
        localParcel2.readException();
        zzj localzzj = com.google.android.gms.maps.model.internal.zzj.zza.zzbZ(localParcel2.readStrongBinder());
        return localzzj;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public void getMapAsync(zzm paramzzm)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 188 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 53
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzm	zzm
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    public int getMapType()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(15, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        return i;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public float getMaxZoomLevel()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        float f = localParcel2.readFloat();
        return f;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public float getMinZoomLevel()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        float f = localParcel2.readFloat();
        return f;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public Location getMyLocation()
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_0
      //   15: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   18: bipush 23
      //   20: aload_2
      //   21: aload_3
      //   22: iconst_0
      //   23: invokeinterface 49 5 0
      //   28: pop
      //   29: aload_3
      //   30: invokevirtual 52	android/os/Parcel:readException	()V
      //   33: aload_3
      //   34: invokevirtual 163	android/os/Parcel:readInt	()I
      //   37: ifeq +26 -> 63
      //   40: getstatic 202	android/location/Location:CREATOR	Landroid/os/Parcelable$Creator;
      //   43: aload_3
      //   44: invokeinterface 208 2 0
      //   49: checkcast 199	android/location/Location
      //   52: astore_1
      //   53: aload_3
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: aload_2
      //   58: invokevirtual 65	android/os/Parcel:recycle	()V
      //   61: aload_1
      //   62: areturn
      //   63: aconst_null
      //   64: astore_1
      //   65: goto -12 -> 53
      //   68: astore_1
      //   69: aload_3
      //   70: invokevirtual 65	android/os/Parcel:recycle	()V
      //   73: aload_2
      //   74: invokevirtual 65	android/os/Parcel:recycle	()V
      //   77: aload_1
      //   78: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	79	0	this	zza
      //   52	13	1	localLocation	Location
      //   68	10	1	localObject	Object
      //   3	71	2	localParcel1	Parcel
      //   7	63	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	53	68	finally
    }
    
    public IProjectionDelegate getProjection()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(26, localParcel1, localParcel2, 0);
        localParcel2.readException();
        IProjectionDelegate localIProjectionDelegate = IProjectionDelegate.zza.zzbQ(localParcel2.readStrongBinder());
        return localIProjectionDelegate;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public IUiSettingsDelegate getUiSettings()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(25, localParcel1, localParcel2, 0);
        localParcel2.readException();
        IUiSettingsDelegate localIUiSettingsDelegate = IUiSettingsDelegate.zza.zzbV(localParcel2.readStrongBinder());
        return localIUiSettingsDelegate;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public boolean isBuildingsEnabled()
    {
      boolean bool = false;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(40, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        if (i != 0) {
          bool = true;
        }
        return bool;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public boolean isIndoorEnabled()
    {
      boolean bool = false;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(19, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        if (i != 0) {
          bool = true;
        }
        return bool;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public boolean isMyLocationEnabled()
    {
      boolean bool = false;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(21, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        if (i != 0) {
          bool = true;
        }
        return bool;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public boolean isTrafficEnabled()
    {
      boolean bool = false;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(17, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        if (i != 0) {
          bool = true;
        }
        return bool;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public void moveCamera(com.google.android.gms.dynamic.zzd paramzzd)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +42 -> 57
      //   18: aload_1
      //   19: invokeinterface 137 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: iconst_4
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 65	android/os/Parcel:recycle	()V
      //   52: aload_2
      //   53: invokevirtual 65	android/os/Parcel:recycle	()V
      //   56: return
      //   57: aconst_null
      //   58: astore_1
      //   59: goto -34 -> 25
      //   62: astore_1
      //   63: aload_3
      //   64: invokevirtual 65	android/os/Parcel:recycle	()V
      //   67: aload_2
      //   68: invokevirtual 65	android/os/Parcel:recycle	()V
      //   71: aload_1
      //   72: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	73	0	this	zza
      //   0	73	1	paramzzd	com.google.android.gms.dynamic.zzd
      //   3	65	2	localParcel1	Parcel
      //   7	57	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	62	finally
      //   18	25	62	finally
      //   25	48	62	finally
    }
    
    /* Error */
    public void moveCamera2(com.google.android.gms.maps.model.internal.zzc paramzzc)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +42 -> 57
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 145	com/google/android/gms/maps/model/internal/zzc:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 64
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 65	android/os/Parcel:recycle	()V
      //   52: aload_2
      //   53: invokevirtual 65	android/os/Parcel:recycle	()V
      //   56: return
      //   57: aload_2
      //   58: iconst_0
      //   59: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   62: goto -33 -> 29
      //   65: astore_1
      //   66: aload_3
      //   67: invokevirtual 65	android/os/Parcel:recycle	()V
      //   70: aload_2
      //   71: invokevirtual 65	android/os/Parcel:recycle	()V
      //   74: aload_1
      //   75: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	76	0	this	zza
      //   0	76	1	paramzzc	com.google.android.gms.maps.model.internal.zzc
      //   3	68	2	localParcel1	Parcel
      //   7	60	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	65	finally
      //   18	29	65	finally
      //   29	48	65	finally
      //   57	62	65	finally
    }
    
    /* Error */
    public void onCreate(Bundle paramBundle)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +42 -> 57
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 236	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 54
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 65	android/os/Parcel:recycle	()V
      //   52: aload_2
      //   53: invokevirtual 65	android/os/Parcel:recycle	()V
      //   56: return
      //   57: aload_2
      //   58: iconst_0
      //   59: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   62: goto -33 -> 29
      //   65: astore_1
      //   66: aload_3
      //   67: invokevirtual 65	android/os/Parcel:recycle	()V
      //   70: aload_2
      //   71: invokevirtual 65	android/os/Parcel:recycle	()V
      //   74: aload_1
      //   75: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	76	0	this	zza
      //   0	76	1	paramBundle	Bundle
      //   3	68	2	localParcel1	Parcel
      //   7	60	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	65	finally
      //   18	29	65	finally
      //   29	48	65	finally
      //   57	62	65	finally
    }
    
    public void onDestroy()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(57, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public void onLowMemory()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(58, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public void onPause()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(56, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public void onResume()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(55, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public void onSaveInstanceState(Bundle paramBundle)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +54 -> 69
      //   18: aload_2
      //   19: iconst_1
      //   20: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   23: aload_1
      //   24: aload_2
      //   25: iconst_0
      //   26: invokevirtual 236	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
      //   29: aload_0
      //   30: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   33: bipush 60
      //   35: aload_2
      //   36: aload_3
      //   37: iconst_0
      //   38: invokeinterface 49 5 0
      //   43: pop
      //   44: aload_3
      //   45: invokevirtual 52	android/os/Parcel:readException	()V
      //   48: aload_3
      //   49: invokevirtual 163	android/os/Parcel:readInt	()I
      //   52: ifeq +8 -> 60
      //   55: aload_1
      //   56: aload_3
      //   57: invokevirtual 245	android/os/Bundle:readFromParcel	(Landroid/os/Parcel;)V
      //   60: aload_3
      //   61: invokevirtual 65	android/os/Parcel:recycle	()V
      //   64: aload_2
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: return
      //   69: aload_2
      //   70: iconst_0
      //   71: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   74: goto -45 -> 29
      //   77: astore_1
      //   78: aload_3
      //   79: invokevirtual 65	android/os/Parcel:recycle	()V
      //   82: aload_2
      //   83: invokevirtual 65	android/os/Parcel:recycle	()V
      //   86: aload_1
      //   87: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	88	0	this	zza
      //   0	88	1	paramBundle	Bundle
      //   3	80	2	localParcel1	Parcel
      //   7	72	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	77	finally
      //   18	29	77	finally
      //   29	60	77	finally
      //   69	74	77	finally
    }
    
    public void setBuildingsEnabled(boolean paramBoolean)
    {
      int i = 0;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramBoolean) {
          i = 1;
        }
        localParcel1.writeInt(i);
        zzle.transact(41, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public void setContentDescription(String paramString)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        localParcel1.writeString(paramString);
        zzle.transact(61, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public boolean setIndoorEnabled(boolean paramBoolean)
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_3
      //   2: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   5: astore 4
      //   7: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   10: astore 5
      //   12: aload 4
      //   14: ldc 29
      //   16: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   19: iload_1
      //   20: ifeq +57 -> 77
      //   23: iconst_1
      //   24: istore_2
      //   25: aload 4
      //   27: iload_2
      //   28: invokevirtual 37	android/os/Parcel:writeInt	(I)V
      //   31: aload_0
      //   32: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   35: bipush 20
      //   37: aload 4
      //   39: aload 5
      //   41: iconst_0
      //   42: invokeinterface 49 5 0
      //   47: pop
      //   48: aload 5
      //   50: invokevirtual 52	android/os/Parcel:readException	()V
      //   53: aload 5
      //   55: invokevirtual 163	android/os/Parcel:readInt	()I
      //   58: istore_2
      //   59: iload_2
      //   60: ifeq +22 -> 82
      //   63: iload_3
      //   64: istore_1
      //   65: aload 5
      //   67: invokevirtual 65	android/os/Parcel:recycle	()V
      //   70: aload 4
      //   72: invokevirtual 65	android/os/Parcel:recycle	()V
      //   75: iload_1
      //   76: ireturn
      //   77: iconst_0
      //   78: istore_2
      //   79: goto -54 -> 25
      //   82: iconst_0
      //   83: istore_1
      //   84: goto -19 -> 65
      //   87: astore 6
      //   89: aload 5
      //   91: invokevirtual 65	android/os/Parcel:recycle	()V
      //   94: aload 4
      //   96: invokevirtual 65	android/os/Parcel:recycle	()V
      //   99: aload 6
      //   101: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	102	0	this	zza
      //   0	102	1	paramBoolean	boolean
      //   24	55	2	i	int
      //   1	63	3	bool	boolean
      //   5	90	4	localParcel1	Parcel
      //   10	80	5	localParcel2	Parcel
      //   87	13	6	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   12	19	87	finally
      //   25	59	87	finally
    }
    
    /* Error */
    public void setInfoWindowAdapter(zzd paramzzd)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 258 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 33
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzd	zzd
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setInfoWindowRenderer(zze paramzze)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 263 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 69
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzze	zze
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setLocationSource(ILocationSourceDelegate paramILocationSourceDelegate)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 268 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 24
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramILocationSourceDelegate	ILocationSourceDelegate
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    public void setMapType(int paramInt)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        localParcel1.writeInt(paramInt);
        zzle.transact(16, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public void setMyLocationEnabled(boolean paramBoolean)
    {
      int i = 0;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramBoolean) {
          i = 1;
        }
        localParcel1.writeInt(i);
        zzle.transact(22, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public void setOnCameraChangeListener(zzf paramzzf)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 275 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 27
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzf	zzf
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnIndoorStateChangeListener(zzg paramzzg)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 280 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 45
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzg	zzg
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnInfoWindowClickListener(zzh paramzzh)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 285 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 32
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzh	zzh
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnMapClickListener(zzj paramzzj)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 290 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 28
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzj	zzj
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnMapLoadedCallback(zzk paramzzk)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 295 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 42
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzk	zzk
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnMapLongClickListener(zzl paramzzl)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 300 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 29
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzl	zzl
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnMarkerClickListener(zzn paramzzn)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 305 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 30
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzn	zzn
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnMarkerDragListener(zzo paramzzo)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 310 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 31
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzo	zzo
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnMyLocationButtonClickListener(zzp paramzzp)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 315 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 37
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzp	zzp
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    /* Error */
    public void setOnMyLocationChangeListener(zzq paramzzq)
    {
      // Byte code:
      //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_2
      //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_3
      //   8: aload_2
      //   9: ldc 29
      //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_1
      //   15: ifnull +43 -> 58
      //   18: aload_1
      //   19: invokeinterface 320 1 0
      //   24: astore_1
      //   25: aload_2
      //   26: aload_1
      //   27: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   30: aload_0
      //   31: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   34: bipush 36
      //   36: aload_2
      //   37: aload_3
      //   38: iconst_0
      //   39: invokeinterface 49 5 0
      //   44: pop
      //   45: aload_3
      //   46: invokevirtual 52	android/os/Parcel:readException	()V
      //   49: aload_3
      //   50: invokevirtual 65	android/os/Parcel:recycle	()V
      //   53: aload_2
      //   54: invokevirtual 65	android/os/Parcel:recycle	()V
      //   57: return
      //   58: aconst_null
      //   59: astore_1
      //   60: goto -35 -> 25
      //   63: astore_1
      //   64: aload_3
      //   65: invokevirtual 65	android/os/Parcel:recycle	()V
      //   68: aload_2
      //   69: invokevirtual 65	android/os/Parcel:recycle	()V
      //   72: aload_1
      //   73: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	74	0	this	zza
      //   0	74	1	paramzzq	zzq
      //   3	66	2	localParcel1	Parcel
      //   7	58	3	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   8	14	63	finally
      //   18	25	63	finally
      //   25	49	63	finally
    }
    
    public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
        localParcel1.writeInt(paramInt3);
        localParcel1.writeInt(paramInt4);
        zzle.transact(39, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public void setTrafficEnabled(boolean paramBoolean)
    {
      int i = 0;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (paramBoolean) {
          i = 1;
        }
        localParcel1.writeInt(i);
        zzle.transact(18, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    /* Error */
    public void snapshot(zzv paramzzv, com.google.android.gms.dynamic.zzd paramzzd)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_3
      //   2: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   5: astore 4
      //   7: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   10: astore 5
      //   12: aload 4
      //   14: ldc 29
      //   16: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   19: aload_1
      //   20: ifnull +68 -> 88
      //   23: aload_1
      //   24: invokeinterface 328 1 0
      //   29: astore_1
      //   30: aload 4
      //   32: aload_1
      //   33: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   36: aload_3
      //   37: astore_1
      //   38: aload_2
      //   39: ifnull +10 -> 49
      //   42: aload_2
      //   43: invokeinterface 137 1 0
      //   48: astore_1
      //   49: aload 4
      //   51: aload_1
      //   52: invokevirtual 140	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
      //   55: aload_0
      //   56: getfield 18	com/google/android/gms/maps/internal/IGoogleMapDelegate$zza$zza:zzle	Landroid/os/IBinder;
      //   59: bipush 38
      //   61: aload 4
      //   63: aload 5
      //   65: iconst_0
      //   66: invokeinterface 49 5 0
      //   71: pop
      //   72: aload 5
      //   74: invokevirtual 52	android/os/Parcel:readException	()V
      //   77: aload 5
      //   79: invokevirtual 65	android/os/Parcel:recycle	()V
      //   82: aload 4
      //   84: invokevirtual 65	android/os/Parcel:recycle	()V
      //   87: return
      //   88: aconst_null
      //   89: astore_1
      //   90: goto -60 -> 30
      //   93: astore_1
      //   94: aload 5
      //   96: invokevirtual 65	android/os/Parcel:recycle	()V
      //   99: aload 4
      //   101: invokevirtual 65	android/os/Parcel:recycle	()V
      //   104: aload_1
      //   105: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	106	0	this	zza
      //   0	106	1	paramzzv	zzv
      //   0	106	2	paramzzd	com.google.android.gms.dynamic.zzd
      //   1	36	3	localObject	Object
      //   5	95	4	localParcel1	Parcel
      //   10	85	5	localParcel2	Parcel
      // Exception table:
      //   from	to	target	type
      //   12	19	93	finally
      //   23	30	93	finally
      //   30	36	93	finally
      //   42	49	93	finally
      //   49	77	93	finally
    }
    
    public void stopAnimation()
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(8, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public boolean useViewLifecycleWhenInFragment()
    {
      boolean bool = false;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        zzle.transact(59, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int i = localParcel2.readInt();
        if (i != 0) {
          bool = true;
        }
        return bool;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.IGoogleMapDelegate.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */