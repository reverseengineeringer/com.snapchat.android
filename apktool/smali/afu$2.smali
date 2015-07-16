.class final Lafu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafu;


# direct methods
.method constructor <init>(Lafu;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lafu$2;->a:Lafu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lafu$2;->a:Lafu;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lafu;->j:F

    .line 232
    iget-object v0, p0, Lafu$2;->a:Lafu;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lafu;->k:F

    .line 233
    iget-object v0, p0, Lafu$2;->a:Lafu;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, v0, Lafu;->h:I

    .line 235
    iget-object v0, p0, Lafu$2;->a:Lafu;

    const/4 v1, 0x2

    iput v1, v0, Lafu;->f:I

    .line 236
    iget-object v0, p0, Lafu$2;->a:Lafu;

    iput v2, v0, Lafu;->i:I

    .line 237
    iget-object v0, p0, Lafu$2;->a:Lafu;

    iput v2, v0, Lafu;->g:I

    .line 239
    iget-object v0, p0, Lafu$2;->a:Lafu;

    iget-object v0, v0, Lafu;->e:Lafq;

    .line 240
    if-eqz v0, :cond_1

    .line 244
    iget-object v1, p0, Lafu$2;->a:Lafu;

    iget-boolean v1, v1, Lafu;->a:Z

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lafu$2;->a:Lafu;

    iget-object v1, v1, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v2, Lafu$2$1;

    invoke-direct {v2, p0, v0}, Lafu$2$1;-><init>(Lafu$2;Lafq;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Lcom/snapchat/android/ui/TextureVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lafu$2;->a:Lafu;

    iget-boolean v0, v0, Lafu;->d:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method
