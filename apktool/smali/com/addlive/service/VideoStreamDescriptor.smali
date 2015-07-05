.class public Lcom/addlive/service/VideoStreamDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private maxBitRate:I

.field private maxFps:I

.field private maxHeight:I

.field private maxWidth:I

.field private publish:Z

.field private receive:Z

.field private useAdaptation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x280

    iput v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxWidth:I

    .line 24
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxHeight:I

    .line 25
    const/16 v0, 0x400

    iput v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxBitRate:I

    .line 26
    const/16 v0, 0xf

    iput v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxFps:I

    .line 27
    iput-boolean v1, p0, Lcom/addlive/service/VideoStreamDescriptor;->publish:Z

    .line 28
    iput-boolean v1, p0, Lcom/addlive/service/VideoStreamDescriptor;->receive:Z

    .line 29
    iput-boolean v1, p0, Lcom/addlive/service/VideoStreamDescriptor;->useAdaptation:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getMaxFps()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxFps:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxWidth:I

    return v0
.end method

.method public isUseAdaptation()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/addlive/service/VideoStreamDescriptor;->useAdaptation:Z

    return v0
.end method

.method public setMaxFps(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxFps:I

    .line 68
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxHeight:I

    .line 56
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxWidth:I

    .line 44
    return-void
.end method

.method public setUseAdaptation(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/addlive/service/VideoStreamDescriptor;->useAdaptation:Z

    .line 80
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    const-string v1, "maxWidth"

    iget v2, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v1, "maxHeight"

    iget v2, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v1, "maxFps"

    iget v2, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxFps:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v1, "useAdaptation"

    iget-boolean v2, p0, Lcom/addlive/service/VideoStreamDescriptor;->useAdaptation:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 136
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoStreamDescriptor{maxWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/addlive/service/VideoStreamDescriptor;->maxFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useAdaptation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/VideoStreamDescriptor;->useAdaptation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
