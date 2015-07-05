.class public interface abstract Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract equalsRemote(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)Z
.end method

.method public abstract getColor()I
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

.method public abstract getWidth()F
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

.method public abstract setColor(I)V
.end method

.method public abstract setGeodesic(Z)V
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

.method public abstract setVisible(Z)V
.end method

.method public abstract setWidth(F)V
.end method

.method public abstract setZIndex(F)V
.end method
