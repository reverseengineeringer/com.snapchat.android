.class final Lcom/snapchat/android/ui/VideoFilterView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VideoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VideoFilterView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 1

    .prologue
    .line 363
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;B)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$a;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public final onProgressUpdated(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->b:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->f(Lcom/snapchat/android/ui/VideoFilterView;)Lapj;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v1}, Lcom/snapchat/android/ui/VideoFilterView;->a(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    move-result-object v1

    iput-object v1, v0, Lapj;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0}, Lapj;->a()V

    .line 369
    iput-boolean v3, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->b:Z

    .line 371
    :cond_0
    const-string v0, "VideoFilterView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rendering is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% complete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    return-void
.end method
