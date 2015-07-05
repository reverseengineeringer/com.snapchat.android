.class public interface abstract Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
.end method

.method public abstract enablePanning(Z)V
.end method

.method public abstract enableStreetNames(Z)V
.end method

.method public abstract enableUserNavigation(Z)V
.end method

.method public abstract enableZoom(Z)V
.end method

.method public abstract getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
.end method

.method public abstract getStreetViewPanoramaLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
.end method

.method public abstract isPanningGesturesEnabled()Z
.end method

.method public abstract isStreetNamesEnabled()Z
.end method

.method public abstract isUserNavigationEnabled()Z
.end method

.method public abstract isZoomGesturesEnabled()Z
.end method

.method public abstract orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/dynamic/zzd;
.end method

.method public abstract pointToOrientation(Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.end method

.method public abstract setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/internal/zzr;)V
.end method

.method public abstract setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/internal/zzs;)V
.end method

.method public abstract setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/internal/zzt;)V
.end method

.method public abstract setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
.end method

.method public abstract setPositionWithID(Ljava/lang/String;)V
.end method

.method public abstract setPositionWithRadius(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method
