.class public final Laeu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Z

.field b:Lcom/snapchat/android/ui/TextureVideoView;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Laeq;

.field f:I

.field public g:I

.field public h:F

.field public i:F

.field protected j:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected k:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected l:Landroid/media/MediaPlayer$OnInfoListener;

.field protected m:Landroid/media/MediaPlayer$OnErrorListener;

.field private n:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Laeu;-><init>(ZZ)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Laeu;->f:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Laeu;->n:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Laeu;->g:I

    .line 35
    iput v1, p0, Laeu;->h:F

    .line 36
    iput v1, p0, Laeu;->i:F

    .line 179
    new-instance v0, Laeu$1;

    invoke-direct {v0, p0}, Laeu$1;-><init>(Laeu;)V

    iput-object v0, p0, Laeu;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 196
    new-instance v0, Laeu$2;

    invoke-direct {v0, p0}, Laeu$2;-><init>(Laeu;)V

    iput-object v0, p0, Laeu;->k:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 233
    new-instance v0, Laeu$3;

    invoke-direct {v0, p0}, Laeu$3;-><init>(Laeu;)V

    iput-object v0, p0, Laeu;->l:Landroid/media/MediaPlayer$OnInfoListener;

    .line 249
    new-instance v0, Laeu$4;

    invoke-direct {v0, p0}, Laeu$4;-><init>(Laeu;)V

    iput-object v0, p0, Laeu;->m:Landroid/media/MediaPlayer$OnErrorListener;

    .line 49
    iput-boolean p1, p0, Laeu;->d:Z

    .line 50
    iput-boolean p2, p0, Laeu;->a:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Laeu;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "VideoViewController"

    const-string v1, "Calling start on an uninitialized controller."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Laeu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/ui/TextureVideoView;Z)V
    .locals 2
    .param p1    # Lcom/snapchat/android/ui/TextureVideoView;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 60
    const/4 v0, 0x2

    iput v0, p0, Laeu;->f:I

    .line 61
    iput-object p1, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    .line 62
    iput-boolean p2, p0, Laeu;->d:Z

    .line 63
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Laeu;->k:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 64
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Laeu;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Laeu;->l:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 66
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Laeu;->m:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 67
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    iput v0, p0, Laeu;->n:I

    .line 123
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 124
    iget-object v0, p0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->b()V

    .line 125
    return-void
.end method
