.class Lcom/google/android/gms/analytics/zzam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzm;


# instance fields
.field zzFr:Ljava/lang/String;

.field zzFs:D

.field zzFt:I

.field zzFu:I

.field zzFv:I

.field zzFw:I

.field zzFx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFs:D

    iput v2, p0, Lcom/google/android/gms/analytics/zzam;->zzFt:I

    iput v2, p0, Lcom/google/android/gms/analytics/zzam;->zzFu:I

    iput v2, p0, Lcom/google/android/gms/analytics/zzam;->zzFv:I

    iput v2, p0, Lcom/google/android/gms/analytics/zzam;->zzFw:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSessionTimeout()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFt:I

    return v0
.end method

.method public zzas(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public zzgK()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFr:Ljava/lang/String;

    return-object v0
.end method

.method public zzgM()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFs:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgN()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFs:D

    return-wide v0
.end method

.method public zzgO()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFt:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgP()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFu:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgQ()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/zzam;->zzFu:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgR()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/zzam;->zzFv:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgS()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/zzam;->zzFv:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzgT()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/zzam;->zzFw:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzq(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzam;->zzas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
