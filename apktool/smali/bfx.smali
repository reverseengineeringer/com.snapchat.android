.class public final Lbfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laui;


# static fields
.field private static final TAG:Ljava/lang/String; = "FpsLogger"


# instance fields
.field private final mClock:Lbhk;

.field protected mFramesDrawn:I

.field private mLastDrawTime:J

.field private final mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    new-instance v1, Lbhk;

    invoke-direct {v1}, Lbhk;-><init>()V

    invoke-direct {p0, v0, v1}, Lbfx;-><init>(Lcom/snapchat/android/util/debug/ReleaseManager;Lbhk;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/debug/ReleaseManager;Lbhk;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lbfx;->mFramesDrawn:I

    .line 25
    iput-object p1, p0, Lbfx;->mReleaseManager:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 26
    iput-object p2, p0, Lbfx;->mClock:Lbhk;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget v0, p0, Lbfx;->mFramesDrawn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbfx;->mFramesDrawn:I

    .line 37
    iget v0, p0, Lbfx;->mFramesDrawn:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 39
    iget v2, p0, Lbfx;->mFramesDrawn:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    iget-wide v4, p0, Lbfx;->mLastDrawTime:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    div-float/2addr v2, v3

    .line 40
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v6

    .line 41
    iput-wide v0, p0, Lbfx;->mLastDrawTime:J

    .line 42
    iput v6, p0, Lbfx;->mFramesDrawn:I

    goto :goto_0
.end method
