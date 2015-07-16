.class Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/task/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskWrapper"
.end annotation


# instance fields
.field mDoneCallback:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

.field mProgressUpdateCallback:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

.field mTask:Lcom/snapchat/videotranscoder/task/Task;

.field final synthetic this$0:Lcom/snapchat/videotranscoder/task/TaskExecutor;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 0
    .param p2    # Lcom/snapchat/videotranscoder/task/Task;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/task/Task$DoneCallback;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 25
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->this$0:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mTask:Lcom/snapchat/videotranscoder/task/Task;

    .line 27
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mDoneCallback:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    .line 28
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mProgressUpdateCallback:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    .line 29
    return-void
.end method
