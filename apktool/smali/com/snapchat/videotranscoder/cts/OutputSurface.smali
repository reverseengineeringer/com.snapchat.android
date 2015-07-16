.class public Lcom/snapchat/videotranscoder/cts/OutputSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputSurface"


# instance fields
.field protected mEGLContext:Landroid/opengl/EGLContext;

.field protected mEGLDisplay:Landroid/opengl/EGLDisplay;

.field protected mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mFrameAvailable:Z

.field protected mFrameSyncObject:Ljava/lang/Object;

.field private final mOverlayBitmap:Landroid/graphics/Bitmap;
    .annotation build Lchd;
    .end annotation
.end field

.field protected mSurface:Landroid/view/Surface;

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

.field protected final mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;II[FLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 47
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 48
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformationMatrix is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 70
    iput-object p5, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 72
    if-lez p2, :cond_2

    if-gtz p3, :cond_3

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->eglSetup(II)V

    .line 76
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->makeCurrent()V

    .line 77
    invoke-virtual {p0, p4}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->setup([F)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[FLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/utils/TranscodingResources;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 47
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 48
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 87
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transcodingResources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformationMatrix is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    .line 91
    iput-object p3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {p0, p2}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->setup([F)V

    .line 94
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 313
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_0
    return-void
.end method

.method private eglSetup(II)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 137
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    new-array v0, v8, [I

    .line 141
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 150
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 151
    new-array v6, v5, [I

    .line 152
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    .line 157
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v6, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 158
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v2

    aput p1, v0, v5

    const/16 v1, 0x3056

    aput v1, v0, v8

    aput p2, v0, v9

    const/4 v1, 0x4

    const/16 v4, 0x3038

    aput v4, v0, v1

    .line 165
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 166
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_4
    return-void

    .line 147
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 3

    .prologue
    .line 230
    const-string v0, "OutputSurface"

    const-string v1, "Awaiting a new image"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 237
    :try_start_1
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/Utils;->getInstance()Lcom/snapchat/videotranscoder/utils/Utils;

    move-result-object v0

    const-string v2, "OutputSurface"

    invoke-virtual {v0, v2}, Lcom/snapchat/videotranscoder/utils/Utils;->haveLooper(Ljava/lang/String;)Z

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 242
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_1

    .line 243
    const-string v0, "OutputSurface"

    const-string v2, "Trying to get frame again"

    invoke-static {v0, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z

    .line 251
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 255
    const-string v0, "OutputSurface"

    const-string v1, "Done with updateTexImage"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public changeFragmentShader(Lcom/snapchat/videotranscoder/video/FragmentShader;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/video/FragmentShader;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 221
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->changeFragmentShader(Lcom/snapchat/videotranscoder/video/FragmentShader;)V

    .line 222
    return-void
.end method

.method public checkForNewImage(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 264
    const-string v1, "OutputSurface"

    const-string v2, "Checking for a new image"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 270
    :try_start_1
    iget-boolean v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z

    if-nez v2, :cond_0

    .line 272
    const-string v2, "OutputSurface"

    const-string v3, "No new image"

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    monitor-exit v1

    .line 286
    :goto_0
    return v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 280
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z

    .line 281
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    const-string v0, "OutputSurface"

    const-string v1, "New image available"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drawImage()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->drawFrame()V

    .line 294
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 298
    const-string v0, "OutputSurface"

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 303
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mFrameAvailable:Z

    .line 304
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->release()V

    .line 177
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 178
    const-string v0, "OutputSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEGLDisplay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "OutputSurface"

    const-string v1, "eglDestroySurface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 181
    const-string v0, "OutputSurface"

    const-string v1, "eglDestroyContext"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 183
    const-string v0, "OutputSurface"

    const-string v1, "eglReleaseThread"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 185
    const-string v0, "OutputSurface"

    const-string v1, "eglTerminate"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 188
    :cond_0
    const-string v0, "OutputSurface"

    const-string v1, "releasing surface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 193
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 194
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 195
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 196
    iput-object v3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    .line 197
    iput-object v3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 198
    iput-object v3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 199
    return-void
.end method

.method protected setup([F)V
    .locals 3

    .prologue
    .line 101
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformationMatrix is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transformationMatrix must be a a 4x4 matrix of length 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    new-instance v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTranscodingResources:Lcom/snapchat/videotranscoder/utils/TranscodingResources;

    invoke-direct {v0, v1, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;-><init>(Lcom/snapchat/videotranscoder/utils/TranscodingResources;[F)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    .line 107
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->setOverlayBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->initialize()V

    .line 114
    const-string v0, "OutputSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "textureID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->getExternalTextureId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mTextureRenderer:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->getExternalTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 128
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 129
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 130
    return-void
.end method
