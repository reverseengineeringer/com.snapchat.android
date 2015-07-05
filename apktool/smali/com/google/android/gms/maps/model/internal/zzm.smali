.class public interface abstract Lcom/google/android/gms/maps/model/internal/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/zzm$zza;
    }
.end annotation


# virtual methods
.method public abstract getFillColor()I
.end method

.method public abstract getHoles()Ljava/util/List;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStrokeColor()I
.end method

.method public abstract getStrokeWidth()F
.end method

.method public abstract getZIndex()F
.end method

.method public abstract hashCodeRemote()I
.end method

.method public abstract isGeodesic()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract remove()V
.end method

.method public abstract setFillColor(I)V
.end method

.method public abstract setGeodesic(Z)V
.end method

.method public abstract setHoles(Ljava/util/List;)V
.end method

.method public abstract setPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStrokeColor(I)V
.end method

.method public abstract setStrokeWidth(F)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setZIndex(F)V
.end method

.method public abstract zza(Lcom/google/android/gms/maps/model/internal/zzm;)Z
.end method
