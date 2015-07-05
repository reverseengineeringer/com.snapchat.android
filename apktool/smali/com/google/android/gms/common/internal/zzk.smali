.class public abstract Lcom/google/android/gms/common/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zza;
.implements Lcom/google/android/gms/common/internal/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzk$zzd;,
        Lcom/google/android/gms/common/internal/zzk$zza;,
        Lcom/google/android/gms/common/internal/zzk$zzf;,
        Lcom/google/android/gms/common/internal/zzk$zzh;,
        Lcom/google/android/gms/common/internal/zzk$zzg;,
        Lcom/google/android/gms/common/internal/zzk$zzc;,
        Lcom/google/android/gms/common/internal/zzk$zzb;,
        Lcom/google/android/gms/common/internal/zzk$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$zza;",
        "Lcom/google/android/gms/common/internal/zzl$zza;"
    }
.end annotation


# static fields
.field public static final zzPR:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final zzFN:Landroid/accounts/Account;

.field private final zzMM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzMc:Landroid/os/Looper;

.field private final zzMu:Lcom/google/android/gms/common/internal/zzl;

.field private final zzPG:Lcom/google/android/gms/common/internal/zzf;

.field private final zzPH:Lcom/google/android/gms/common/internal/zzm;

.field private zzPI:Lcom/google/android/gms/common/internal/zzs;

.field private zzPJ:Z

.field private zzPK:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

.field private zzPL:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzPM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/zzk",
            "<TT;>.zzc<*>;>;"
        }
    .end annotation
.end field

.field private zzPN:Lcom/google/android/gms/common/internal/zzk$zze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzk",
            "<TT;>.zze;"
        }
    .end annotation
.end field

.field private zzPO:I

.field zzPP:Z

.field private final zzPQ:I

.field private final zznh:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/zzk;->zzPR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPJ:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPP:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMc:Landroid/os/Looper;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzm;->zzP(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPH:Lcom/google/android/gms/common/internal/zzm;

    new-instance v0, Lcom/google/android/gms/common/internal/zzl;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    new-instance v0, Lcom/google/android/gms/common/internal/zzk$zzb;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/zzk$zzb;-><init>(Lcom/google/android/gms/common/internal/zzk;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzk;->zzPQ:I

    iput-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzFN:Landroid/accounts/Account;

    iput-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzMM:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzhY()Lcom/google/android/gms/common/internal/zzf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzm;->zzP(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;ILcom/google/android/gms/common/internal/zzf;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPJ:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPP:Z

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMc:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzm;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPH:Lcom/google/android/gms/common/internal/zzm;

    new-instance v0, Lcom/google/android/gms/common/internal/zzl;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    new-instance v0, Lcom/google/android/gms/common/internal/zzk$zzb;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/zzk$zzb;-><init>(Lcom/google/android/gms/common/internal/zzk;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/gms/common/internal/zzk;->zzPQ:I

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {p5}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzFN:Landroid/accounts/Account;

    invoke-virtual {p5}, Lcom/google/android/gms/common/internal/zzf;->zziP()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/zzk;->zzh(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMM:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;ILcom/google/android/gms/common/internal/zzf;)V

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzk;Lcom/google/android/gms/common/internal/zzk$zze;)Lcom/google/android/gms/common/internal/zzk$zze;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/internal/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzk;Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/internal/zzs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPI:Lcom/google/android/gms/common/internal/zzs;

    return-object p1
.end method

.method private zza(ILandroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzO(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzk;->zzPL:Landroid/os/IInterface;

    monitor-exit v1

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzk;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method private zza(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzk;IILandroid/os/IInterface;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzk;->zza(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzk;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzk;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPJ:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPK:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zzk;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/internal/zzk$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/internal/zzm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPH:Lcom/google/android/gms/common/internal/zzm;

    return-object v0
.end method

.method private zzh(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->zzf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPP:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling connect() while still connected, missing disconnect() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzcF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPH:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzcF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zziZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzm;->zzb(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/zzk$zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzk$zze;-><init>(Lcom/google/android/gms/common/internal/zzk;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPH:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzcF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zziZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzm;->zza(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to connect to service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzcF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPP:Z

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzk$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk$zzc;->zzjh()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPH:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzcF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zziZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzm;->zzb(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/zzk;->zzPN:Lcom/google/android/gms/common/internal/zzk$zze;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GmsClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mStartServiceAction="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzcF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzk;->zzPL:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mConnectState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v2, :pswitch_data_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v3, :cond_0

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    const-string v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzcG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMc:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnecting()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/internal/zzk$zzf;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzk$zzf;-><init>(Lcom/google/android/gms/common/internal/zzk;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V
    .locals 1

    const-string v0, "Must provide a non-null ConnectionStatusReportCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPK:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPJ:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/internal/zzk$zzc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzk",
            "<TT;>.zzc<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzq;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzjc()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/internal/zzae;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzk;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3, v1}, Lcom/google/android/gms/common/internal/zzae;-><init>(Lcom/google/android/gms/common/internal/zzq;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPI:Lcom/google/android/gms/common/internal/zzs;

    new-instance v1, Lcom/google/android/gms/common/internal/zzk$zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zzk$zzd;-><init>(Lcom/google/android/gms/common/internal/zzk;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzs;->zza(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/zzae;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMM:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmh;->zzi(Ljava/util/List;)[Lcom/google/android/gms/common/api/Scope;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzk;->zzaI(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public zzaI(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zzb(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    new-instance v3, Lcom/google/android/gms/common/internal/zzk$zzh;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzk$zzh;-><init>(Lcom/google/android/gms/common/internal/zzk;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/internal/zzq;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzhq()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/zzi;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzPQ:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/zzi;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zzi;->zzbg(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzi;->zzi(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzMM:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzMM:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmh;->zzi(Ljava/util/List;)[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zza([Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/internal/zzi;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzhc()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zziN()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzb(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/zzi;->zzd(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/internal/zzi;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzPI:Lcom/google/android/gms/common/internal/zzs;

    new-instance v2, Lcom/google/android/gms/common/internal/zzk$zzd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/internal/zzk$zzd;-><init>(Lcom/google/android/gms/common/internal/zzk;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzs;->zza(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/zzi;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzjd()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzFN:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzi;->zzb(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzi;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzk;->zzaI(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public abstract zzcF()Ljava/lang/String;
.end method

.method public abstract zzcG()Ljava/lang/String;
.end method

.method protected zzf(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public final zzfc()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public zzhc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzhp()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzhq()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zziN()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzFN:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzFN:Landroid/accounts/Account;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zziP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzMM:Ljava/util/List;

    return-object v0
.end method

.method protected zziZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zziS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPP:Z

    return v0
.end method

.method protected final zzja()Lcom/google/android/gms/common/internal/zzf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPG:Lcom/google/android/gms/common/internal/zzf;

    return-object v0
.end method

.method public final zzjb()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPO:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzk;->zzfc()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPL:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzPL:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzjc()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzjd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
