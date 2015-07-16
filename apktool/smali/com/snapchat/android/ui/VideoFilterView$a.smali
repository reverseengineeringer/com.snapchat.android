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
    .line 365
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;B)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$a;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public final onProgressUpdated(I)V
    .locals 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->b:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->f(Lcom/snapchat/android/ui/VideoFilterView;)Laqf;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v1}, Lcom/snapchat/android/ui/VideoFilterView;->a(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    move-result-object v1

    iput-object v1, v0, Laqf;->a:Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    invoke-virtual {v0}, Laqf;->a()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VideoFilterView$a;->b:Z

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rendering is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    return-void
.end method
