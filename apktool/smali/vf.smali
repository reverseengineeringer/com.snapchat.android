.class public final Lvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvg;


# instance fields
.field private final mClock:Lbhk;

.field public mFirstByteReceivedElapsedRealtimeInMillis:J

.field public mFirstByteSize:J

.field public mIsReceived:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iget-object v0, v0, Lbhl;->mClock:Lbhk;

    invoke-direct {p0, v0}, Lvf;-><init>(Lbhk;)V

    .line 20
    return-void
.end method

.method private constructor <init>(Lbhk;)V
    .locals 1
    .param p1    # Lbhk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvf;->mIsReceived:Z

    .line 24
    iput-object p1, p0, Lvf;->mClock:Lbhk;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(JJZ)V
    .locals 3

    .prologue
    .line 29
    iget-boolean v0, p0, Lvf;->mIsReceived:Z

    if-nez v0, :cond_0

    .line 30
    iput-wide p1, p0, Lvf;->mFirstByteSize:J

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lvf;->mFirstByteReceivedElapsedRealtimeInMillis:J

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvf;->mIsReceived:Z

    .line 34
    :cond_0
    return-void
.end method
