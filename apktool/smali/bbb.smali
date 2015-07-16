.class public final Lbbb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbb$a;
    }
.end annotation


# static fields
.field private static final BACKGROUND_INSTANCE:Lbbb;

.field private static final SWIPE_INSTANCE:Lbbb;

.field private static final TAG:Ljava/lang/String; = "UiLatencyChecker"


# instance fields
.field public mDeferPause:Z

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMaxTries:J

.field private final mSleepDuration:J

.field private final mThreadFactory:Lbbb$a;

.field public final mUiLatencyAggregator:Lbba;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 24
    new-instance v1, Lbbb;

    const-wide/16 v2, 0x14

    const-wide/16 v4, 0xfa

    new-instance v6, Lbay;

    invoke-direct {v6}, Lbay;-><init>()V

    invoke-direct/range {v1 .. v6}, Lbbb;-><init>(JJLbba;)V

    sput-object v1, Lbbb;->SWIPE_INSTANCE:Lbbb;

    .line 26
    new-instance v1, Lbbb;

    const-wide/16 v2, 0x64

    const-wide/16 v4, -0x1

    new-instance v6, Lbae;

    invoke-direct {v6}, Lbae;-><init>()V

    invoke-direct/range {v1 .. v6}, Lbbb;-><init>(JJLbba;)V

    sput-object v1, Lbbb;->BACKGROUND_INSTANCE:Lbbb;

    return-void
.end method

.method private constructor <init>(JJLbba;)V
    .locals 9

    .prologue
    .line 50
    new-instance v7, Lbbb$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbhk;

    invoke-direct {v1}, Lbhk;-><init>()V

    invoke-direct {v7, v0, v1}, Lbbb$a;-><init>(Landroid/os/Handler;Lbhk;)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lbbb;-><init>(JJLbba;Lbbb$a;)V

    .line 52
    return-void
.end method

.method private constructor <init>(JJLbba;Lbbb$a;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbbb;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput-wide p1, p0, Lbbb;->mSleepDuration:J

    .line 58
    iput-wide p3, p0, Lbbb;->mMaxTries:J

    .line 59
    iput-object p6, p0, Lbbb;->mThreadFactory:Lbbb$a;

    .line 60
    iput-object p5, p0, Lbbb;->mUiLatencyAggregator:Lbba;

    .line 61
    return-void
.end method

.method public static a()Lbbb;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lbbb;->BACKGROUND_INSTANCE:Lbbb;

    return-object v0
.end method

.method public static b()Lbbb;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lbbb;->SWIPE_INSTANCE:Lbbb;

    return-object v0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 68
    iget-boolean v0, p0, Lbbb;->mDeferPause:Z

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbbb;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iget-object v0, p0, Lbbb;->mUiLatencyAggregator:Lbba;

    invoke-interface {v0, p1}, Lbba;->a([Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lbbb;->mThreadFactory:Lbbb$a;

    iget-wide v6, p0, Lbbb;->mSleepDuration:J

    iget-wide v3, p0, Lbbb;->mMaxTries:J

    iget-object v2, p0, Lbbb;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lbbb;->mUiLatencyAggregator:Lbba;

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lbbb$a$1;

    invoke-direct/range {v0 .. v7}, Lbbb$a$1;-><init>(Lbbb$a;Ljava/util/concurrent/atomic/AtomicBoolean;JLbba;J)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 73
    :cond_0
    return-void
.end method

.method public final varargs b([Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lbbb;->mDeferPause:Z

    .line 81
    iget-object v0, p0, Lbbb;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    iget-object v0, p0, Lbbb;->mUiLatencyAggregator:Lbba;

    invoke-interface {v0, p1}, Lbba;->b([Ljava/lang/String;)V

    .line 83
    return-void
.end method
