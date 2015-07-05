.class public final Lcom/google/android/gms/internal/zzgw;
.super Lcom/google/android/gms/internal/zzgs$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field private static final zzmz:Ljava/lang/Object;

.field private static zzxf:Lcom/google/android/gms/internal/zzgw;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zznr:Lcom/google/android/gms/internal/zzdf;

.field private final zzxg:Lcom/google/android/gms/internal/zzhc;

.field private final zzxh:Lcom/google/android/gms/internal/zzdg;

.field private final zzxi:Lcom/google/android/gms/internal/zzbv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzgw;->zzmz:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;)V
    .locals 6

    const v4, 0x6c42d8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgs$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgw;->zzxg:Lcom/google/android/gms/internal/zzhc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgw;->zzxh:Lcom/google/android/gms/internal/zzdg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw;->zzxi:Lcom/google/android/gms/internal/zzbv;

    new-instance v0, Lcom/google/android/gms/internal/zzdf;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zzhy;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v4, v3}, Lcom/google/android/gms/internal/zzhy;-><init>(IIZ)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbv;->zzbV()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzgw$5;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzgw$5;-><init>(Lcom/google/android/gms/internal/zzgw;)V

    new-instance v5, Lcom/google/android/gms/internal/zzia$zzc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzia$zzc;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Ljava/lang/String;Lcom/google/android/gms/internal/zzia$zzd;Lcom/google/android/gms/internal/zzia$zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zznr:Lcom/google/android/gms/internal/zzdf;

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgq;
    .locals 17

    const-string v2, "Starting ad request from service."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaP()Lcom/google/android/gms/internal/zzhg;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgo;->zzlP:Lcom/google/android/gms/internal/zzhy;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzhg;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzca;->zzl(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/zzcf;

    const-string v2, "load_ad"

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzcf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcf;->zzcq()Lcom/google/android/gms/internal/zzce;

    move-result-object v16

    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/zzdg;->init()V

    new-instance v3, Lcom/google/android/gms/internal/zzhb;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzhb;-><init>(Landroid/content/Context;)V

    iget v2, v3, Lcom/google/android/gms/internal/zzhb;->zzyj:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    const-string v2, "Device is offline."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzgq;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gms/internal/zzgo;->versionCode:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_1

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgo;->zzwF:Ljava/lang/String;

    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/zzgy;

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v2, v6}, Lcom/google/android/gms/internal/zzgy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgo;->zzwn:Lcom/google/android/gms/internal/zzax;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzax;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgo;->zzwn:Lcom/google/android/gms/internal/zzax;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzax;->extras:Landroid/os/Bundle;

    const-string v7, "_ad"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v1, v6}, Lcom/google/android/gms/internal/zzgx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Ljava/lang/String;)Lcom/google/android/gms/internal/zzgq;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0xfa

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v7}, Lcom/google/android/gms/internal/zzdg;->zzb(J)Landroid/location/Location;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v3, v6, v1}, Lcom/google/android/gms/internal/zzgx;->zza(Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzhb;Landroid/location/Location;Lcom/google/android/gms/internal/zzbv;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p5

    iget v6, v0, Lcom/google/android/gms/internal/zzgo;->versionCode:I

    const/4 v7, 0x7

    if-ge v6, v7, :cond_3

    :try_start_0
    const-string v6, "request_id"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/zzgq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "arc"

    aput-object v6, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcf;->zzcq()Lcom/google/android/gms/internal/zzce;

    move-result-object v6

    sget-object v2, Lcom/google/android/gms/internal/zzca;->zzqm:Lcom/google/android/gms/internal/zzbx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbx;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v8, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzgw$1;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzgw$1;-><init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzgy;->zzdS()Ljava/util/concurrent/Future;

    move-result-object v2

    const-wide/16 v6, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6, v7, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzha;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_6

    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/zzgq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v3, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgw$3;

    move-object/from16 v0, p1

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/zzgw$3;-><init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzdf;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/zzgw$2;

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/zzgw$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;Ljava/lang/String;Lcom/google/android/gms/internal/zzbv;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/zzgq;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v3, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgw$3;

    move-object/from16 v0, p1

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/zzgw$3;-><init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzdf;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzha;->getErrorCode()I

    move-result v3

    const/4 v6, -0x2

    if-eq v3, v6, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/zzgq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzha;->getErrorCode()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v2, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgw$3;

    move-object/from16 v0, p1

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/zzgw$3;-><init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzdf;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v3

    goto/16 :goto_0

    :cond_7
    :try_start_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcf;->zzcu()Lcom/google/android/gms/internal/zzce;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcf;->zzcu()Lcom/google/android/gms/internal/zzce;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "rur"

    aput-object v8, v6, v7

    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzha;->zzdW()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgo;->zzwo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzhc;->zzR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcf;->zzcq()Lcom/google/android/gms/internal/zzce;

    move-result-object v6

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgo;->zzlP:Lcom/google/android/gms/internal/zzhy;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzhy;->zzzH:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzha;->getUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v3, v2}, Lcom/google/android/gms/internal/zzgw;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgq;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ufe"

    aput-object v8, v3, v7

    invoke-virtual {v5, v6, v3}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tts"

    aput-object v7, v3, v6

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/internal/zzhk;->zzeg()Lcom/google/android/gms/internal/zzcc;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/zzhk;->zzeg()Lcom/google/android/gms/internal/zzcc;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzcc;->zza(Lcom/google/android/gms/internal/zzcf;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgw$3;

    move-object/from16 v0, p1

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/zzgw$3;-><init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzdf;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgw$3;

    move-object/from16 v0, p1

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/zzgw$3;-><init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzdf;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v2

    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgq;
    .locals 10

    const/16 v9, 0x12c

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/zzgz;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzgz;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdRequestServiceImpl: Sending request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p0, p1, v7, v0}, Lcom/google/android/gms/internal/zzho;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "x-afma-drt-cookie"

    invoke-virtual {v0, v6, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzha;->zzdV()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzha;->zzdV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const/16 v8, 0xc8

    if-lt v6, v8, :cond_2

    if-ge v6, v9, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v2

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/zzho;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2, v6}, Lcom/google/android/gms/internal/zzgw;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v3, v1, v7, v2}, Lcom/google/android/gms/internal/zzgz;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzgz;->zzi(J)Lcom/google/android/gms/internal/zzgq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v2, v7, v8, v6}, Lcom/google/android/gms/internal/zzgw;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v6, v9, :cond_4

    const/16 v2, 0x190

    if-ge v6, v2, :cond_4

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "No location header to follow redirect."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzgq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x5

    if-le v1, v6, :cond_5

    const-string v1, "Too many redirects."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzgq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_4
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received error HTTP response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzgq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_5
    :try_start_9
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/zzgz;->zzh(Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while connecting to ad server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzgq;-><init>(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;)Lcom/google/android/gms/internal/zzgw;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/zzgw;->zzmz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzgw;->zzxf:Lcom/google/android/gms/internal/zzgw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzgw;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzgw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;)V

    sput-object v0, Lcom/google/android/gms/internal/zzgw;->zzxf:Lcom/google/android/gms/internal/zzgw;

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzgw;->zzxf:Lcom/google/android/gms/internal/zzgw;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;)Lcom/google/android/gms/internal/zzid$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzgw$4;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/zzgw$4;-><init>(Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzA(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "      "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    :cond_2
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Response Code:\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;)Lcom/google/android/gms/internal/zzid$zza;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzgw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;)Lcom/google/android/gms/internal/zzid$zza;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgq;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgo;->zzlP:Lcom/google/android/gms/internal/zzhy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhy;->zzzH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzhk;->zzd(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw;->zznr:Lcom/google/android/gms/internal/zzdf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgw;->zzxi:Lcom/google/android/gms/internal/zzbv;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgw;->zzxh:Lcom/google/android/gms/internal/zzdg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgw;->zzxg:Lcom/google/android/gms/internal/zzhc;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgq;

    move-result-object v0

    return-object v0
.end method
