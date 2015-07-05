.class final Lano$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lano;


# direct methods
.method constructor <init>(Lano;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lano$5;->a:Lano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 478
    invoke-static {}, Lano;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: onError: %s extra=%d snap=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lann;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lano$5;->a:Lano;

    invoke-static {v4}, Lano;->b(Lano;)Laje;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    if-ne p2, v5, :cond_1

    iget-object v0, p0, Lano$5;->a:Lano;

    invoke-static {v0}, Lano;->f(Lano;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lano$5;->a:Lano;

    invoke-static {v0}, Lano;->g(Lano;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Lano;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: onError resetting media player and retrying, snap=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lano$5;->a:Lano;

    invoke-static {v3}, Lano;->b(Lano;)Laje;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lano$5;->a:Lano;

    invoke-static {v0}, Lano;->h(Lano;)Z

    .line 484
    iget-object v0, p0, Lano$5;->a:Lano;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lano;->a(Lano;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 485
    iget-object v0, p0, Lano$5;->a:Lano;

    invoke-static {v0}, Lano;->i(Lano;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    iget-object v1, p0, Lano$5;->a:Lano;

    invoke-static {v1}, Lano;->g(Lano;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lano$5;->a:Lano;

    invoke-static {v0}, Lano;->j(Lano;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lano$5;->a:Lano;

    invoke-static {v0}, Lano;->i(Lano;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    .line 493
    :cond_0
    :goto_0
    return v5

    .line 490
    :cond_1
    iget-object v0, p0, Lano$5;->a:Lano;

    invoke-static {v0}, Lano;->e(Lano;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->PLAYBACK_ERROR:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 491
    invoke-static {p2, p3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(II)V

    goto :goto_0
.end method
