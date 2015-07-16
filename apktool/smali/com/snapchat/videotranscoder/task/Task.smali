.class public abstract Lcom/snapchat/videotranscoder/task/Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;,
        Lcom/snapchat/videotranscoder/task/Task$DoneCallback;,
        Lcom/snapchat/videotranscoder/task/Task$Status;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field private volatile mStatus:Lcom/snapchat/videotranscoder/task/Task$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->INVALID:Lcom/snapchat/videotranscoder/task/Task$Status;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/Task;->mStatus:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 41
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task;->mStatus:Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method

.method public abstract run(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param
.end method

.method public runAsync(Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$DoneCallback;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 73
    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/videotranscoder/task/Task$1;

    invoke-direct {v1, p0, p0, p2, p1}, Lcom/snapchat/videotranscoder/task/Task$1;-><init>(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method

.method protected setStatus(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/task/Task$Status;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/Task;->mStatus:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 63
    return-void
.end method

.method public abstract tryAbort()Lcom/snapchat/videotranscoder/task/Task$Status;
.end method
