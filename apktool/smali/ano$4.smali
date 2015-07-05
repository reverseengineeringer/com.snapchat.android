.class final Lano$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 462
    iput-object p1, p0, Lano$4;->a:Lano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 465
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Lano;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: Completed %s but skipped callback because video is looping"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lano$4;->a:Lano;

    invoke-static {v3}, Lano;->b(Lano;)Laje;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-static {}, Lano;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: Completed %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lano$4;->a:Lano;

    invoke-static {v3}, Lano;->b(Lano;)Laje;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lano$4;->a:Lano;

    invoke-static {v0}, Lano;->e(Lano;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->b()V

    goto :goto_0
.end method
