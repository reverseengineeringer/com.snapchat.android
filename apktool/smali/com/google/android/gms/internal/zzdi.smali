.class public final Lcom/google/android/gms/internal/zzdi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzlD:Lcom/google/android/gms/internal/zzdr;

.field private final zznh:Ljava/lang/Object;

.field private final zzse:Lcom/google/android/gms/internal/zzgo;

.field private final zzsf:Lcom/google/android/gms/internal/zzdk;

.field private zzsg:Z

.field private zzsh:Lcom/google/android/gms/internal/zzdn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdi;->zznh:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdi;->zzsg:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdi;->zzse:Lcom/google/android/gms/internal/zzgo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdi;->zzlD:Lcom/google/android/gms/internal/zzdr;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdi;->zzsf:Lcom/google/android/gms/internal/zzdk;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdi;->zznh:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdi;->zzsg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdi;->zzsh:Lcom/google/android/gms/internal/zzdn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdi;->zzsh:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->cancel()V

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

.method public final zza(JJ)Lcom/google/android/gms/internal/zzdo;
    .locals 17

    const-string v4, "Starting mediation."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzdi;->zzsf:Lcom/google/android/gms/internal/zzdk;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzdk;->zzsr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzdj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying mediation network: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/google/android/gms/internal/zzdj;->zzsl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/zzdj;->zzsm:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzdi;->zznh:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzdi;->zzsg:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/zzdo;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzdo;-><init>(I)V

    monitor-exit v15

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/zzdn;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzdi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzdi;->zzlD:Lcom/google/android/gms/internal/zzdr;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzdi;->zzsf:Lcom/google/android/gms/internal/zzdk;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzdi;->zzse:Lcom/google/android/gms/internal/zzgo;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzgo;->zzwn:Lcom/google/android/gms/internal/zzax;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/zzdi;->zzse:Lcom/google/android/gms/internal/zzgo;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzgo;->zzlV:Lcom/google/android/gms/internal/zzba;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzdi;->zzse:Lcom/google/android/gms/internal/zzgo;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzgo;->zzlP:Lcom/google/android/gms/internal/zzhy;

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/zzdn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzba;Lcom/google/android/gms/internal/zzhy;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/zzdi;->zzsh:Lcom/google/android/gms/internal/zzdn;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzdi;->zzsh:Lcom/google/android/gms/internal/zzdn;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdn;->zzb(JJ)Lcom/google/android/gms/internal/zzdo;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/zzdo;->zzsK:I

    if-nez v5, :cond_3

    const-string v5, "Adapter succeeded."

    invoke-static {v5}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    iget-object v5, v4, Lcom/google/android/gms/internal/zzdo;->zzsM:Lcom/google/android/gms/internal/zzds;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzdi$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/zzdi$1;-><init>(Lcom/google/android/gms/internal/zzdi;Lcom/google/android/gms/internal/zzdo;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/zzdo;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzdo;-><init>(I)V

    goto :goto_1
.end method
