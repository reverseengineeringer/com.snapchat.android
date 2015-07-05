.class public Lcom/google/android/gms/internal/zzgf;
.super Lcom/google/android/gms/internal/zzgb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private zzlD:Lcom/google/android/gms/internal/zzdr;

.field private zzsf:Lcom/google/android/gms/internal/zzdk;

.field private zzvW:Lcom/google/android/gms/internal/zzdi;

.field protected zzvX:Lcom/google/android/gms/internal/zzdo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzgc$zza;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/zzgb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzgc$zza;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgf;->zzlD:Lcom/google/android/gms/internal/zzdr;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhe$zza;->zzyt:Lcom/google/android/gms/internal/zzdk;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzsf:Lcom/google/android/gms/internal/zzdk;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzvM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzgb;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzvW:Lcom/google/android/gms/internal/zzdi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzvW:Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdi;->cancel()V

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

.method protected zzg(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzvM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzdi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgf;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgf;->zzlD:Lcom/google/android/gms/internal/zzdr;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzgf;->zzsf:Lcom/google/android/gms/internal/zzdk;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzdi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzdk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzvW:Lcom/google/android/gms/internal/zzdi;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzvW:Lcom/google/android/gms/internal/zzdi;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzdi;->zza(JJ)Lcom/google/android/gms/internal/zzdo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    iget v0, v0, Lcom/google/android/gms/internal/zzdo;->zzsK:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/zzgb$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected mediation result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    iget v2, v2, Lcom/google/android/gms/internal/zzdo;->zzsK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzgb$zza;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzgb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zzt(I)Lcom/google/android/gms/internal/zzhe;
    .locals 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgf;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    new-instance v2, Lcom/google/android/gms/internal/zzhe;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzgo;->zzwn:Lcom/google/android/gms/internal/zzax;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzgf;->zzmu:Lcom/google/android/gms/internal/zzic;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzgq;->zzst:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzgq;->zzsu:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzgq;->zzwK:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget v9, v9, Lcom/google/android/gms/internal/zzgq;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzgq;->zzsx:J

    iget-object v12, v6, Lcom/google/android/gms/internal/zzgo;->zzwq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/zzgq;->zzwI:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzdo;->zzsL:Lcom/google/android/gms/internal/zzdj;

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    iget-object v15, v15, Lcom/google/android/gms/internal/zzdo;->zzsM:Lcom/google/android/gms/internal/zzds;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdo;->zzsN:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzsf:Lcom/google/android/gms/internal/zzdk;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvX:Lcom/google/android/gms/internal/zzdo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdo;->zzsO:Lcom/google/android/gms/internal/zzdm;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwJ:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzlV:Lcom/google/android/gms/internal/zzba;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwH:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhe$zza;->zzyv:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwM:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvO:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgq;->zzwN:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgf;->zzvN:Lcom/google/android/gms/internal/zzhe$zza;

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

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_2
    const-class v16, Lcb;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method
