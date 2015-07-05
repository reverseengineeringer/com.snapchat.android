.class Lcom/google/android/gms/analytics/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzq;


# instance fields
.field protected zzBa:Ljava/lang/String;

.field protected zzBb:Ljava/lang/String;

.field protected zzBc:Ljava/lang/String;

.field protected zzBd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzra;->zzqU()Lcom/google/android/gms/internal/zzrf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zznE()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/zzg;->zzBc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzra()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/zzg;->zzBd:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzga()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/zzg;->zzBa:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzgc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzBb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "&an"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzBa:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "&av"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzBb:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "&aid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzBc:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "&aiid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzBd:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzaj(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "&an"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&av"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&aid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&aiid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
