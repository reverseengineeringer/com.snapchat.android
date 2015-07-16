.class public final Laol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer;


# static fields
.field protected static final e:Landroid/media/MediaPlayer$OnErrorListener;

.field private static f:Ljava/lang/String;


# instance fields
.field protected final a:Landroid/media/MediaPlayer$OnInfoListener;

.field protected final b:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected final c:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected final d:Landroid/media/MediaPlayer$OnErrorListener;

.field private final g:Landroid/view/LayoutInflater;

.field private final h:Lcom/squareup/otto/Bus;

.field private final i:Laxr;

.field private final j:Laom;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/View;

.field private m:Lcom/snapchat/android/ui/SnapVideoView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

.field private p:Landroid/media/MediaPlayer;

.field private q:Z

.field private r:Z

.field private s:Laka;

.field private t:Laon;

.field private u:Ljava/lang/String;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "VideoSnapRenderer"

    sput-object v0, Laol;->f:Ljava/lang/String;

    .line 376
    new-instance v0, Laol$6;

    invoke-direct {v0}, Laol$6;-><init>()V

    sput-object v0, Laol;->e:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Laxr;

    invoke-direct {v2}, Laxr;-><init>()V

    new-instance v3, Laom;

    invoke-direct {v3, p1}, Laom;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v2, v3}, Laol;-><init>(Landroid/view/LayoutInflater;Lcom/squareup/otto/Bus;Laxr;Laom;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Lcom/squareup/otto/Bus;Laxr;Laom;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Laol$2;

    invoke-direct {v0, p0}, Laol$2;-><init>(Laol;)V

    iput-object v0, p0, Laol;->a:Landroid/media/MediaPlayer$OnInfoListener;

    .line 313
    new-instance v0, Laol$3;

    invoke-direct {v0, p0}, Laol$3;-><init>(Laol;)V

    iput-object v0, p0, Laol;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 339
    new-instance v0, Laol$4;

    invoke-direct {v0, p0}, Laol$4;-><init>(Laol;)V

    iput-object v0, p0, Laol;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 352
    new-instance v0, Laol$5;

    invoke-direct {v0, p0}, Laol$5;-><init>(Laol;)V

    iput-object v0, p0, Laol;->d:Landroid/media/MediaPlayer$OnErrorListener;

    .line 73
    iput-object p1, p0, Laol;->g:Landroid/view/LayoutInflater;

    .line 74
    iput-object p2, p0, Laol;->h:Lcom/squareup/otto/Bus;

    .line 75
    iput-object p3, p0, Laol;->i:Laxr;

    .line 76
    iput-object p4, p0, Laol;->j:Laom;

    .line 77
    return-void
.end method

.method static synthetic a(Laol;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Laol;->p:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Laol;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Laol;->e()V

    return-void
.end method

.method static synthetic a(Laol;Laon;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lbhp;->a()V

    invoke-direct {p0}, Laol;->f()V

    invoke-virtual {p1}, Laon;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laol;->o:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    invoke-virtual {p1}, Laon;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Laon;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laol;->u:Ljava/lang/String;

    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v3, p0, Laol;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Laol;->s:Laka;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Laon;->e()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    invoke-virtual {p1}, Laon;->a()Laka;

    move-result-object v0

    invoke-virtual {v0}, Laka;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Laon;->a()Laka;

    move-result-object v0

    invoke-virtual {v0}, Laka;->G()D

    move-result-wide v4

    invoke-virtual {v0}, Laka;->H()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Laon;->a()Laka;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapVideoView;->seekTo(I)V

    :cond_3
    invoke-virtual {p1}, Laon;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Laol;->n:Landroid/widget/ImageView;

    invoke-virtual {p1}, Laon;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iput-object p1, p0, Laol;->t:Laon;

    goto :goto_0
.end method

.method static synthetic a(Laol;Lavc;)V
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Laol;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lavc;->c()D

    move-result-wide v2

    int-to-double v4, v0

    div-double v2, v4, v2

    double-to-int v1, v2

    iget-object v2, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoAspect(II)V

    return-void
.end method

.method static synthetic b(Laol;)Laka;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laol;->s:Laka;

    return-object v0
.end method

.method static synthetic c(Laol;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Laol;->r:Z

    return v0
.end method

.method static synthetic d(Laol;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laol;->p:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Laol;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laol;->o:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Laol;->s:Laka;

    instance-of v0, v0, Lakl;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Z)V

    .line 289
    iget-object v0, p0, Laol;->o:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a()V

    .line 290
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-static {}, Lbhp;->a()V

    .line 388
    iget-object v0, p0, Laol;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 390
    iget-object v0, p0, Laol;->t:Laon;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Laol;->t:Laon;

    invoke-virtual {v0}, Laon;->e()V

    .line 392
    iput-object v1, p0, Laol;->t:Laon;

    .line 394
    :cond_0
    return-void
.end method

.method static synthetic f(Laol;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Laol;->v:Z

    return v0
.end method

.method static synthetic g(Laol;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laol;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Laol;)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Laol;->v:Z

    return v0
.end method

.method static synthetic i(Laol;)Lcom/snapchat/android/ui/SnapVideoView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    return-object v0
.end method

.method static synthetic j(Laol;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Laol;->q:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Laol;->s:Laka;

    aput-object v1, v0, v2

    .line 173
    invoke-static {}, Lbhp;->a()V

    .line 175
    iget-object v0, p0, Laol;->s:Laka;

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Start called for null snap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Laol;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 183
    iget-object v0, p0, Laol;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    .line 186
    iput-boolean v3, p0, Laol;->q:Z

    .line 187
    sget-boolean v0, Latt;->SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START:Z

    if-nez v0, :cond_1

    .line 190
    invoke-direct {p0}, Laol;->e()V

    .line 192
    :cond_1
    return-void
.end method

.method public final a(Laka;ZLcom/snapchat/android/rendering/SnapMediaRenderer$a;)V
    .locals 4
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/rendering/SnapMediaRenderer$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 123
    invoke-static {}, Lbhp;->a()V

    .line 125
    iput-object p3, p0, Laol;->o:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 126
    iput-object p1, p0, Laol;->s:Laka;

    .line 127
    iput-boolean p2, p0, Laol;->r:Z

    .line 130
    iput-boolean v1, p0, Laol;->v:Z

    .line 132
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Laol;->o:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->EXTERNAL_STORAGE_REQUIRED:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 168
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 132
    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    if-nez v0, :cond_2

    .line 139
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Laxy;->a(Ljava/io/File;Ljava/io/File;)V

    .line 146
    :cond_2
    iget-object v0, p0, Laol;->h:Lcom/squareup/otto/Bus;

    new-instance v2, Lbbq;

    sget-object v3, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->CLOSE:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v2, v3}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Laol;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 153
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 156
    :cond_3
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v2, p0, Laol;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 157
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v2, p0, Laol;->d:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 158
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    iget-object v2, p0, Laol;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 161
    iget-object v0, p0, Laol;->j:Laom;

    new-instance v2, Laol$1;

    invoke-direct {v2, p0}, Laol$1;-><init>(Laol;)V

    new-instance v3, Laom$1;

    invoke-direct {v3, v0, p1, v2}, Laom$1;-><init>(Laom;Laka;Laom$a;)V

    iput-object v3, v0, Laom;->b:Laoj;

    iget-object v2, v0, Laom;->b:Laoj;

    iget-object v0, v0, Laom;->a:Ljava/util/concurrent/ExecutorService;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Laoj;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 81
    iput-object p1, p0, Laol;->k:Landroid/view/ViewGroup;

    .line 82
    iget-object v0, p0, Laol;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0400aa

    iget-object v2, p0, Laol;->k:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laol;->l:Landroid/view/View;

    .line 83
    iget-object v0, p0, Laol;->l:Landroid/view/View;

    const v1, 0x7f0a03ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapVideoView;

    iput-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    .line 84
    iget-object v0, p0, Laol;->l:Landroid/view/View;

    const v1, 0x7f0a03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laol;->n:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Laol;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Laol;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laol;->s:Laka;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 224
    invoke-static {}, Lbhp;->a()V

    .line 226
    if-eqz p1, :cond_1

    .line 227
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->pause()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-boolean v0, p0, Laol;->q:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laol;->s:Laka;

    aput-object v1, v0, v3

    .line 197
    invoke-static {}, Lbhp;->a()V

    .line 200
    iget-object v0, p0, Laol;->j:Laom;

    iget-object v1, v0, Laom;->b:Laoj;

    if-eqz v1, :cond_0

    iget-object v1, v0, Laom;->b:Laoj;

    invoke-virtual {v1, v3}, Laoj;->cancel(Z)Z

    iput-object v2, v0, Laom;->b:Laoj;

    .line 201
    :cond_0
    iput-object v2, p0, Laol;->o:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    .line 202
    iput-object v2, p0, Laol;->s:Laka;

    .line 203
    iput-object v2, p0, Laol;->u:Ljava/lang/String;

    .line 204
    iput-boolean v3, p0, Laol;->q:Z

    .line 206
    invoke-direct {p0}, Laol;->f()V

    .line 210
    iget-object v0, p0, Laol;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Laol;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 212
    iput-object v2, p0, Laol;->p:Landroid/media/MediaPlayer;

    .line 214
    :cond_1
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 215
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 216
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    sget-object v1, Laol;->e:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 217
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->stopPlayback()V

    .line 218
    iget-object v0, p0, Laol;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laol;->s:Laka;

    aput-object v1, v0, v2

    .line 102
    invoke-static {}, Lbhp;->a()V

    .line 104
    iget-object v0, p0, Laol;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laol;->s:Laka;

    aput-object v2, v0, v1

    .line 111
    invoke-static {}, Lbhp;->a()V

    .line 114
    iget-object v0, p0, Laol;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Laol;->m:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 117
    invoke-direct {p0}, Laol;->f()V

    .line 118
    return-void
.end method
