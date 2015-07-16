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
    .line 354
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$b;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;B)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$b;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public final done(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2

    .prologue
    .line 357
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq p1, v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video rendering is done with error status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    return-void
.end method
