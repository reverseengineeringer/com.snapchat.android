.class public final Luo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfk$a;


# instance fields
.field private final mClock:Lbgk;

.field public mFirstByteReceivedElapsedRealtimeInMillis:J

.field public mFirstByteSize:I

.field public mIsReceived:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lbgl;

    invoke-direct {v0}, Lbgl;-><init>()V

    iget-object v0, v0, Lbgl;->mClock:Lbgk;

    invoke-direct {p0, v0}, Luo;-><init>(Lbgk;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lbgk;)V
    .locals 1
    .param p1    # Lbgk;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Luo;->mIsReceived:Z

    .line 28
    iput-object p1, p0, Luo;->mClock:Lbgk;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 33
    iget-boolean v0, p0, Luo;->mIsReceived:Z

    if-nez v0, :cond_0

    .line 34
    iput p1, p0, Luo;->mFirstByteSize:I

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Luo;->mFirstByteReceivedElapsedRealtimeInMillis:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Luo;->mIsReceived:Z

    .line 38
    :cond_0
    return-void
.end method
