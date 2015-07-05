.class public interface abstract Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract getStreetViewPanorama()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
.end method

.method public abstract getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/internal/zzu;)V
.end method

.method public abstract isReady()Z
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCreateView(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/zzd;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDestroyView()V
.end method

.method public abstract onInflate(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Bundle;)V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method
