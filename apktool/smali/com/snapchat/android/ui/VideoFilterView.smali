.class public Lcom/snapchat/android/ui/VideoFilterView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/VideoFilterView$a;,
        Lcom/snapchat/android/ui/VideoFilterView$b;,
        Lcom/snapchat/android/ui/VideoFilterView$c;,
        Lcom/snapchat/android/ui/VideoFilterView$d;
    }
.end annotation


# instance fields
.field a:Landroid/view/SurfaceHolder$Callback;

.field private b:Landroid/net/Uri;

.field private final c:Lazo;

.field private final d:Lwz;

.field private e:I

.field private f:Lcom/snapchat/videotranscoder/task/TaskExecutor;

.field private g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

.field private h:[F

.field private i:Lapj;

.field private j:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private k:I

.field private l:I

.field private m:F

.field private n:Lcom/snapchat/android/ui/VideoFilterView$d;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 71
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    invoke-static {}, Lwz;->a()Lwz;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;-><init>(Landroid/content/Context;Lazo;Lwz;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 75
    const/4 v3, 0x0

    new-instance v4, Lazo;

    invoke-direct {v4}, Lazo;-><init>()V

    invoke-static {}, Lwz;->a()Lwz;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/VideoFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILazo;Lwz;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 79
    new-instance v4, Lazo;

    invoke-direct {v4}, Lazo;-><init>()V

    invoke-static {}, Lwz;->a()Lwz;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/VideoFilterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILazo;Lwz;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILazo;Lwz;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lwz;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:I

    .line 50
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 51
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 52
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->rotateLeft()[F

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:[F

    .line 54
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 58
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->n:Lcom/snapchat/android/ui/VideoFilterView$d;

    .line 68
    new-instance v0, Lcom/snapchat/android/ui/VideoFilterView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/VideoFilterView$c;-><init>(Lcom/snapchat/android/ui/VideoFilterView;B)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->a:Landroid/view/SurfaceHolder$Callback;

    .line 101
    iput-object p4, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:Lazo;

    .line 102
    iput-object p5, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lwz;

    .line 104
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->c()V

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lazo;Lwz;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lazo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lwz;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:I

    .line 50
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 51
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 52
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->rotateLeft()[F

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:[F

    .line 54
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 58
    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->n:Lcom/snapchat/android/ui/VideoFilterView$d;

    .line 68
    new-instance v0, Lcom/snapchat/android/ui/VideoFilterView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/VideoFilterView$c;-><init>(Lcom/snapchat/android/ui/VideoFilterView;B)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->a:Landroid/view/SurfaceHolder$Callback;

    .line 87
    iput-object p2, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:Lazo;

    .line 88
    iput-object p3, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lwz;

    .line 90
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->c()V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/videotranscoder/cts/InputSurface;)Lcom/snapchat/videotranscoder/cts/InputSurface;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/TaskExecutor;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:I

    .line 260
    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:I

    .line 261
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->a:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 262
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VideoFilterView;->setFocusable(Z)V

    .line 263
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VideoFilterView;->setFocusableInTouchMode(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->requestFocus()Z

    .line 265
    new-instance v0, Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 266
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->d()V

    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;

    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;->ORIGINAL:Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;-><init>(Ljava/lang/String;[FLandroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource$AudioChannelSource;)V

    .line 282
    new-instance v1, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget-object v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->d:Lwz;

    iget-object v2, v2, Lwz;->a:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    sget-object v4, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    sget-object v5, Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;->NORMAL:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iget-object v6, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;Lcom/snapchat/videotranscoder/task/VideoFileMediaSource;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/cts/InputSurface;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->m:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->setVolume(F)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->release()V

    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->release()V

    iput-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->j:Lcom/snapchat/videotranscoder/cts/InputSurface;

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/android/ui/VideoFilterView$d;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->n:Lcom/snapchat/android/ui/VideoFilterView$d;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/VideoFilterView;)Lapj;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:Lapj;

    return-object v0
.end method

.method private setTransformationMatrix([F)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->h:[F

    .line 175
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "VideoFilterView"

    const-string v1, "Trying to stop playback"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:Lapj;

    iput-object v5, v0, Lapj;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->f:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->tryAbort(Lcom/snapchat/videotranscoder/task/Task;)V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    :try_start_1
    const-string v0, "VideoFilterView"

    const-string v1, "Waiting for abort"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->waitForAbort()V

    .line 200
    const-string v0, "VideoFilterView"

    const-string v1, "Abort finished"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    iput-object v5, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    .line 210
    :cond_0
    const-string v0, "VideoFilterView"

    const-string v1, "Playback has been stopped"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "VideoFilterView"

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:Lazo;

    new-instance v2, Loe;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Loe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lazo;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    .line 203
    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->c:Lazo;

    new-instance v2, Loe;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Loe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lazo;->b(Ljava/lang/Throwable;)V

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not release all components for video rendering! Error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/net/Uri;[F)Z
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/VideoFilterView;->setTransformationMatrix([F)V

    .line 156
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    .line 157
    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :try_start_2
    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    if-lez v3, :cond_0

    if-lez v1, :cond_0

    int-to-float v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const-string v3, "VideoFilterView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setting resolution = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:I

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/VideoFilterView;->d()V

    .line 159
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->requestLayout()V

    .line 160
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VideoFilterView;->invalidate()V

    .line 161
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 157
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/utils/VideoMetadataReader;->release()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    const-string v2, "VideoFilterView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 296
    iget v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->b:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 302
    new-instance v0, Lcom/snapchat/android/ui/VideoFilterView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/VideoFilterView$1;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    const-wide/16 v2, 0x19

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VideoFilterView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 311
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/ui/VideoFilterView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/VideoFilterView$2;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 316
    iput v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->e:I

    goto :goto_0
.end method

.method public getFilterRenderingTask()Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 135
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 141
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 122
    iget v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:I

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/VideoFilterView;->getDefaultSize(II)I

    move-result v0

    .line 123
    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:I

    invoke-static {v1, p2}, Lcom/snapchat/android/ui/VideoFilterView;->getDefaultSize(II)I

    move-result v1

    .line 124
    iget v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:I

    if-lez v2, :cond_0

    .line 125
    iget v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:I

    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setMeasuredDimension(II)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setSwipeVideoViewController(Lapj;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->i:Lapj;

    .line 117
    return-void
.end method

.method public setUnrecoverableErrorListener(Lcom/snapchat/android/ui/VideoFilterView$d;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/ui/VideoFilterView$d;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 112
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->n:Lcom/snapchat/android/ui/VideoFilterView$d;

    .line 113
    return-void
.end method

.method public setVideoAspect(II)V
    .locals 1

    .prologue
    .line 145
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->k:I

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->l:I

    .line 147
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .prologue
    .line 178
    iput p1, p0, Lcom/snapchat/android/ui/VideoFilterView;->m:F

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView;->g:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    iget v1, p0, Lcom/snapchat/android/ui/VideoFilterView;->m:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->setVolume(F)V

    .line 182
    :cond_0
    return-void
.end method
