.class public abstract Lcom/snapchat/videotranscoder/pipeline/Stage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "STAGE"

.field protected static final kTIMEOUT_USEC:I = 0x2710


# instance fields
.field public mDone:Z

.field protected mDoneCallback:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;


# direct methods
.method protected constructor <init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->mDoneCallback:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->mDone:Z

    .line 16
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->mDoneCallback:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract processFrame()V
.end method

.method public stageComplete()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->mDone:Z

    .line 25
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->mDoneCallback:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;

    invoke-interface {v0}, Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;->done()V

    .line 26
    return-void
.end method
