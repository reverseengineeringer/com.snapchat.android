.class public Lcom/google/android/gms/internal/zzbe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field private static final zzmz:Ljava/lang/Object;

.field private static zzpg:Lcom/google/android/gms/internal/zzbe;


# instance fields
.field private final zzph:Lcom/google/android/gms/internal/zzhw;

.field private final zzpi:Lcom/google/android/gms/internal/zzaw;

.field private final zzpj:Lcom/google/android/gms/internal/zzbf;

.field private final zzpk:Lcom/google/android/gms/internal/zzbr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbe;->zzmz:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbe;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbe;->zza(Lcom/google/android/gms/internal/zzbe;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbe;->zzph:Lcom/google/android/gms/internal/zzhw;

    new-instance v0, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbe;->zzpi:Lcom/google/android/gms/internal/zzaw;

    new-instance v0, Lcom/google/android/gms/internal/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbe;->zzpj:Lcom/google/android/gms/internal/zzbf;

    new-instance v0, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbe;->zzpk:Lcom/google/android/gms/internal/zzbr;

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzbe;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzbe;->zzmz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/internal/zzbe;->zzpg:Lcom/google/android/gms/internal/zzbe;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zzbC()Lcom/google/android/gms/internal/zzbe;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzbe;->zzmz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbe;->zzpg:Lcom/google/android/gms/internal/zzbe;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static zzbD()Lcom/google/android/gms/internal/zzhw;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbC()Lcom/google/android/gms/internal/zzbe;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbe;->zzph:Lcom/google/android/gms/internal/zzhw;

    return-object v0
.end method

.method public static zzbE()Lcom/google/android/gms/internal/zzaw;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbC()Lcom/google/android/gms/internal/zzbe;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbe;->zzpi:Lcom/google/android/gms/internal/zzaw;

    return-object v0
.end method

.method public static zzbF()Lcom/google/android/gms/internal/zzbf;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbC()Lcom/google/android/gms/internal/zzbe;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbe;->zzpj:Lcom/google/android/gms/internal/zzbf;

    return-object v0
.end method
