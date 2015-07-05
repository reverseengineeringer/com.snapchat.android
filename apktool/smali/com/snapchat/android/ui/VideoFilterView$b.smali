.class final Lcom/snapchat/android/ui/VideoFilterView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VideoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VideoFilterView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$b;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;B)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$b;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public final done(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne p1, v0, :cond_0

    .line 356
    const-string v0, "VideoFilterView"

    const-string v1, "Video Rendering finished successfully"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    const-string v0, "VideoFilterView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video rendering is done with error status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
