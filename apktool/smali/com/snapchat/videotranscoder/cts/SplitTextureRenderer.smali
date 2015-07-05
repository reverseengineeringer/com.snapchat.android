.class public Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;
.super Lcom/snapchat/videotranscoder/cts/TextureRenderer;
.source "SourceFile"


# instance fields
.field private mCurrentSplit:F

.field private mInvertedSTM:[F

.field private mRequestedSplit:F

.field private mTransformHandle:I

.field private muSplitHandle:I


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[F)V
    .locals 3
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[F)V

    .line 22
    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mCurrentSplit:F

    .line 23
    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mRequestedSplit:F

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mInvertedSTM:[F

    .line 32
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mInvertedSTM:[F

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 33
    return-void
.end method


# virtual methods
.method protected attachExtraUniforms()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 79
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mRequestedSplit:F

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mCurrentSplit:F

    .line 82
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mProgram:I

    const-string v1, "uSplit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->muSplitHandle:I

    .line 83
    const-string v0, "glGetUniformLocation uSplit"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->muSplitHandle:I

    if-ne v0, v2, :cond_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uSplit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->muSplitHandle:I

    iget v1, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mCurrentSplit:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 88
    const-string v0, "glUniform1f"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mProgram:I

    const-string v1, "uTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mTransformHandle:I

    .line 91
    const-string v0, "glGetUniformLocation uTransform"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mTransformHandle:I

    if-ne v0, v2, :cond_1

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for transform"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mTransformHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mInvertedSTM:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 96
    const-string v0, "glUniformMatrix4fv"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public bridge synthetic changeFragmentShader(Lcom/snapchat/videotranscoder/video/FragmentShader;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->changeFragmentShader(Lcom/snapchat/videotranscoder/video/FragmentShader;)V

    return-void
.end method

.method public bridge synthetic checkGlError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic drawFrame()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->drawFrame()V

    return-void
.end method

.method public bridge synthetic getExternalTextureId()I
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->getExternalTextureId()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 44
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->initialize()V

    .line 46
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->initializeFragmentShader()V

    .line 48
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mProgram:I

    const-string v1, "uSplit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->muSplitHandle:I

    .line 49
    const-string v0, "glGetUniformLocation uSplit"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->muSplitHandle:I

    if-ne v0, v2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uSplit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mProgram:I

    const-string v1, "uTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mTransformHandle:I

    .line 55
    const-string v0, "glGetUniformLocation uTransform"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mTransformHandle:I

    if-ne v0, v2, :cond_1

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for transform"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    return-void
.end method

.method protected initializeFragmentShader()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/snapchat/videotranscoder/video/VertexShader;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/video/VertexShader;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    .line 64
    new-instance v1, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v1, v2}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->enableSplit(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->build()Lcom/snapchat/videotranscoder/video/FragmentShader;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VertexShader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/FragmentShader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mProgram:I

    .line 69
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->release()V

    return-void
.end method

.method public setOverlayBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSplit(F)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->mRequestedSplit:F

    .line 101
    return-void
.end method
