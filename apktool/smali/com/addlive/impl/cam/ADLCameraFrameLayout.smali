.class public Lcom/addlive/impl/cam/ADLCameraFrameLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/addlive/impl/cam/ADLCamera;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;,
        Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;,
        Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK_FCam"


# instance fields
.field private mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

.field private mContext:Landroid/content/Context;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;


# direct methods
.method public constructor <init>(Lcom/addlive/impl/cb/ADLInjectFrameCb;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 78
    :cond_0
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;-><init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    .line 81
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v2}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->getHeight()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;-><init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Lcom/addlive/impl/cb/ADLInjectFrameCb;II)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    .line 85
    new-instance v0, Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 86
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 87
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 88
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->startCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$400(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->stopCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$500(I)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createTexture(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createFramebuffer(I)I

    move-result v0

    return v0
.end method

.method private static createFramebuffer(I)I
    .locals 5

    .prologue
    const v4, 0x8d40

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 240
    new-array v0, v1, [I

    .line 241
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 242
    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v4, v1, v2, p0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 245
    invoke-static {v4}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 246
    const-string v1, "AddLive_SDK_FCam"

    const-string v2, "framebuffer not complete"

    invoke-static {v1, v2}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    aget v0, v0, v3

    return v0
.end method

.method private static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 272
    const v1, 0x8b31

    invoke-static {v1, p0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 273
    if-nez v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 277
    if-eqz v3, :cond_0

    .line 280
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 281
    if-eqz v1, :cond_0

    .line 284
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 285
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 286
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 288
    new-array v2, v4, [I

    .line 289
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 290
    aget v2, v2, v0

    if-eq v2, v4, :cond_2

    .line 291
    const-string v2, "AddLive_SDK_FCam"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not link program: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 297
    goto :goto_0
.end method

.method private static createTexture(I)I
    .locals 5

    .prologue
    const v4, 0x812f

    const/4 v1, 0x1

    const v3, 0x46180400    # 9729.0f

    const/4 v2, 0x0

    .line 229
    new-array v0, v1, [I

    .line 230
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 231
    aget v1, v0, v2

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 232
    const/16 v1, 0x2801

    invoke-static {p0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 233
    const/16 v1, 0x2800

    invoke-static {p0, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 234
    const/16 v1, 0x2802

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 235
    const/16 v1, 0x2803

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 236
    aget v0, v0, v2

    return v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 252
    if-nez v1, :cond_0

    .line 267
    :goto_0
    return v0

    .line 255
    :cond_0
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 256
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 258
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 259
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 260
    aget v2, v2, v0

    if-nez v2, :cond_1

    .line 261
    const-string v2, "AddLive_SDK_FCam"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not compile shader "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method private startCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 218
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "startCamera"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 220
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0, p1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->start(Landroid/graphics/SurfaceTexture;)V

    .line 222
    :cond_0
    return-void
.end method

.method private stopCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 226
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 128
    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 131
    :cond_0
    iput-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 132
    iput-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    .line 133
    iput-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    .line 134
    return-void
.end method

.method public getCameraDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->getCameraDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->getDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 177
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 212
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 199
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onActivityPaused"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->stopCamera()V

    .line 201
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->stop()V

    .line 202
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 203
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 192
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onActivityResumed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->configure()V

    .line 194
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 195
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 207
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onActivitySaveInst"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 182
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onActivityStarted"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 187
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onActivityStopped"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$1;-><init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 173
    return-void
.end method

.method public processProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0, p1, p2}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->processProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0, p1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->setDevice(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->stop()V

    .line 145
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->configure()V

    .line 146
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->startCamera()V

    .line 147
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 93
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ADLCameraFrameLayout expects a FrameLayout object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->stop()V

    .line 100
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->configure()V

    .line 105
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 106
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mRenderer:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->stopCamera()V

    .line 115
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mCamera:Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;

    invoke-virtual {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalCamera;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->mFrameLayout:Landroid/widget/FrameLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method
