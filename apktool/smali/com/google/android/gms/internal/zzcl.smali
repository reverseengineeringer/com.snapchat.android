.class public Lcom/google/android/gms/internal/zzcl;
.super Lcom/google/android/gms/internal/zzco$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzcn$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zznh:Ljava/lang/Object;

.field private final zzrk:Ljava/lang/String;

.field private final zzrl:Landroid/graphics/drawable/Drawable;

.field private final zzrm:Ljava/lang/String;

.field private final zzrn:Landroid/graphics/drawable/Drawable;

.field private final zzro:Ljava/lang/String;

.field private final zzrp:D

.field private final zzrq:Ljava/lang/String;

.field private final zzrr:Ljava/lang/String;

.field private zzrs:Lcom/google/android/gms/internal/zzcn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzco$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zznh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcl;->zzrk:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcl;->zzrl:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcl;->zzrm:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcl;->zzrn:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcl;->zzro:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzcl;->zzrp:D

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcl;->zzrq:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzcl;->zzrr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrm:Ljava/lang/String;

    return-object v0
.end method

.method public recordImpression()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrs:Lcom/google/android/gms/internal/zzcn;

    if-nez v0, :cond_0

    const-string v0, "Attempt to record impression before app install ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzZ(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrs:Lcom/google/android/gms/internal/zzcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcn;->recordImpression()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzcn;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcl;->zzrs:Lcom/google/android/gms/internal/zzcn;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzcA()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrp:D

    return-wide v0
.end method

.method public zzcB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrq:Ljava/lang/String;

    return-object v0
.end method

.method public zzcC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrr:Ljava/lang/String;

    return-object v0
.end method

.method public zzcw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrk:Ljava/lang/String;

    return-object v0
.end method

.method public zzcx()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrl:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzcy()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrn:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzcz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzro:Ljava/lang/String;

    return-object v0
.end method

.method public zzl(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcl;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrs:Lcom/google/android/gms/internal/zzcn;

    if-nez v0, :cond_0

    const-string v0, "Attempt to perform click before app install ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzZ(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcl;->zzrs:Lcom/google/android/gms/internal/zzcn;

    const-string v2, "2"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzcn;->zzb(Ljava/lang/String;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
