.class public abstract Lcom/google/android/gms/internal/zzgb;
.super Lcom/google/android/gms/internal/zzhl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgb$zza;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzmu:Lcom/google/android/gms/internal/zzic;

.field protected final zznh:Ljava/lang/Object;

.field protected final zzvL:Lcom/google/android/gms/internal/zzgc$zza;

.field protected final zzvM:Ljava/lang/Object;

.field protected final zzvN:Lcom/google/android/gms/internal/zzhe$zza;

.field protected zzvO:Lcom/google/android/gms/internal/zzgq;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzgc$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zznh:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzvM:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgb;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgb;->zzmu:Lcom/google/android/gms/internal/zzic;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgb;->zzvL:Lcom/google/android/gms/internal/zzgc$zza;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzdw()V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgb;->zznh:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "AdRendererBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/zzgb;->zzg(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzgb$zza; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgb;->zzt(I)Lcom/google/android/gms/internal/zzhe;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgb$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzgb$2;-><init>(Lcom/google/android/gms/internal/zzgb;Lcom/google/android/gms/internal/zzhe;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb$zza;->getErrorCode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgb$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzgb$1;-><init>(Lcom/google/android/gms/internal/zzgb;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzgq;->zzsx:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/zzgq;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected abstract zzg(J)V
.end method

.method protected zzh(Lcom/google/android/gms/internal/zzhe;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgb;->zzvL:Lcom/google/android/gms/internal/zzgc$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzgc$zza;->zza(Lcom/google/android/gms/internal/zzhe;)V

    return-void
.end method

.method protected zzt(I)Lcom/google/android/gms/internal/zzhe;
    .locals 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgb;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    new-instance v2, Lcom/google/android/gms/internal/zzhe;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzgo;->zzwn:Lcom/google/android/gms/internal/zzax;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzgb;->zzmu:Lcom/google/android/gms/internal/zzic;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzgq;->zzst:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzgq;->zzsu:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzgq;->zzwK:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget v9, v9, Lcom/google/android/gms/internal/zzgq;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzgq;->zzsx:J

    iget-object v12, v6, Lcom/google/android/gms/internal/zzgo;->zzwq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/zzgq;->zzwI:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwJ:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzlV:Lcom/google/android/gms/internal/zzba;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwH:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyv:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwM:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwN:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgb;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzys:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/zzgo;->zzwD:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/internal/zzhe;-><init>(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzic;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdm;JLcom/google/android/gms/internal/zzba;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzcn$zza;Ljava/lang/String;)V

    return-object v2
.end method
