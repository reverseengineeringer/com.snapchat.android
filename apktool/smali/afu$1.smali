.class final Lafu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 210
    iput-object p1, p0, Lafu$1;->a:Lafu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lafu$1;->a:Lafu;

    iget-object v0, v0, Lafu;->e:Lafq;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lafq;->p_()V

    .line 217
    :cond_0
    iget-object v0, p0, Lafu$1;->a:Lafu;

    iget v1, v0, Lafu;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lafu;->i:I

    .line 221
    iget-object v0, p0, Lafu$1;->a:Lafu;

    iget-boolean v0, v0, Lafu;->d:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lafu$1;->a:Lafu;

    iget-object v0, v0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 224
    :cond_1
    return-void
.end method
