.class public abstract Ltg;
.super Lth;
.source "SourceFile"


# static fields
.field public static final DEFAULT_RETRIES:I = 0x2

.field public static final EXPONENTIAL_STRATEGY:Lum;

.field private static final TAG:Ljava/lang/String; = "BaseRetriableScRequestTask"

.field protected static sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final mBackoffStrategy:Lun;
    .annotation build Lcgc;
    .end annotation
.end field

.field protected mCurrentRetryAttempt:I

.field protected mIsExecutedAsynchronous:Z

.field private final mNumRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lum;

    invoke-direct {v0}, Lum;-><init>()V

    sput-object v0, Ltg;->EXPONENTIAL_STRATEGY:Lum;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltg;-><init>(Lun;B)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lun;)V
    .locals 1
    .param p1    # Lun;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltg;-><init>(Lun;B)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lun;B)V
    .locals 1
    .param p1    # Lun;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Lth;-><init>()V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Ltg;->mNumRetries:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ltg;->mCurrentRetryAttempt:I

    .line 49
    iput-object p1, p0, Ltg;->mBackoffStrategy:Lun;

    .line 50
    sget-object v0, Lauh;->SCHEDULING_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sput-object v0, Ltg;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 9
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    iget-boolean v0, p0, Ltg;->mIsExecutedAsynchronous:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget v0, p0, Ltg;->mCurrentRetryAttempt:I

    iget v1, p0, Ltg;->mNumRetries:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Luc;->mResponseCode:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_1

    .line 67
    iget v0, p0, Ltg;->mCurrentRetryAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltg;->mCurrentRetryAttempt:I

    .line 69
    iget-object v0, p0, Ltg;->mBackoffStrategy:Lun;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Ltg;->mBackoffStrategy:Lun;

    iget v1, p0, Ltg;->mCurrentRetryAttempt:I

    invoke-interface {v0, v1}, Lun;->a(I)J

    move-result-wide v0

    .line 73
    :goto_0
    const-string v4, "NETWORK-LOG: %s is failed to complete. Going for %d attempt, backingoff for %d seconds"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Ltg;->mCurrentRetryAttempt:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 77
    sget-object v2, Ltg;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ltg$1;

    invoke-direct {v3, p0}, Ltg$1;-><init>(Ltg;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 88
    :goto_1
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Ltg;->f()V

    goto :goto_1

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method public final f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 55
    iput-boolean v5, p0, Ltg;->mIsExecutedAsynchronous:Z

    .line 56
    const-string v0, "BaseRetriableScRequestTask"

    const-string v1, "NETWORK-LOG: %s is executing for first attempt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Ltg;->mCurrentRetryAttempt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-super {p0}, Lth;->f()V

    .line 58
    return-void
.end method
