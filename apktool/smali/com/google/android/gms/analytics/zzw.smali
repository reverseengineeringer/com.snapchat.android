.class Lcom/google/android/gms/analytics/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzak;
.implements Lcom/google/android/gms/analytics/zzc$zzb;
.implements Lcom/google/android/gms/analytics/zzc$zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/zzw$2;,
        Lcom/google/android/gms/analytics/zzw$zzd;,
        Lcom/google/android/gms/analytics/zzw$zzb;,
        Lcom/google/android/gms/analytics/zzw$zze;,
        Lcom/google/android/gms/analytics/zzw$zzc;,
        Lcom/google/android/gms/analytics/zzw$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzBR:Lcom/google/android/gms/analytics/zzd;

.field private final zzBS:Lcom/google/android/gms/analytics/zzf;

.field private zzBV:Z

.field private volatile zzCh:J

.field private volatile zzCi:Lcom/google/android/gms/analytics/zzw$zza;

.field private volatile zzCj:Lcom/google/android/gms/analytics/zzb;

.field private zzCk:Lcom/google/android/gms/analytics/zzd;

.field private final zzCl:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzCm:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/analytics/zzw$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzCn:I

.field private volatile zzCo:Ljava/util/Timer;

.field private volatile zzCp:Ljava/util/Timer;

.field private volatile zzCq:Ljava/util/Timer;

.field private zzCr:Z

.field private zzCs:Z

.field private zzCt:Z

.field private zzCu:J

.field private zzmW:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/zzf;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/zzw;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/zzf;Lcom/google/android/gms/analytics/zzd;Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/zzf;Lcom/google/android/gms/analytics/zzd;Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    iput-object p3, p0, Lcom/google/android/gms/analytics/zzw;->zzCk:Lcom/google/android/gms/analytics/zzd;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzw;->zzBS:Lcom/google/android/gms/analytics/zzf;

    iput-object p4, p0, Lcom/google/android/gms/analytics/zzw;->zzCl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCn:I

    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCD:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzw;->zzG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCu:J

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/zzlx;->zzkc()Lcom/google/android/gms/internal/zzlv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzmW:Lcom/google/android/gms/internal/zzlv;

    return-void

    :cond_0
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCu:J

    goto :goto_0
.end method

.method private static zzG(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zza(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/zzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfN()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/zzw;)Lcom/google/android/gms/analytics/zzw$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/analytics/zzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfP()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/analytics/zzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfQ()V

    return-void
.end method

.method private declared-synchronized zzdJ()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    sget-object v1, Lcom/google/android/gms/analytics/zzw$zza;->zzCy:Lcom/google/android/gms/analytics/zzw$zza;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCC:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzb;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zze(Lcom/google/android/gms/analytics/zzw;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/analytics/zzw;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCh:J

    return-wide v0
.end method

.method private zzfL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCo:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzw;->zza(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCo:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCp:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzw;->zza(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCp:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCq:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzw;->zza(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCq:Ljava/util/Timer;

    return-void
.end method

.method private declared-synchronized zzfN()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzw;->zzBS:Lcom/google/android/gms/analytics/zzf;

    invoke-interface {v3}, Lcom/google/android/gms/analytics/zzf;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzBS:Lcom/google/android/gms/analytics/zzf;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/zzf;->zzfi()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/analytics/zzw$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/analytics/zzw$1;-><init>(Lcom/google/android/gms/analytics/zzw;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCr:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzw;->zzfa()V

    :cond_2
    sget-object v2, Lcom/google/android/gms/analytics/zzw$2;->zzCw:[I

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/zzw$zza;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/zzw$zzd;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending hit to store  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzBR:Lcom/google/android/gms/analytics/zzd;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->zzfS()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->zzfT()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->zzfU()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/zzd;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_2
    :try_start_2
    const-string v2, "Blocked. Dropping hits."

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/zzw;->zzBV:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfO()V

    goto :goto_0

    :goto_2
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/zzw$zzd;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending hit to service   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->zzfS()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->zzfT()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/zzw$zzd;->zzfU()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v2, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlv;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCh:J

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "Need to reconnect"

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfQ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private zzfO()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzBR:Lcom/google/android/gms/analytics/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzd;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzBV:Z

    return-void
.end method

.method private declared-synchronized zzfP()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    sget-object v1, Lcom/google/android/gms/analytics/zzw$zza;->zzCz:Lcom/google/android/gms/analytics/zzw$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzw;->zzG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCA:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzb;->disconnect()V

    const-string v0, "Attempted to fall back to local store from service."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfL()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCk:Lcom/google/android/gms/analytics/zzd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCk:Lcom/google/android/gms/analytics/zzd;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzBR:Lcom/google/android/gms/analytics/zzd;

    :goto_1
    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCz:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfN()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/analytics/zzv;->zzfE()Lcom/google/android/gms/analytics/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzw;->zzBS:Lcom/google/android/gms/analytics/zzf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/zzv;->zza(Landroid/content/Context;Lcom/google/android/gms/analytics/zzf;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzv;->zzE(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzBR:Lcom/google/android/gms/analytics/zzd;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized zzfQ()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCt:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    sget-object v1, Lcom/google/android/gms/analytics/zzw$zza;->zzCz:Lcom/google/android/gms/analytics/zzw$zza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCn:I

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCp:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzw;->zza(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCx:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCp:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCp:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/zzw$zzc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/zzw$zzc;-><init>(Lcom/google/android/gms/analytics/zzw;Lcom/google/android/gms/analytics/zzw$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzb;->connect()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfP()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfP()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private zzfR()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCo:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzw;->zza(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCo:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCo:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCo:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/zzw$zze;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/zzw$zze;-><init>(Lcom/google/android/gms/analytics/zzw;Lcom/google/android/gms/analytics/zzw$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/analytics/zzw;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCu:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/analytics/zzw;)Lcom/google/android/gms/internal/zzlv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzmW:Lcom/google/android/gms/internal/zzlv;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/analytics/zzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzdJ()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/analytics/zzw;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCq:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/zzw$2;->zzCw:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzw$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzBV:Z

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfO()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized onConnected()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCp:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzw;->zza(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCp:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCn:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCy:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCs:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzdJ()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfN()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCq:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzw;->zza(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCq:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCq:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCq:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/zzw$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/zzw$zzb;-><init>(Lcom/google/android/gms/analytics/zzw;Lcom/google/android/gms/analytics/zzw$1;)V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/zzw;->zzCu:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisconnected()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    sget-object v1, Lcom/google/android/gms/analytics/zzw$zza;->zzCA:Lcom/google/android/gms/analytics/zzw$zza;

    if-ne v0, v1, :cond_0

    const-string v0, "Service blocked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    sget-object v1, Lcom/google/android/gms/analytics/zzw$zza;->zzCC:Lcom/google/android/gms/analytics/zzw$zza;

    if-ne v0, v1, :cond_1

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfL()V

    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCD:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCB:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    iget v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCn:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfR()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfP()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized zza(ILandroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/zzw$zza;->zzCB:Lcom/google/android/gms/analytics/zzw$zza;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    iget v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCn:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfR()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzb(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzik;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    new-instance v0, Lcom/google/android/gms/analytics/zzw$zzd;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/zzw$zzd;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfN()V

    return-void
.end method

.method public zzfM()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/analytics/zzc;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzw;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/analytics/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/zzc$zzb;Lcom/google/android/gms/analytics/zzc$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzfQ()V

    goto :goto_0
.end method

.method public zzfa()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "clearHits called"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, Lcom/google/android/gms/analytics/zzw$2;->zzCw:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzw$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCr:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzBR:Lcom/google/android/gms/analytics/zzd;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/analytics/zzd;->zzl(J)V

    iput-boolean v4, p0, Lcom/google/android/gms/analytics/zzw;->zzCr:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCj:Lcom/google/android/gms/analytics/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzb;->zzfa()V

    iput-boolean v4, p0, Lcom/google/android/gms/analytics/zzw;->zzCr:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized zzfh()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCt:Z

    sget-object v0, Lcom/google/android/gms/analytics/zzw$2;->zzCw:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzw;->zzCi:Lcom/google/android/gms/analytics/zzw$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzw$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzw;->zzdJ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzw;->zzCs:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
