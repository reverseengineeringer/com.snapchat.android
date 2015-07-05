.class public Lcom/google/android/gms/internal/zzlo;
.super Ljava/lang/Object;


# static fields
.field private static final zzQc:Ljava/lang/Object;

.field private static zzRr:Lcom/google/android/gms/internal/zzlo;

.field private static final zzRw:Landroid/content/ComponentName;


# instance fields
.field private final zzRs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzRt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzRu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzRv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzRx:Lcom/google/android/gms/internal/zzlr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlo;->zzQc:Ljava/lang/Object;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzlo;->zzRw:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlo;->getLogLevel()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/zzlq;->zzRF:I

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRs:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRt:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRu:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRv:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRA:Lcom/google/android/gms/internal/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzki;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRs:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRB:Lcom/google/android/gms/internal/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzki;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRt:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRC:Lcom/google/android/gms/internal/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzki;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRu:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRD:Lcom/google/android/gms/internal/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzki;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRv:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/zzlr;

    const/16 v2, 0x400

    sget-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRE:Lcom/google/android/gms/internal/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzki;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzlr;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzlo;->zzRx:Lcom/google/android/gms/internal/zzlr;

    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method

.method private getLogLevel()I
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/common/internal/zze;->zzPq:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzki;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzki;->zzis()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRz:Lcom/google/android/gms/internal/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzki;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/zzlq;->zzRF:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v0, Lcom/google/android/gms/internal/zzlq;->zzRF:I

    goto :goto_0
.end method

.method private zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 20

    sget-boolean v2, Lcom/google/android/gms/common/internal/zze;->zzPq:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlo;->zzb(Landroid/content/ServiceConnection;)J

    move-result-wide v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzmf;->zzl(II)Ljava/lang/String;

    move-result-object v17

    const-string v2, "UNBIND"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DISCONNECT"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v9, Lcom/google/android/gms/internal/zzlm;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p5

    move-wide/from16 v18, v6

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/zzlm;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/zzlo;->zzRw:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlo;->zzb(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/internal/zzlm;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzmf;->zzR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v12, p5

    move-object/from16 v14, p3

    move-wide/from16 v18, v6

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/zzlm;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;JLjava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlo;->getLogLevel()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/zzlq;->zzRF:I

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlo;->zzRx:Lcom/google/android/gms/internal/zzlr;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "DISCONNECT"

    if-eq p6, v3, :cond_2

    const-string v3, "UNBIND"

    if-ne p6, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlo;->zzRx:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v2, p4, p5}, Lcom/google/android/gms/internal/zzlr;->zzr(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/zzlo;->zzb(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmf;->zzR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlo;->zzRs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlo;->zzRt:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlo;->zzRu:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlo;->zzRv:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/google/android/gms/internal/zzlq;->zzRJ:I

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo;->zzRx:Lcom/google/android/gms/internal/zzlr;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzlr;->zza(Ljava/lang/Long;)Ljava/lang/Long;

    move v0, v1

    goto :goto_0
.end method

.method private zzb(Landroid/content/ServiceConnection;)J
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static zzb(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "There are no handler of this intent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There are multiple handlers for this intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public static zzka()Lcom/google/android/gms/internal/zzlo;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzlo;->zzQc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzlo;->zzRr:Lcom/google/android/gms/internal/zzlo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzlo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlo;->zzRr:Lcom/google/android/gms/internal/zzlo;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzlo;->zzRr:Lcom/google/android/gms/internal/zzlo;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    const/4 v3, 0x0

    const-string v5, "UNBIND"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    const-string v5, "CONNECT"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 6

    const-string v5, "BIND"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    const/4 v3, 0x0

    const-string v5, "DISCONNECT"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
