.class Lcom/addlive/view/GLThread$EglHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/view/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EglHelper"
.end annotation


# instance fields
.field mEGLConfigChooser:Lcom/addlive/view/GLThread$EGLConfigChooser;

.field mEGLContextFactory:Lcom/addlive/view/GLThread$EGLContextFactory;

.field mEGLWindowSurfaceFactory:Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/addlive/view/GLThread;


# direct methods
.method public constructor <init>(Lcom/addlive/view/GLThread;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 622
    iput-object p1, p0, Lcom/addlive/view/GLThread$EglHelper;->this$0:Lcom/addlive/view/GLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    # getter for: Lcom/addlive/view/GLThread;->type:Lcom/addlive/view/VideoViewType;
    invoke-static {p1}, Lcom/addlive/view/GLThread;->access$000(Lcom/addlive/view/GLThread;)Lcom/addlive/view/VideoViewType;

    move-result-object v0

    sget-object v1, Lcom/addlive/view/VideoViewType;->CIRCLE:Lcom/addlive/view/VideoViewType;

    if-ne v0, v1, :cond_0

    .line 624
    new-instance v0, Lcom/addlive/view/GLThread$CircleEGLConfigChooser;

    invoke-direct {v0, p1, v2}, Lcom/addlive/view/GLThread$CircleEGLConfigChooser;-><init>(Lcom/addlive/view/GLThread;Z)V

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLConfigChooser:Lcom/addlive/view/GLThread$EGLConfigChooser;

    .line 628
    :goto_0
    new-instance v0, Lcom/addlive/view/GLThread$DefaultContextFactory;

    invoke-direct {v0, p1, v3}, Lcom/addlive/view/GLThread$DefaultContextFactory;-><init>(Lcom/addlive/view/GLThread;Lcom/addlive/view/GLThread$1;)V

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLContextFactory:Lcom/addlive/view/GLThread$EGLContextFactory;

    .line 629
    new-instance v0, Lcom/addlive/view/GLThread$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v3}, Lcom/addlive/view/GLThread$DefaultWindowSurfaceFactory;-><init>(Lcom/addlive/view/GLThread$1;)V

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLWindowSurfaceFactory:Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;

    .line 630
    return-void

    .line 626
    :cond_0
    new-instance v0, Lcom/addlive/view/GLThread$SimpleEGLConfigChooser;

    invoke-direct {v0, p1, v2}, Lcom/addlive/view/GLThread$SimpleEGLConfigChooser;-><init>(Lcom/addlive/view/GLThread;Z)V

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLConfigChooser:Lcom/addlive/view/GLThread$EGLConfigChooser;

    goto :goto_0
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/addlive/view/GLThread$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 788
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createSurface(Landroid/graphics/SurfaceTexture;)Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 677
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 681
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 684
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    .line 696
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 698
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLWindowSurfaceFactory:Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLWindowSurfaceFactory:Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 707
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_6

    .line 708
    :cond_4
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 709
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_5

    .line 710
    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_5
    const/4 v0, 0x0

    .line 723
    :goto_0
    return-object v0

    .line 719
    :cond_6
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 720
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/addlive/view/GLThread$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 723
    :cond_7
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 766
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 770
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLWindowSurfaceFactory:Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 773
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 776
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLContextFactory:Lcom/addlive/view/GLThread$EGLContextFactory;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/view/GLThread$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 778
    iput-object v4, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 782
    iput-object v4, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 784
    :cond_1
    return-void
.end method

.method public purgeBuffers()V
    .locals 5

    .prologue
    .line 727
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 730
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 733
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 636
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 641
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 643
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 651
    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLConfigChooser:Lcom/addlive/view/GLThread$EGLConfigChooser;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Lcom/addlive/view/GLThread$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 660
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEGLContextFactory:Lcom/addlive/view/GLThread$EGLContextFactory;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/view/GLThread$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 661
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 662
    :cond_2
    iput-object v4, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 663
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/addlive/view/GLThread$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 666
    :cond_3
    iput-object v4, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 667
    return-void
.end method

.method public swap()Z
    .locals 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/addlive/view/GLThread$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/addlive/view/GLThread$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 749
    packed-switch v0, :pswitch_data_0

    .line 759
    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/addlive/view/GLThread$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 762
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 751
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    .line 756
    :pswitch_2
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
