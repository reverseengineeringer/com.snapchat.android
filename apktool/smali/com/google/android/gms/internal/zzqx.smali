.class public final Lcom/google/android/gms/internal/zzqx;
.super Ljava/lang/Object;


# instance fields
.field private final zzarV:Lcom/google/android/gms/internal/zzqz;

.field private zzarW:Z

.field private final zzarX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzarY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzrc;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final zzqQ()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzqy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzarX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zzqR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzrc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzarY:Ljava/util/List;

    return-object v0
.end method

.method public final zzqS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzarW:Z

    return v0
.end method

.method final zzqT()Lcom/google/android/gms/internal/zzqz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzarV:Lcom/google/android/gms/internal/zzqz;

    return-object v0
.end method
