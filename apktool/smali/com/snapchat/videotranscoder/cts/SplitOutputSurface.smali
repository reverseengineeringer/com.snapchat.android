.class public Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;
.super Lcom/snapchat/videotranscoder/cts/OutputSurface;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitOutputSurface"


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[F)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[FLandroid/graphics/Bitmap;)V

    .line 25
    return-void
.end method


# virtual methods
.method public changeSplit(F)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->setSplit(F)V

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "SplitOutputSurface"

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setShader(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v0, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->enableSplit(Z)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->setLeftFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->setRightFilter(Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;)Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/FragmentShader$Builder;->build()Lcom/snapchat/videotranscoder/video/FragmentShader;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->changeFragmentShader(Lcom/snapchat/videotranscoder/video/FragmentShader;)V

    .line 64
    return-void
.end method

.method protected setup([F)V
    .locals 3

    .prologue
    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformationMatrix is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transformationMatrix must be a a 4x4 matrix of length 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v1, p1}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[F)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    .line 37
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->initialize()V

    .line 39
    const-string v0, "SplitOutputSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "textureID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->getExternalTextureId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->getExternalTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 42
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 43
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mSurface:Landroid/view/Surface;

    .line 44
    return-void
.end method

.method public updateImage()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 70
    return-void
.end method
