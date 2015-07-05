.class public interface abstract Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract fromScreenLocation(Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/maps/model/LatLng;
.end method

.method public abstract fromScreenLocation2(Lcom/google/android/gms/maps/internal/zzy;)Lcom/google/android/gms/maps/model/LatLng;
.end method

.method public abstract getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;
.end method

.method public abstract toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/zzd;
.end method

.method public abstract toScreenLocation2(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/internal/zzy;
.end method
