.class public final Lcom/google/android/gms/internal/zzdn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdo$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzlD:Lcom/google/android/gms/internal/zzdr;

.field private final zzmH:Lcom/google/android/gms/internal/zzax;

.field private final zznh:Ljava/lang/Object;

.field private final zznl:Lcom/google/android/gms/internal/zzhy;

.field private final zzsC:Ljava/lang/String;

.field private final zzsD:J

.field private final zzsE:Lcom/google/android/gms/internal/zzdj;

.field private final zzsF:Lcom/google/android/gms/internal/zzba;

.field private zzsG:Lcom/google/android/gms/internal/zzds;

.field private zzsH:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzdr;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzba;Lcom/google/android/gms/internal/zzhy;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdn;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdn;->zzlD:Lcom/google/android/gms/internal/zzdr;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdn;->zzcK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsC:Ljava/lang/String;

    :goto_0
    iget-wide v0, p4, Lcom/google/android/gms/internal/zzdk;->zzss:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p4, Lcom/google/android/gms/internal/zzdk;->zzss:J

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsD:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzdn;->zzmH:Lcom/google/android/gms/internal/zzax;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdn;->zzsF:Lcom/google/android/gms/internal/zzba;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzdn;->zznl:Lcom/google/android/gms/internal/zzhy;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzdn;->zzsC:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdn;Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzds;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdn;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    return-object v0
.end method

.method private zza(JJJJ)V
    .locals 3

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/zzdn;->zzb(JJJJ)V

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/internal/zzdm;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zznl:Lcom/google/android/gms/internal/zzhy;

    iget v0, v0, Lcom/google/android/gms/internal/zzhy;->zzzJ:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsF:Lcom/google/android/gms/internal/zzba;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzba;->zzpb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn;->zzmH:Lcom/google/android/gms/internal/zzax;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzdj;->zzsq:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzds;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Lcom/google/android/gms/internal/zzdt;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn;->zzsF:Lcom/google/android/gms/internal/zzba;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdn;->zzmH:Lcom/google/android/gms/internal/zzax;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzdj;->zzsq:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzds;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzba;Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Lcom/google/android/gms/internal/zzdt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not request ad from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdn;->zzm(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsF:Lcom/google/android/gms/internal/zzba;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzba;->zzpb:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn;->zzmH:Lcom/google/android/gms/internal/zzax;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzdj;->zzsq:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzdj;->zzsk:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzds;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdt;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn;->zzsF:Lcom/google/android/gms/internal/zzba;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdn;->zzmH:Lcom/google/android/gms/internal/zzax;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzdj;->zzsq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzdj;->zzsk:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/zzds;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzba;Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdt;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdn;Lcom/google/android/gms/internal/zzdm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdn;->zza(Lcom/google/android/gms/internal/zzdm;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdn;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    return v0
.end method

.method private zzb(JJJJ)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p1

    sub-long v2, p3, v2

    sub-long/2addr v0, p5

    sub-long v0, p7, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    :cond_0
    const-string v0, "Timed out waiting for adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdn;)Lcom/google/android/gms/internal/zzds;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdn;->zzcL()Lcom/google/android/gms/internal/zzds;

    move-result-object v0

    return-object v0
.end method

.method private zzcK()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdj;->zzso:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzlD:Lcom/google/android/gms/internal/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdj;->zzso:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdr;->zzC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Fail to determine the custom event\'s version, assuming the old one."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    goto :goto_0
.end method

.method private zzcL()Lcom/google/android/gms/internal/zzds;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instantiating mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zzsC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzlD:Lcom/google/android/gms/internal/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zzsC:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdr;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/zzds;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not instantiate mediation adapter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn;->zzsC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdn;)Lcom/google/android/gms/internal/zzds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzds;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzb(JJ)Lcom/google/android/gms/internal/zzdo;
    .locals 13

    iget-object v10, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v11, Lcom/google/android/gms/internal/zzdm;

    invoke-direct {v11}, Lcom/google/android/gms/internal/zzdm;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdn$1;

    invoke-direct {v1, p0, v11}, Lcom/google/android/gms/internal/zzdn$1;-><init>(Lcom/google/android/gms/internal/zzdn;Lcom/google/android/gms/internal/zzdm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzdn;->zzsD:J

    move-object v1, p0

    move-wide v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzdn;->zza(JJJJ)V

    new-instance v0, Lcom/google/android/gms/internal/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zzsE:Lcom/google/android/gms/internal/zzdj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdn;->zzsG:Lcom/google/android/gms/internal/zzds;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdn;->zzsC:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdo;-><init>(Lcom/google/android/gms/internal/zzdj;Lcom/google/android/gms/internal/zzds;Ljava/lang/String;Lcom/google/android/gms/internal/zzdm;I)V

    monitor-exit v10

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzm(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzdn;->zzsH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdn;->zznh:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
