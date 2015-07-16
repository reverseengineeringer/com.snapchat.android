.class public Lcom/snapchat/android/ui/FeedLoadingAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private final c:J

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->c:J

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->d:Landroid/graphics/Rect;

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const-wide v12, 0x408f400000000000L    # 1000.0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v10, 0x0

    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Laue;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->a:Landroid/graphics/Bitmap;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Laue;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->b:Landroid/graphics/Bitmap;

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->invalidate()V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->c:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 54
    int-to-double v4, v0

    mul-double/2addr v4, v8

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 55
    int-to-double v4, v0

    mul-double/2addr v4, v8

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 57
    cmpl-double v0, v6, v10

    if-lez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->a:Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 63
    :goto_0
    cmpl-double v0, v8, v10

    if-lez v0, :cond_3

    .line 64
    int-to-double v8, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v0, v6

    move v2, v0

    move v0, v1

    .line 69
    :goto_1
    iget-object v5, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->d:Landroid/graphics/Rect;

    sub-int v6, v3, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, v6, v7, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->d:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 60
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/FeedLoadingAnimationView;->b:Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_0

    .line 66
    :cond_3
    int-to-double v8, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v0, v6

    move v2, v3

    goto :goto_1

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
