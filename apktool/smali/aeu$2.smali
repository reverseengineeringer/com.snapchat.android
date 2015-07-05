.class final Laeu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Laeu$2;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Laeu$2;->a:Laeu;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Laeu;->h:F

    .line 201
    iget-object v0, p0, Laeu$2;->a:Laeu;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Laeu;->i:F

    .line 202
    iget-object v0, p0, Laeu$2;->a:Laeu;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, v0, Laeu;->g:I

    .line 204
    iget-object v0, p0, Laeu$2;->a:Laeu;

    iget-object v0, v0, Laeu;->e:Laeq;

    .line 205
    if-eqz v0, :cond_1

    .line 209
    iget-object v1, p0, Laeu$2;->a:Laeu;

    iget-boolean v1, v1, Laeu;->a:Z

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Laeu$2;->a:Laeu;

    iget-object v1, v1, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v2, Laeu$2$1;

    invoke-direct {v2, p0, v0}, Laeu$2$1;-><init>(Laeu$2;Laeq;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Lcom/snapchat/android/ui/TextureVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Laeu$2;->a:Laeu;

    iget-boolean v0, v0, Laeu;->d:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method
