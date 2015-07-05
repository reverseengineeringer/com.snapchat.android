.class public Lcom/google/android/gms/internal/zzqf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqf$1;,
        Lcom/google/android/gms/internal/zzqf$zza;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final zzaoU:J

.field private static zzaoV:Lcom/google/android/gms/internal/zzqf;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzaoW:Ljava/lang/Runnable;

.field private zzaoX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaoY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznh:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzqf;->zzaoU:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzqf;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzqf$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Lcom/google/android/gms/internal/zzqf;Lcom/google/android/gms/internal/zzqf$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoW:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zznh:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqf;->zzaoX:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqf;->zzaoY:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqf;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqf;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf;->zzaoX:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static declared-synchronized zzab(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqf;
    .locals 3

    const-class v1, Lcom/google/android/gms/internal/zzqf;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzqf;->zzaoV:Lcom/google/android/gms/internal/zzqf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzqf;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzqf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->zzaoV:Lcom/google/android/gms/internal/zzqf;

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzqf;->zzaoV:Lcom/google/android/gms/internal/zzqf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zznh:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqf;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf;->zzaoY:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqf;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoX:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzqf;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoY:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public zzy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoX:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoX:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoY:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqf;->zzaoW:Ljava/lang/Runnable;

    sget-wide v4, Lcom/google/android/gms/internal/zzqf;->zzaoU:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoY:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->zzaoW:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqf;->zzaoW:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
