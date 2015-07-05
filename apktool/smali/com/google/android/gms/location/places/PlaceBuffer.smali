.class public Lcom/google/android/gms/location/places/PlaceBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/location/places/Place;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzHb:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceBuffer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceBuffer;->zzHb:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/location/places/Place;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzqg;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceBuffer;->zzMd:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceBuffer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzqg;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/PlaceBuffer;->get(I)Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceBuffer;->zzHb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
