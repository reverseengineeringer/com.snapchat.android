.class Lcom/google/android/gms/analytics/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzm;


# instance fields
.field zzBa:Ljava/lang/String;

.field zzBb:Ljava/lang/String;

.field zzEi:Ljava/lang/String;

.field zzEj:I

.field zzEk:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzEj:I

    iput v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzEk:I

    return-void
.end method


# virtual methods
.method public zzfZ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzBa:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzga()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzBa:Ljava/lang/String;

    return-object v0
.end method

.method public zzgb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzBb:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzBb:Ljava/lang/String;

    return-object v0
.end method

.method public zzgd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzEi:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzEi:Ljava/lang/String;

    return-object v0
.end method

.method public zzgf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzEj:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzEj:I

    return v0
.end method

.method public zzgh()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/zzaa;->zzEk:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgi()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/zzaa;->zzEk:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
