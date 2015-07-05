.class abstract Lcom/addlive/view/GLThread$BaseConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/view/GLThread$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/view/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/addlive/view/GLThread;


# direct methods
.method public constructor <init>(Lcom/addlive/view/GLThread;[I)V
    .locals 1

    .prologue
    .line 488
    iput-object p1, p0, Lcom/addlive/view/GLThread$BaseConfigChooser;->this$0:Lcom/addlive/view/GLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    invoke-direct {p0, p2}, Lcom/addlive/view/GLThread$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/view/GLThread$BaseConfigChooser;->mConfigSpec:[I

    .line 490
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 527
    array-length v0, p1

    .line 528
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    .line 529
    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 531
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 532
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x3038

    aput v2, v1, v0

    .line 533
    return-object v1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 493
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 494
    iget-object v2, p0, Lcom/addlive/view/GLThread$BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    aget v4, v5, v4

    .line 501
    if-gtz v4, :cond_1

    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 507
    iget-object v2, p0, Lcom/addlive/view/GLThread$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/addlive/view/GLThread$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 512
    if-nez v0, :cond_3

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_3
    return-object v0
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
