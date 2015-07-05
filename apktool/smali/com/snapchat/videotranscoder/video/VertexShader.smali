.class public Lcom/snapchat/videotranscoder/video/VertexShader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/utils/TranscodingResources;->loadVertexShader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VertexShader;->mText:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VertexShader;->mText:Ljava/lang/String;

    return-object v0
.end method
