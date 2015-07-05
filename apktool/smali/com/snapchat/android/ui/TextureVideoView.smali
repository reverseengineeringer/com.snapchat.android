.class public Lcom/snapchat/android/ui/TextureVideoView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Landroid/media/MediaPlayer$OnCompletionListener;

.field private F:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private G:Landroid/media/MediaPlayer$OnInfoListener;

.field private H:Landroid/media/MediaPlayer$OnErrorListener;

.field private I:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private J:Landroid/view/TextureView$SurfaceTextureListener;

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field g:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field h:Landroid/media/MediaPlayer$OnPreparedListener;

.field private i:Ljava/lang/String;

.field private j:Landroid/net/Uri;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Landroid/media/MediaPlayer;

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/Surface;

.field private s:Landroid/widget/MediaController;

.field private t:Landroid/media/MediaPlayer$OnCompletionListener;

.field private u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private v:Landroid/media/MediaPlayer$OnPreparedListener;

.field private w:I

.field private x:Landroid/media/MediaPlayer$OnErrorListener;

.field private y:Landroid/media/MediaPlayer$OnInfoListener;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "TextureVideoView"

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 58
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->D:Z

    .line 365
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$1;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 377
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$2;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 431
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$3;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 449
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$4;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->F:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 457
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$5;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->G:Landroid/media/MediaPlayer$OnInfoListener;

    .line 467
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$6;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->H:Landroid/media/MediaPlayer$OnErrorListener;

    .line 491
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$7;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->I:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 544
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$8;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->J:Landroid/view/TextureView$SurfaceTextureListener;

    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->c()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->c()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-string v0, "TextureVideoView"

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 58
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->D:Z

    .line 365
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$1;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 377
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$2;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 431
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$3;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 449
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$4;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->F:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 457
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$5;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->G:Landroid/media/MediaPlayer$OnInfoListener;

    .line 467
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$6;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->H:Landroid/media/MediaPlayer$OnErrorListener;

    .line 491
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$7;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->I:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 544
    new-instance v0, Lcom/snapchat/android/ui/TextureVideoView$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/TextureVideoView$8;-><init>(Lcom/snapchat/android/ui/TextureVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->J:Landroid/view/TextureView$SurfaceTextureListener;

    .line 97
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->c()V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/TextureVideoView;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/TextureVideoView;Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    goto :goto_0

    :catch_1
    move-exception v0

    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    goto :goto_1
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 584
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 585
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    .line 586
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 587
    if-eqz p1, :cond_0

    .line 588
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 593
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    .line 595
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->A:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->w:I

    return p1
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    .line 192
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->J:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setFocusable(Z)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setFocusableInTouchMode(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->requestFocus()Z

    .line 197
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 198
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 199
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->B:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->p:I

    return p1
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 301
    invoke-direct {p0, v6}, Lcom/snapchat/android/ui/TextureVideoView;->a(Z)V

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->D:Z

    if-eqz v0, :cond_2

    .line 304
    new-instance v0, Laoz;

    invoke-direct {v0}, Laoz;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    .line 309
    :goto_1
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:I

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 314
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->h:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->g:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->F:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->H:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->G:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 320
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->I:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->w:I

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:Landroid/net/Uri;

    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 323
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 330
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 331
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:Ljava/lang/String;

    const-string v2, "Unable to open content %s: %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:Landroid/net/Uri;

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iput v7, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 335
    iput v7, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->H:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 306
    :cond_2
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 338
    :catch_1
    move-exception v0

    .line 339
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->i:Ljava/lang/String;

    const-string v2, "Unable to open content %s: %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:Landroid/net/Uri;

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iput v7, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 341
    iput v7, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->H:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 312
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/snapchat/android/ui/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->C:Z

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/TextureVideoView;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->q:I

    return p1
.end method

.method static synthetic e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 363
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 358
    goto :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    return-object v0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 724
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/TextureVideoView;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->z:I

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/ui/TextureVideoView;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/ui/TextureVideoView;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->y:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->x:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/ui/TextureVideoView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->d()V

    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/ui/TextureVideoView;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/TextureVideoView;->a(Z)V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 275
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    .line 276
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 277
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 281
    iput-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->r:Landroid/view/Surface;

    .line 283
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:Landroid/net/Uri;

    .line 289
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->A:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->B:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->C:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 769
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:I

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 771
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:I

    .line 772
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 774
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->o:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 718
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->w:I

    .line 720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 700
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVideoURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 181
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 187
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 615
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    move v0, v1

    .line 622
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    if-eqz v0, :cond_8

    .line 623
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->pause()V

    .line 627
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 651
    :cond_1
    :goto_1
    return v1

    .line 615
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 629
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 630
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 633
    :cond_4
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_5

    .line 634
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 636
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 639
    :cond_5
    const/16 v0, 0x56

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_7

    .line 641
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->pause()V

    .line 643
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 647
    :cond_7
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()V

    .line 651
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 114
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/TextureVideoView;->getDefaultSize(II)I

    move-result v1

    .line 115
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/TextureVideoView;->getDefaultSize(II)I

    move-result v0

    .line 116
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    if-lez v2, :cond_0

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 121
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 123
    if-ne v4, v3, :cond_2

    if-ne v5, v3, :cond_2

    .line 129
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 130
    iget v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    div-int/2addr v1, v2

    .line 175
    :cond_0
    :goto_0
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setMeasuredDimension(II)V

    .line 176
    return-void

    .line 131
    :cond_1
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_0

    .line 132
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    div-int/2addr v0, v2

    goto :goto_0

    .line 134
    :cond_2
    if-ne v4, v3, :cond_4

    .line 137
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    div-int/2addr v2, v3

    .line 138
    if-ne v5, v6, :cond_3

    if-gt v2, v0, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 142
    :cond_4
    if-ne v5, v3, :cond_6

    .line 145
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    div-int/2addr v2, v3

    .line 146
    if-ne v4, v6, :cond_5

    if-gt v2, v1, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 152
    :cond_6
    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    .line 153
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    .line 154
    if-ne v5, v6, :cond_8

    if-le v2, v0, :cond_8

    .line 157
    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    div-int/2addr v2, v3

    .line 159
    :goto_1
    if-ne v4, v6, :cond_7

    if-le v2, v1, :cond_7

    .line 162
    iget v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->b:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/snapchat/android/ui/TextureVideoView;->a:I

    div-int/2addr v0, v2

    .line 165
    :goto_2
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->a(I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()V

    .line 602
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->f()V

    .line 610
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 671
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 674
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 677
    :cond_0
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 678
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 706
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->z:I

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->z:I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 738
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 351
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->s:Landroid/widget/MediaController;

    .line 352
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->e()V

    .line 353
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 516
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->x:Landroid/media/MediaPlayer$OnErrorListener;

    .line 528
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->y:Landroid/media/MediaPlayer$OnInfoListener;

    .line 538
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->v:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 506
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->u:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 542
    return-void
.end method

.method public setShouldUseAsyncMediaPlayer(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->D:Z

    .line 110
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 237
    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 245
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation build Lavl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->j:Landroid/net/Uri;

    .line 259
    iput-object p2, p0, Lcom/snapchat/android/ui/TextureVideoView;->k:Ljava/util/Map;

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->z:I

    .line 261
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->d()V

    .line 262
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->requestLayout()V

    .line 263
    invoke-virtual {p0}, Lcom/snapchat/android/ui/TextureVideoView;->invalidate()V

    .line 264
    return-void
.end method

.method public setViewport(IIII)V
    .locals 0

    .prologue
    .line 210
    iput p1, p0, Lcom/snapchat/android/ui/TextureVideoView;->c:I

    .line 211
    iput p2, p0, Lcom/snapchat/android/ui/TextureVideoView;->d:I

    .line 212
    iput p3, p0, Lcom/snapchat/android/ui/TextureVideoView;->e:I

    .line 213
    iput p4, p0, Lcom/snapchat/android/ui/TextureVideoView;->f:I

    .line 214
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 663
    invoke-direct {p0}, Lcom/snapchat/android/ui/TextureVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 665
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->l:I

    .line 667
    :cond_0
    iput v1, p0, Lcom/snapchat/android/ui/TextureVideoView;->m:I

    .line 668
    return-void
.end method
