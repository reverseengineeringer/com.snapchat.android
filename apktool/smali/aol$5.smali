.class final Laol$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laol;


# direct methods
.method constructor <init>(Laol;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Laol$5;->a:Laol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 356
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Laok;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Laol$5;->a:Laol;

    invoke-static {v2}, Laol;->b(Laol;)Laka;

    move-result-object v2

    aput-object v2, v0, v1

    .line 358
    if-ne p2, v3, :cond_1

    iget-object v0, p0, Laol$5;->a:Laol;

    invoke-static {v0}, Laol;->f(Laol;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laol$5;->a:Laol;

    invoke-static {v0}, Laol;->g(Laol;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Laol$5;->a:Laol;

    invoke-static {v1}, Laol;->b(Laol;)Laka;

    move-result-object v1

    aput-object v1, v0, v4

    .line 361
    iget-object v0, p0, Laol$5;->a:Laol;

    invoke-static {v0}, Laol;->h(Laol;)Z

    .line 362
    iget-object v0, p0, Laol$5;->a:Laol;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laol;->a(Laol;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 363
    iget-object v0, p0, Laol$5;->a:Laol;

    invoke-static {v0}, Laol;->i(Laol;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    iget-object v1, p0, Laol$5;->a:Laol;

    invoke-static {v1}, Laol;->g(Laol;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Laol$5;->a:Laol;

    invoke-static {v0}, Laol;->j(Laol;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Laol$5;->a:Laol;

    invoke-static {v0}, Laol;->i(Laol;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    .line 371
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    iget-object v0, p0, Laol$5;->a:Laol;

    invoke-static {v0}, Laol;->e(Laol;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->PLAYBACK_ERROR:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 369
    invoke-static {p2, p3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(II)V

    goto :goto_0
.end method
