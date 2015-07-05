.class public Lcom/google/android/gms/internal/zzhf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhf$zza;
    }
.end annotation


# instance fields
.field private final zzmV:Lcom/google/android/gms/internal/zzhg;

.field private final zznh:Ljava/lang/Object;

.field private zzxJ:Z

.field private final zzyA:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzhf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzyB:Ljava/lang/String;

.field private final zzyC:Ljava/lang/String;

.field private zzyD:J

.field private zzyE:J

.field private zzyF:J

.field private zzyG:J

.field private zzyH:J

.field private zzyI:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyD:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyE:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhf;->zzxJ:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyF:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhf;->zzyG:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhf;->zzyB:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhf;->zzyC:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzyA:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaP()Lcom/google/android/gms/internal/zzhg;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzhf;-><init>(Lcom/google/android/gms/internal/zzhg;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhf;->zzyB:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhf;->zzyC:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzhf;->zzxJ:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhf;->zzyH:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhf;->zzyE:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhf;->zzyF:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhf;->zzyG:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhf;->zzyD:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzyA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhf$zza;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public zzdX()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyE:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyE:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhf;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->zzef()Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhh;->zzdX()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdY()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzhf$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhf$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhf$zza;->zzec()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyA:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyG:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyG:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->zzef()Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhh;->zzdY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhf;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdZ()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzyA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzyA:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhf$zza;->zzea()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhf$zza;->zzeb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhf;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzax;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyH:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhg;->zzef()Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyH:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzhh;->zzb(Lcom/google/android/gms/internal/zzax;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzj(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhf;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzk(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzhf;->zzyD:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhf;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzx(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyF:J

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyF:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyE:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhf;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzy(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhf;->zzyI:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhf;->zzxJ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzmV:Lcom/google/android/gms/internal/zzhg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhf;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
