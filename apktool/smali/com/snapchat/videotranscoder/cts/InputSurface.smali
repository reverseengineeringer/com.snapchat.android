.class public Lcom/snapchat/videotranscoder/cts/InputSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final TAG:Ljava/lang/String; = "InputSurface"

.field private static final VERBOSE:Z


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mShouldReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;-><init>(Landroid/view/Surface;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Z)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mShouldReleaseSurface:Z

    .line 45
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mSurface:Landroid/view/Surface;

    .line 50
    iput-boolean p2, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mShouldReleaseSurface:Z

    .line 51
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->eglSetup()V

    .line 52
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": EGL error: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL error encountered (see log)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    return-void
.end method

.method private eglSetup()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 60
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 64
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 73
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 74
    new-array v6, v5, [I

    .line 75
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 81
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v6, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 82
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-array v0, v5, [I

    const/16 v1, 0x3038

    aput v1, v0, v2

    .line 89
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 90
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4
    return-void

    .line 71
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
        0x3142
        0x1
        0x3038
    .end array-data

    .line 80
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 106
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 108
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mShouldReleaseSurface:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mShouldReleaseSurface:Z

    .line 113
    :cond_1
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 114
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 115
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 116
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mSurface:Landroid/view/Surface;

    .line 117
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 147
    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
