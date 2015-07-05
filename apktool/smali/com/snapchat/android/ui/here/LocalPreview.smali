.class public Lcom/snapchat/android/ui/here/LocalPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/here/LocalPreview$a;,
        Lcom/snapchat/android/ui/here/LocalPreview$b;
    }
.end annotation


# static fields
.field private static e:Z


# instance fields
.field protected a:Landroid/content/Context;

.field public b:Lcom/snapchat/android/ui/here/LocalPreview$a;

.field protected c:Landroid/util/DisplayMetrics;

.field protected d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 137
    :try_start_0
    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 138
    const-string v0, "LocalPreview"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/ui/here/LocalPreview;->e:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "GlCameraPreview"

    const-string v2, "System.loadLibrary(\"LocalPreview\") failed: %s."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lcom/snapchat/android/ui/here/LocalPreview;->e:Z

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/snapchat/android/ui/here/LocalPreview$b;

    const-string v1, "Native library failed to load."

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/ui/here/LocalPreview$b;-><init>(Lcom/snapchat/android/ui/here/LocalPreview;Ljava/lang/String;B)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LocalPreview;->a:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->c:Landroid/util/DisplayMetrics;

    .line 52
    new-instance v0, Lcom/snapchat/android/ui/here/LocalPreview$a;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/here/LocalPreview$a;-><init>(Lcom/snapchat/android/ui/here/LocalPreview;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->b:Lcom/snapchat/android/ui/here/LocalPreview$a;

    .line 53
    return-void
.end method

.method public static a(IIII)V
    .locals 0

    .prologue
    .line 109
    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeSetPreviewSize(IIII)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/LocalPreview;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LocalPreview;->a:Landroid/content/Context;

    const v2, 0x7f060004

    invoke-static {v1, v2}, Lbfb;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x8b31

    invoke-static {v2, v1}, Lbfc;->a(ILjava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/snapchat/android/ui/here/LocalPreview;->a:Landroid/content/Context;

    const v3, 0x7f060003

    invoke-static {v1, v3}, Lbfb;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x8b30

    invoke-static {v3, v1}, Lbfc;->a(ILjava/lang/String;)I

    move-result v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "a_Position"

    aput-object v1, v4, v0

    const-string v1, "a_TexCoordinate"

    aput-object v1, v4, v6

    const/4 v1, 0x2

    const-string v5, "a_CircleCoordinate"

    aput-object v5, v4, v1

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    move v2, v0

    :goto_0
    if-ge v2, v7, :cond_0

    aget-object v3, v4, v2

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v2, v6, [I

    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v2, v0

    if-nez v2, :cond_2

    const-string v2, "ShaderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error compiling program: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating program."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeInitialize(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/LocalPreview;[B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeRenderFrame([B)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/snapchat/android/ui/here/LocalPreview;->e:Z

    return v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/ui/here/LocalPreview;->e:Z

    .line 44
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeIsPreviewSizeSet()Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 0

    .prologue
    .line 117
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeResetPreviewSize()V

    .line 118
    return-void
.end method

.method public static e()V
    .locals 0

    .prologue
    .line 121
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeReflectX()V

    .line 122
    return-void
.end method

.method public static f()V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeReflectY()V

    .line 126
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeSetCircleRadius(F)V

    .line 130
    return-void
.end method

.method private static native nativeInitialize(I)V
.end method

.method private static native nativeIsPreviewSizeSet()Z
.end method

.method private static native nativeReflectX()V
.end method

.method private static native nativeReflectY()V
.end method

.method private native nativeRenderFrame([B)V
.end method

.method private static native nativeResetPreviewSize()V
.end method

.method private static native nativeSetCircleRadius(F)V
.end method

.method private static native nativeSetPreviewSize(IIII)V
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LocalPreview;->d:[B

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->b:Lcom/snapchat/android/ui/here/LocalPreview$a;

    iget-object v1, v0, Lcom/snapchat/android/util/gl/GlTextureView;->mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/util/gl/GlTextureView;->mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Lcom/snapchat/android/util/gl/GlTextureView$a;->mRenderRequested:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    .line 106
    :cond_0
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
