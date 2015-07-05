.class final Lcom/snapchat/android/ui/VideoFilterView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VideoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VideoFilterView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;B)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$c;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    new-instance v1, Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/snapchat/videotranscoder/cts/InputSurface;-><init>(Landroid/view/Surface;Z)V

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->a(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/videotranscoder/cts/InputSurface;)Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->c(Lcom/snapchat/android/ui/VideoFilterView;)V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "VideoFilterView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/SetupException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->a()V

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->d(Lcom/snapchat/android/ui/VideoFilterView;)V

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->e(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/android/ui/VideoFilterView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->e(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/android/ui/VideoFilterView$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/VideoFilterView$d;->h()V

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 347
    const-string v0, "VideoFilterView"

    const-string v1, "Surface destroyed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->d(Lcom/snapchat/android/ui/VideoFilterView;)V

    .line 349
    return-void
.end method
