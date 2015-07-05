.class public abstract Lcom/google/android/gms/location/places/zzi$zze;
.super Lcom/google/android/gms/location/places/zzi$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zza;",
        ">",
        "Lcom/google/android/gms/location/places/zzi$zzb",
        "<",
        "Lcom/google/android/gms/location/places/zzh;",
        "TA;>;"
    }
.end annotation


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/zzi$zze;->zzaC(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/zzh;

    move-result-object v0

    return-object v0
.end method

.method protected zzaC(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/places/zzh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/zzh;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/places/zzh;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method
