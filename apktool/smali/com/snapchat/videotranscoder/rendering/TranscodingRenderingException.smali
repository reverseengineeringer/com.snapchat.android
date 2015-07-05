.class public Lcom/snapchat/videotranscoder/rendering/TranscodingRenderingException;
.super Lcom/snapchat/videotranscoder/task/TranscodingRuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/task/TranscodingRuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/task/TranscodingRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/task/TranscodingRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method
