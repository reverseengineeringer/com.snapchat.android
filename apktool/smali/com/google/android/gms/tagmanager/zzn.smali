.class Lcom/google/android/gms/tagmanager/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzn$zzb;,
        Lcom/google/android/gms/tagmanager/zzn$zza;
    }
.end annotation


# instance fields
.field private zzHb:Lcom/google/android/gms/common/api/Status;

.field private final zzMc:Landroid/os/Looper;

.field private zzSW:Z

.field private zzaxE:Lcom/google/android/gms/tagmanager/Container;

.field private zzaxF:Lcom/google/android/gms/tagmanager/Container;

.field private zzaxG:Lcom/google/android/gms/tagmanager/zzn$zzb;

.field private zzaxH:Lcom/google/android/gms/tagmanager/zzn$zza;

.field private zzaxI:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzn;->zzHb:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzMc:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzn$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxI:Lcom/google/android/gms/tagmanager/TagManager;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzn;->zzMc:Landroid/os/Looper;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxE:Lcom/google/android/gms/tagmanager/Container;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxH:Lcom/google/android/gms/tagmanager/zzn$zza;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzHb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zza(Lcom/google/android/gms/tagmanager/zzn;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0
.end method

.method private zzsL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxG:Lcom/google/android/gms/tagmanager/zzn$zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxG:Lcom/google/android/gms/tagmanager/zzn$zzb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxF:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/Container;->zzsI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzn$zzb;->zzcR(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getContainer()Lcom/google/android/gms/tagmanager/Container;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    if-eqz v1, :cond_0

    const-string v1, "ContainerHolder is released."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxF:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxF:Lcom/google/android/gms/tagmanager/Container;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxE:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxF:Lcom/google/android/gms/tagmanager/Container;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxE:Lcom/google/android/gms/tagmanager/Container;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    if-eqz v0, :cond_0

    const-string v0, "getContainerId called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxE:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->getContainerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzHb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public declared-synchronized refresh()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    if-eqz v0, :cond_0

    const-string v0, "Refreshing a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxH:Lcom/google/android/gms/tagmanager/zzn$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzn$zza;->zzsM()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    if-eqz v0, :cond_0

    const-string v0, "Releasing a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxI:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzb(Lcom/google/android/gms/tagmanager/zzn;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxE:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxE:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxF:Lcom/google/android/gms/tagmanager/Container;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxH:Lcom/google/android/gms/tagmanager/zzn$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxG:Lcom/google/android/gms/tagmanager/zzn$zzb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContainerAvailableListener(Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    if-eqz v0, :cond_1

    const-string v0, "ContainerHolder is released."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxG:Lcom/google/android/gms/tagmanager/zzn$zzb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzn$zzb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzn;->zzMc:Landroid/os/Looper;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/tagmanager/zzn$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzn;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxG:Lcom/google/android/gms/tagmanager/zzn$zzb;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxF:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzn;->zzsL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/tagmanager/Container;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string v0, "Unexpected null container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxF:Lcom/google/android/gms/tagmanager/Container;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzn;->zzsL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized zzcO(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxE:Lcom/google/android/gms/tagmanager/Container;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->zzcO(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method zzcQ(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxH:Lcom/google/android/gms/tagmanager/zzn$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzn$zza;->zzcQ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method zzsK()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzSW:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzn;->zzaxH:Lcom/google/android/gms/tagmanager/zzn$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzn$zza;->zzsK()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
