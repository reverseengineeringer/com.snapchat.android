.class public abstract Ltw;
.super Ltx;
.source "SourceFile"


# static fields
.field public static final DEFAULT_RETRIES:I = 0x2

.field public static final EXPONENTIAL_STRATEGY:Lvd;

.field private static final TAG:Ljava/lang/String; = "BaseRetriableScRequestTask"

.field protected static sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final mBackoffStrategy:Lve;
    .annotation build Lchd;
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
    new-instance v0, Lvd;

    invoke-direct {v0}, Lvd;-><init>()V

    sput-object v0, Ltw;->EXPONENTIAL_STRATEGY:Lvd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltw;-><init>(Lve;B)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lve;)V
    .locals 1
    .param p1    # Lve;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltw;-><init>(Lve;B)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lve;B)V
    .locals 1
    .param p1    # Lve;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ltx;-><init>()V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Ltw;->mNumRetries:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Ltw;->mCurrentRetryAttempt:I

    .line 49
    iput-object p1, p0, Ltw;->mBackoffStrategy:Lve;

    .line 50
    sget-object v0, Lavf;->SCHEDULING_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sput-object v0, Ltw;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 55
    iput-boolean v3, p0, Ltw;->mIsExecutedAsynchronous:Z

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Ltw;->mCurrentRetryAttempt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 57
    invoke-super {p0}, Ltx;->execute()V

    .line 58
    return-void
.end method

.method public onResult(Lus;)V
    .locals 7
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    iget-boolean v0, p0, Ltw;->mIsExecutedAsynchronous:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget v0, p0, Ltw;->mCurrentRetryAttempt:I

    iget v1, p0, Ltw;->mNumRetries:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lus;->mResponseCode:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_1

    .line 67
    iget v0, p0, Ltw;->mCurrentRetryAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltw;->mCurrentRetryAttempt:I

    .line 69
    iget-object v0, p0, Ltw;->mBackoffStrategy:Lve;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Ltw;->mBackoffStrategy:Lve;

    iget v1, p0, Ltw;->mCurrentRetryAttempt:I

    invoke-interface {v0, v1}, Lve;->a(I)J

    move-result-wide v0

    .line 73
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Ltw;->mCurrentRetryAttempt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 76
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 77
    sget-object v2, Ltw;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ltw$1;

    invoke-direct {v3, p0}, Ltw$1;-><init>(Ltw;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 88
    :goto_1
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Ltw;->execute()V

    goto :goto_1

    .line 86
    :cond_1
    invoke-super {p0, p1}, Ltx;->onResult(Lus;)V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method
