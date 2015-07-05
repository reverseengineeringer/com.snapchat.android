.class public Lcom/google/android/gms/internal/zzgg;
.super Lcom/google/android/gms/internal/zzhl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zznh:Ljava/lang/Object;

.field private final zzvL:Lcom/google/android/gms/internal/zzgc$zza;

.field private final zzvN:Lcom/google/android/gms/internal/zzhe$zza;

.field private final zzvO:Lcom/google/android/gms/internal/zzgq;

.field private final zzvY:Lcom/google/android/gms/internal/zzgt;

.field private zzvZ:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzhe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzt;Lcom/google/android/gms/internal/zzai;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzgc$zza;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzgt;

    new-instance v4, Lcom/google/android/gms/internal/zzht;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzht;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzt;Lcom/google/android/gms/internal/zzai;Lcom/google/android/gms/internal/zzht;Lcom/google/android/gms/internal/zzhe$zza;)V

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/zzgg;-><init>(Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzgc$zza;Lcom/google/android/gms/internal/zzgt;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzgc$zza;Lcom/google/android/gms/internal/zzgt;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zznh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgg;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgg;->zzvL:Lcom/google/android/gms/internal/zzgc$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgg;->zzvY:Lcom/google/android/gms/internal/zzgt;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgg;)Lcom/google/android/gms/internal/zzgc$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzvL:Lcom/google/android/gms/internal/zzgc$zza;

    return-object v0
.end method

.method private zzu(I)Lcom/google/android/gms/internal/zzhe;
    .locals 32

    new-instance v2, Lcom/google/android/gms/internal/zzhe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgg;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzgo;->zzwn:Lcom/google/android/gms/internal/zzax;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget v9, v6, Lcom/google/android/gms/internal/zzgq;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-wide v10, v6, Lcom/google/android/gms/internal/zzgq;->zzsx:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iget-object v12, v6, Lcom/google/android/gms/internal/zzgo;->zzwq:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzgq;->zzwJ:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhe$zza;->zzlV:Lcom/google/android/gms/internal/zzba;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzgq;->zzwH:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzhe$zza;->zzyv:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzgq;->zzwM:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzgq;->zzwN:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhe$zza;->zzys:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgg;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzgo;->zzwD:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/internal/zzhe;-><init>(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzic;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdm;JLcom/google/android/gms/internal/zzba;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzcn$zza;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public onStop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzvZ:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzvZ:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

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

.method public zzdw()V
    .locals 8

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzgg;->zznh:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzvY:Lcom/google/android/gms/internal/zzgt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhn;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzvZ:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzvZ:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhe;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzgg$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzgg$1;-><init>(Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/internal/zzhe;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v0

    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    const/4 v0, 0x2

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzgg;->zzu(I)Lcom/google/android/gms/internal/zzhe;

    move-result-object v0

    goto :goto_1
.end method
