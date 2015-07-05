.class public interface abstract Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IGoogleMapDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/internal/zzh;
.end method

.method public abstract addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzi;
.end method

.method public abstract addGroundOverlay2(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Lcom/google/android/gms/maps/model/internal/zze;)Lcom/google/android/gms/maps/model/internal/zzi;
.end method

.method public abstract addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/internal/zzl;
.end method

.method public abstract addMarker2(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/android/gms/maps/model/internal/zzp;)Lcom/google/android/gms/maps/model/internal/zzl;
.end method

.method public abstract addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/internal/zzm;
.end method

.method public abstract addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.end method

.method public abstract addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzn;
.end method

.method public abstract animateCamera(Lcom/google/android/gms/dynamic/zzd;)V
.end method

.method public abstract animateCamera2(Lcom/google/android/gms/maps/model/internal/zzc;)V
.end method

.method public abstract animateCameraWithCallback(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/maps/internal/zzb;)V
.end method

.method public abstract animateCameraWithCallback2(Lcom/google/android/gms/maps/model/internal/zzc;Lcom/google/android/gms/maps/internal/zzb;)V
.end method

.method public abstract animateCameraWithDurationAndCallback(Lcom/google/android/gms/dynamic/zzd;ILcom/google/android/gms/maps/internal/zzb;)V
.end method

.method public abstract animateCameraWithDurationAndCallback2(Lcom/google/android/gms/maps/model/internal/zzc;ILcom/google/android/gms/maps/internal/zzb;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
.end method

.method public abstract getFocusedBuilding()Lcom/google/android/gms/maps/model/internal/zzj;
.end method

.method public abstract getMapAsync(Lcom/google/android/gms/maps/internal/zzm;)V
.end method

.method public abstract getMapType()I
.end method

.method public abstract getMaxZoomLevel()F
.end method

.method public abstract getMinZoomLevel()F
.end method

.method public abstract getMyLocation()Landroid/location/Location;
.end method

.method public abstract getProjection()Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.end method

.method public abstract getUiSettings()Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
.end method

.method public abstract isBuildingsEnabled()Z
.end method

.method public abstract isIndoorEnabled()Z
.end method

.method public abstract isMyLocationEnabled()Z
.end method

.method public abstract isTrafficEnabled()Z
.end method

.method public abstract moveCamera(Lcom/google/android/gms/dynamic/zzd;)V
.end method

.method public abstract moveCamera2(Lcom/google/android/gms/maps/model/internal/zzc;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract setBuildingsEnabled(Z)V
.end method

.method public abstract setContentDescription(Ljava/lang/String;)V
.end method

.method public abstract setIndoorEnabled(Z)Z
.end method

.method public abstract setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/zzd;)V
.end method

.method public abstract setInfoWindowRenderer(Lcom/google/android/gms/maps/internal/zze;)V
.end method

.method public abstract setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V
.end method

.method public abstract setMapType(I)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/zzf;)V
.end method

.method public abstract setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/internal/zzg;)V
.end method

.method public abstract setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/zzh;)V
.end method

.method public abstract setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzj;)V
.end method

.method public abstract setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/zzk;)V
.end method

.method public abstract setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/zzl;)V
.end method

.method public abstract setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/zzn;)V
.end method

.method public abstract setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/zzo;)V
.end method

.method public abstract setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/zzp;)V
.end method

.method public abstract setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/zzq;)V
.end method

.method public abstract setPadding(IIII)V
.end method

.method public abstract setTrafficEnabled(Z)V
.end method

.method public abstract snapshot(Lcom/google/android/gms/maps/internal/zzv;Lcom/google/android/gms/dynamic/zzd;)V
.end method

.method public abstract stopAnimation()V
.end method

.method public abstract useViewLifecycleWhenInFragment()Z
.end method
