.class final Lcom/google/android/gms/common/api/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/zzd$zza;,
        Lcom/google/android/gms/common/api/zzd$zzb;,
        Lcom/google/android/gms/common/api/zzd$zzc;,
        Lcom/google/android/gms/common/api/zzd$zzd;,
        Lcom/google/android/gms/common/api/zzd$zzf;,
        Lcom/google/android/gms/common/api/zzd$zzg;,
        Lcom/google/android/gms/common/api/zzd$zze;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzCN:Ljava/util/concurrent/locks/Lock;

.field private volatile zzMA:Z

.field private zzMB:I

.field private zzMC:Z

.field private zzMD:I

.field private zzME:J

.field private zzMF:J

.field private final zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

.field zzMH:Landroid/content/BroadcastReceiver;

.field private final zzMI:Landroid/os/Bundle;

.field private final zzMJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzMK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzML:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

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

.field private zzMN:Z

.field private zzMO:Lcom/google/android/gms/internal/zzur;

.field private zzMP:I

.field private zzMQ:Z

.field private zzMR:Z

.field private zzMS:Lcom/google/android/gms/common/internal/zzq;

.field private zzMT:Z

.field private zzMU:Z

.field private final zzMV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/zze",
            "<*>;>;"
        }
    .end annotation
.end field

.field final zzMW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/zzd$zzg",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzMX:Lcom/google/android/gms/common/api/zzd$zze;

.field private final zzMY:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final zzMZ:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

.field private final zzMc:Landroid/os/Looper;

.field private final zzMt:Ljava/util/concurrent/locks/Condition;

.field private final zzMu:Lcom/google/android/gms/common/internal/zzl;

.field private final zzMv:I

.field final zzMw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/zzd$zzg",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzMx:Lcom/google/android/gms/common/ConnectionResult;

.field private zzMy:I

.field private volatile zzMz:I

.field private final zzNa:Lcom/google/android/gms/common/internal/zzl$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzb;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<+",
            "Lcom/google/android/gms/internal/zzur;",
            "Lcom/google/android/gms/internal/zzus;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMt:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMB:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMC:Z

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/common/api/zzd;->zzME:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMF:J

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMI:Landroid/os/Bundle;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMK:Ljava/util/Set;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzML:Ljava/util/Map;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMV:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMW:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/zzd$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzd$1;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMX:Lcom/google/android/gms/common/api/zzd$zze;

    new-instance v2, Lcom/google/android/gms/common/api/zzd$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzd$6;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMY:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v2, Lcom/google/android/gms/common/api/zzd$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzd$7;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMZ:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    new-instance v2, Lcom/google/android/gms/common/api/zzd$8;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/zzd$8;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzNa:Lcom/google/android/gms/common/internal/zzl$zza;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/common/internal/zzl;

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzd;->zzNa:Lcom/google/android/gms/common/internal/zzl$zza;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzd;->zzMc:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/zzd$zzc;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/common/api/zzd$zzc;-><init>(Lcom/google/android/gms/common/api/zzd;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMv:I

    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p8 .. p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/common/internal/zzf;->zziP()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMM:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMQ:Z

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMP:I

    const/4 v2, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v11, v2

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/common/api/Api;

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    :goto_3
    move v10, v2

    :goto_4
    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zzhT()Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/common/api/zzd;->zzMY:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-direct {p0, v9, v10}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/Api$zzb;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMZ:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    invoke-interface {v3, v2}, Lcom/google/android/gms/common/api/Api$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zzhT()Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zzb;->getPriority()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    :goto_5
    or-int/2addr v2, v11

    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$zza;->zzhc()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gms/common/api/zzd;->zzMQ:Z

    iget v3, p0, Lcom/google/android/gms/common/api/zzd;->zzMP:I

    if-ge v10, v3, :cond_2

    iput v10, p0, Lcom/google/android/gms/common/api/zzd;->zzMP:I

    :cond_2
    if-eqz v10, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzd;->zzMK:Ljava/util/Set;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/Api;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    move v11, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    if-eqz v11, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMQ:Z

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMQ:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->getSessionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/zzf;->zza(Ljava/lang/Integer;)V

    invoke-direct/range {p0 .. p4}, Lcom/google/android/gms/common/api/zzd;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzb;)V

    :cond_8
    return-void

    :cond_9
    move v10, v2

    goto :goto_4
.end method

.method private resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->zzil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private zzM(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzur;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzur;->zzsu()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzur;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMS:Lcom/google/android/gms/common/internal/zzq;

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/common/api/Api$zzb;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zza;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zza;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzd$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/common/api/zzd$9;-><init>(Lcom/google/android/gms/common/api/zzd;ILcom/google/android/gms/common/api/Api;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/internal/zzq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMS:Lcom/google/android/gms/common/internal/zzq;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<+",
            "Lcom/google/android/gms/internal/zzur;",
            "Lcom/google/android/gms/internal/zzus;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->zziU()Lcom/google/android/gms/internal/zzus;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/common/api/zzd$10;

    invoke-direct {v5, p0}, Lcom/google/android/gms/common/api/zzd$10;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    new-instance v6, Lcom/google/android/gms/common/api/zzd$11;

    invoke-direct {v6, p0}, Lcom/google/android/gms/common/api/zzd$11;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    move-object v0, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/Api$zzb;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzur;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMC:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zzM(Z)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zzao(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->zzil()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzh(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzim()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMN:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzg;Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzko;->zzQy:Lcom/google/android/gms/internal/zzkp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzkp;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/zzd$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/zzd$5;-><init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/api/zzg;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/api/zzd$zzg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zza;",
            ">(",
            "Lcom/google/android/gms/common/api/zzd$zzg",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/zzd$zzg;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMX:Lcom/google/android/gms/common/api/zzd$zze;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/zzd$zzg;->zza(Lcom/google/android/gms/common/api/zzd$zze;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->zzil()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/zzd$zzg;->zzk(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/zzd$zzg;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zza;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzML:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/zzd$zzg;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/zzd$zzg;->zzk(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/zzd$zzg;->zzb(Lcom/google/android/gms/common/api/Api$zza;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zzao(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzg;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzg;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/internal/zzaa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/internal/zzaa;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/internal/zzaa;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzjo()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    new-instance v1, Lcom/google/android/gms/common/api/zzd$12;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/zzd$12;-><init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/internal/zzaa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzd$zzc;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private zza(IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMy:I

    if-ge p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zzd;->zza(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/zzd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMA:Z

    return p1
.end method

.method private zzao(I)V
    .locals 6

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    if-eq v0, v3, :cond_c

    if-ne p1, v5, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzd$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzd$zzg;->zzhW()I

    move-result v4

    if-eq v4, v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzd$zzg;->cancel()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzd$zzg;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzd$zzg;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzd$zzg;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/google/android/gms/common/api/zzd$zzg;->zza(Lcom/google/android/gms/common/api/zzd$zze;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/zzd$zzg;->cancel()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zze;->clear()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMC:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_4
    return-void

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzML:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v3

    const/4 v4, 0x3

    iput v4, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    if-eqz v0, :cond_9

    if-ne p1, v5, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMt:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMN:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zza;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zza;->disconnect()V

    goto :goto_5

    :cond_a
    if-ne p1, v5, :cond_d

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zzM(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMN:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    if-eqz v3, :cond_c

    if-eq p1, v5, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->zzaJ(I)V

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMN:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_6
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/zzd;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMy:I

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/zzd;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMI:Landroid/os/Bundle;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    new-instance v1, Lcom/google/android/gms/common/api/zzd$13;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/zzd$13;-><init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzd$zzc;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/api/zzd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMR:Z

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzie()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMP:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMP:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/zzd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMT:Z

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/zzd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    new-instance v1, Lcom/google/android/gms/common/api/zzd$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/zzd$2;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzd$zzc;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/zzd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMU:Z

    return p1
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/zzd;)Lcom/google/android/gms/common/api/zzd$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/common/api/zzd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/zzd;->zzMN:Z

    return p1
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/api/zzd;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/zzd;->zzME:J

    return-wide v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/api/zzd;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMF:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/api/zzd;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMB:I

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/common/api/zzd;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    return v0
.end method

.method private zzie()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMD:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMD:I

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMD:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMB:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMQ:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMB:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzii()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzij()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzih()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzim()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMS:Lcom/google/android/gms/common/internal/zzq;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMU:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/common/internal/zzq;Z)V

    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/zzd;->zzM(Z)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMt:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzik()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMC:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lcom/google/android/gms/common/api/zzd;->zzMC:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zzao(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMI:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzl;->zzj(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMI:Landroid/os/Bundle;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private zzif()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    new-instance v1, Lcom/google/android/gms/common/api/zzd$zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/zzd$zzb;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/common/internal/zzt;)V

    return-void
.end method

.method private zzig()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMM:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmh;->zzi(Ljava/util/List;)[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private zzih()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMS:Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzig()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/zzd$zza;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/zzd$zza;-><init>(Lcom/google/android/gms/common/api/zzd;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzur;->zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;Lcom/google/android/gms/internal/zzuz;)V

    return-void
.end method

.method private zzii()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/zzd$zzc;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "This method must be run on the mHandlerForCallbacks thread"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMB:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMR:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMD:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzML:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zza;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMS:Lcom/google/android/gms/common/internal/zzq;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/Api$zza;->zza(Lcom/google/android/gms/common/internal/zzq;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private zzij()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMB:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMD:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzML:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzie()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zza;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMS:Lcom/google/android/gms/common/internal/zzq;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/Api$zza;->zzb(Lcom/google/android/gms/common/internal/zzq;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzik()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->zzil()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzd$zzg;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd$zzg;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private zzim()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMA:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMA:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzd$zzc;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzd$zzc;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMH:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMH:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMH:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/common/api/zzd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMN:Z

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/common/api/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->resume()V

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/common/api/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzim()V

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzML:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/common/api/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzif()V

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/common/api/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzii()V

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMK:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic zzq(Lcom/google/android/gms/common/api/zzd;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzr(Lcom/google/android/gms/common/api/zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzij()V

    return-void
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->connect()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMt:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzLr:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMt:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzLr:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_4
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/zzg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMc:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zzg;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/zzko;->zzGR:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzg;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/zzd$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/zzd$3;-><init>(Lcom/google/android/gms/common/api/zzd;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/zzg;)V

    new-instance v3, Lcom/google/android/gms/common/api/zzd$4;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/zzd$4;-><init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/api/zzg;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/zzko;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/zzd;->zzMG:Lcom/google/android/gms/common/api/zzd$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public final connect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMC:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMx:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMB:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMI:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMD:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzML:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMR:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMU:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMQ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMO:Lcom/google/android/gms/internal/zzur;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzur;->connect()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zza;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zza;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzim()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/zzd;->zzao(I)V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "GoogleApiClient:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mConnectionState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, " mResuming="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMA:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWaitingToDisconnect="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMC:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mWorkQueue.size()="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzd;->zzMW:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zza;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zza;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

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
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMc:Landroid/os/Looper;

    return-object v0
.end method

.method public final getSessionId()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isConnecting()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMz:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public final reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->connect()V

    return-void
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMv:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzh;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/zzh;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMv:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzh;->zzas(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMu:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zza;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zza;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zza;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/zza$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zza$zza;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMw:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/Api;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/Scope;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMM:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->zzio()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zza;",
            "T:",
            "Lcom/google/android/gms/common/api/zza$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/zzd;->zzil()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/zzd;->zzik()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd$zzg;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/zzd;->zzao(I)V

    goto :goto_1
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Api;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMJ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzhV()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zza;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/common/api/zze;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/zze",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/zze;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMc:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/zze;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzMV:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd;->zzCN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zzil()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd;->zzMA:Z

    return v0
.end method
