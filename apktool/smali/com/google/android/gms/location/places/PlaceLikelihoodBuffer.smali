.class public Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/location/places/PlaceLikelihood;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzHb:Lcom/google/android/gms/common/api/Status;

.field private final zzanK:Ljava/lang/String;

.field private final zzanL:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p3, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzHb:Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer$zza;->zzfD(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzanL:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zziu()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zziu()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.ATTRIBUTIONS_EXTRA_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzanK:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzanK:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/location/places/PlaceLikelihood;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzqc;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzMd:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzqc;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->get(I)Lcom/google/android/gms/location/places/PlaceLikelihood;

    move-result-object v0

    return-object v0
.end method

.method public getAttributions()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzanK:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzHb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "attributions"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;->zzanK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
