.class public Lcom/google/android/gms/internal/zzdf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdf$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zznh:Ljava/lang/Object;

.field private final zznl:Lcom/google/android/gms/internal/zzhy;

.field private final zzrR:Ljava/lang/String;

.field private final zzrS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzrT:Lcom/google/android/gms/internal/zzia$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzia$zzd",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;"
        }
    .end annotation
.end field

.field private zzrU:Lcom/google/android/gms/internal/zzia$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzia$zzd",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;"
        }
    .end annotation
.end field

.field private zzrV:Lcom/google/android/gms/internal/zzia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;"
        }
    .end annotation
.end field

.field private zzrW:Lcom/google/android/gms/internal/zzah;

.field private zzrX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zznh:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrX:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdf;->zzrR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdf;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdf;->zznl:Lcom/google/android/gms/internal/zzhy;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrS:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/google/android/gms/internal/zzia$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzia$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrT:Lcom/google/android/gms/internal/zzia$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzia$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzia$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrU:Lcom/google/android/gms/internal/zzia$zzd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Ljava/lang/String;Lcom/google/android/gms/internal/zzia$zzd;Lcom/google/android/gms/internal/zzia$zzd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzhy;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzia$zzd",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;",
            "Lcom/google/android/gms/internal/zzia$zzd",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzdf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdf;->zzrT:Lcom/google/android/gms/internal/zzia$zzd;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdf;->zzrU:Lcom/google/android/gms/internal/zzia$zzd;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdf;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdf;->zzrX:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/internal/zzia;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zznh:Ljava/lang/Object;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzia;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrX:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdf;->zznl:Lcom/google/android/gms/internal/zzhy;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzdf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;)Lcom/google/android/gms/internal/zzah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrW:Lcom/google/android/gms/internal/zzah;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrW:Lcom/google/android/gms/internal/zzah;

    new-instance v1, Lcom/google/android/gms/internal/zzdf$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdf$1;-><init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzia;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzah;->zza(Lcom/google/android/gms/internal/zzah$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrW:Lcom/google/android/gms/internal/zzah;

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/zzdf$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzdf$2;-><init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzia;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzah;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    new-instance v0, Lcom/google/android/gms/internal/zzhv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzhv;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzdf$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzdf$3;-><init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzhv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhv;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrW:Lcom/google/android/gms/internal/zzah;

    const-string v2, "/requestReload"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzah;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrR:Ljava/lang/String;

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrW:Lcom/google/android/gms/internal/zzah;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdf;->zzrR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzah;->zzf(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzdf$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzdf$4;-><init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzia;)V

    sget v2, Lcom/google/android/gms/internal/zzdf$zza;->zzsc:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrW:Lcom/google/android/gms/internal/zzah;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdf;->zzrR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzah;->zzg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrW:Lcom/google/android/gms/internal/zzah;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzia$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrT:Lcom/google/android/gms/internal/zzia$zzd;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzdf;)Lcom/google/android/gms/internal/zzia;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;)Lcom/google/android/gms/internal/zzah;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzaj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;)V

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzia;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdf;->zzd(Lcom/google/android/gms/internal/zzia;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzia;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    const-string v2, "Incremented use-counter for js engine."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf;->zzrS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzcJ()Lcom/google/android/gms/internal/zzia;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzia;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzib;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzia;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdf;->zzc(Lcom/google/android/gms/internal/zzia;)V

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrX:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdf;->zzc(Lcom/google/android/gms/internal/zzia;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrX:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzib;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzia;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdf;->zzc(Lcom/google/android/gms/internal/zzia;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrX:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdf;->zzc(Lcom/google/android/gms/internal/zzia;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdf;->zzc(Lcom/google/android/gms/internal/zzia;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrV:Lcom/google/android/gms/internal/zzia;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected zzd(Lcom/google/android/gms/internal/zzia;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzia",
            "<",
            "Lcom/google/android/gms/internal/zzah;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdf;->zznh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Decremented use-counter for js engine."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdf;->zzrS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "Removing js engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdf;->zzrU:Lcom/google/android/gms/internal/zzia$zzd;

    new-instance v2, Lcom/google/android/gms/internal/zzia$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzia$zzb;-><init>()V

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia$zzd;Lcom/google/android/gms/internal/zzia$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdf$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdf$5;-><init>(Lcom/google/android/gms/internal/zzdf;)V

    new-instance v2, Lcom/google/android/gms/internal/zzia$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzia$zzb;-><init>()V

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia$zzd;Lcom/google/android/gms/internal/zzia$zza;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
