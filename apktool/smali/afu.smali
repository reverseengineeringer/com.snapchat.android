.class public final Lafu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Z

.field public b:Lcom/snapchat/android/ui/TextureVideoView;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lafq;

.field f:I

.field g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field protected l:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected m:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected n:Landroid/media/MediaPlayer$OnInfoListener;

.field protected o:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lafu;-><init>(ZZ)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lafu;->f:I

    .line 32
    iput v2, p0, Lafu;->g:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lafu;->h:I

    .line 34
    iput v2, p0, Lafu;->i:I

    .line 36
    iput v1, p0, Lafu;->j:F

    .line 37
    iput v1, p0, Lafu;->k:F

    .line 209
    new-instance v0, Lafu$1;

    invoke-direct {v0, p0}, Lafu$1;-><init>(Lafu;)V

    iput-object v0, p0, Lafu;->l:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 227
    new-instance v0, Lafu$2;

    invoke-direct {v0, p0}, Lafu$2;-><init>(Lafu;)V

    iput-object v0, p0, Lafu;->m:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 268
    new-instance v0, Lafu$3;

    invoke-direct {v0, p0}, Lafu$3;-><init>(Lafu;)V

    iput-object v0, p0, Lafu;->n:Landroid/media/MediaPlayer$OnInfoListener;

    .line 284
    new-instance v0, Lafu$4;

    invoke-direct {v0, p0}, Lafu$4;-><init>(Lafu;)V

    iput-object v0, p0, Lafu;->o:Landroid/media/MediaPlayer$OnErrorListener;

    .line 50
    iput-boolean p1, p0, Lafu;->d:Z

    .line 51
    iput-boolean p2, p0, Lafu;->a:Z

    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lafu;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lafu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ui/TextureVideoView;Z)V
    .locals 2
    .param p1    # Lcom/snapchat/android/ui/TextureVideoView;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 61
    iput-object p1, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    .line 62
    iput-boolean p2, p0, Lafu;->d:Z

    .line 63
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lafu;->m:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 64
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lafu;->l:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lafu;->n:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 66
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lafu;->o:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 67
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lafu;->g:I

    .line 123
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 124
    iget-object v0, p0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->b()V

    .line 125
    return-void
.end method
