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
    .line 322
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;B)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$c;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    new-instance v1, Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/videotranscoder/cts/InputSurface;-><init>(Landroid/view/Surface;Z)V

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->a(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/videotranscoder/cts/InputSurface;)Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->c(Lcom/snapchat/android/ui/VideoFilterView;)V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/SetupException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->a()V

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->d(Lcom/snapchat/android/ui/VideoFilterView;)V

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->e(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/android/ui/VideoFilterView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->e(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/android/ui/VideoFilterView$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/VideoFilterView$d;->h()V

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$c;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->d(Lcom/snapchat/android/ui/VideoFilterView;)V

    .line 351
    return-void
.end method
