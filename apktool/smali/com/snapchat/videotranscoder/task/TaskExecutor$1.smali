.class Lcom/snapchat/videotranscoder/task/TaskExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/task/TaskExecutor;->scheduleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/videotranscoder/task/TaskExecutor;

.field final synthetic val$taskWrapper:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->this$0:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->val$taskWrapper:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->this$0:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->val$taskWrapper:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    # invokes: Lcom/snapchat/videotranscoder/task/TaskExecutor;->completeTask(Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    invoke-static {v0, v1, p1}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->access$000(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 119
    return-void
.end method
