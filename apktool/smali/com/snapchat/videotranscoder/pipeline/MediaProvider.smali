.class public abstract Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProvider"


# instance fields
.field public mEncoder:Lcom/snapchat/videotranscoder/pipeline/Encoder;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/pipeline/Encoder;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->mEncoder:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract getPercentComplete()I
.end method

.method public release()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->mEncoder:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    .line 31
    return-void
.end method
