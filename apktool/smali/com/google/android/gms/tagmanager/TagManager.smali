.class public Lcom/google/android/gms/tagmanager/TagManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/TagManager$4;,
        Lcom/google/android/gms/tagmanager/TagManager$zza;
    }
.end annotation


# static fields
.field private static zzaAS:Lcom/google/android/gms/tagmanager/TagManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

.field private final zzaAQ:Lcom/google/android/gms/tagmanager/zzcs;

.field private final zzaAR:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/android/gms/tagmanager/zzn;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzazO:Lcom/google/android/gms/tagmanager/zzr;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzcs;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAQ:Lcom/google/android/gms/tagmanager/zzcs;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAR:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$1;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzd;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/zzd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/TagManager;->zztT()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;
    .locals 5

    const-class v1, Lcom/google/android/gms/tagmanager/TagManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAS:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/TagManager$2;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/TagManager$2;-><init>()V

    new-instance v2, Lcom/google/android/gms/tagmanager/zzv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/tagmanager/TagManager;

    new-instance v4, Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$zzc;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzct;->zztR()Lcom/google/android/gms/tagmanager/zzct;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/google/android/gms/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzcs;)V

    sput-object v3, Lcom/google/android/gms/tagmanager/TagManager;->zzaAS:Lcom/google/android/gms/tagmanager/TagManager;

    :cond_1
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAS:Lcom/google/android/gms/tagmanager/TagManager;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/TagManager;->zzdk(Ljava/lang/String;)V

    return-void
.end method

.method private zzdk(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAR:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzn;->zzcO(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zztT()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$3;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAQ:Lcom/google/android/gms/tagmanager/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcs;->dispatch()V

    return-void
.end method

.method public getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsN()V

    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsN()V

    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsP()V

    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsP()V

    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsO()V

    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsO()V

    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->setLogLevel(I)V

    return-void

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method zza(Lcom/google/android/gms/tagmanager/zzn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAR:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method zzb(Lcom/google/android/gms/tagmanager/zzn;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAR:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzc(Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAP:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/tagmanager/zzo;->load(Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized zzl(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzca;->zztx()Lcom/google/android/gms/tagmanager/zzca;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/zzca;->zzl(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzca;->getContainerId()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$4;->zzaAU:[I

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzca;->zzty()Lcom/google/android/gms/tagmanager/zzca$zza;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzca$zza;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAR:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzn;->getContainerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tagmanager/zzn;->zzcQ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzn;->refresh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzaAR:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzn;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzca;->zztz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/zzn;->zzcQ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzn;->refresh()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzn;->zzsK()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/zzn;->zzcQ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzn;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
