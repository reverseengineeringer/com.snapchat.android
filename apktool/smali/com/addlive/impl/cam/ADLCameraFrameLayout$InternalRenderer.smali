.class Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/cam/ADLCameraFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalRenderer"
.end annotation


# instance fields
.field private mCamHeight:I

.field private mCamWidth:I

.field private final mFragmentShader:Ljava/lang/String;

.field private mFrameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

.field private mHeight:I

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mRenderTextureL:Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

.field private mRenderTextureP:Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

.field private mSTMatrix:[F

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I

.field private final mVertexShader:Ljava/lang/String;

.field private mWidth:I

.field private final mXyzUv:[F

.field private mXyzUvBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field final synthetic this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;


# direct methods
.method public constructor <init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Lcom/addlive/impl/cb/ADLInjectFrameCb;II)V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 550
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUv:[F

    .line 522
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mVertexShader:Ljava/lang/String;

    .line 532
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mFragmentShader:Ljava/lang/String;

    .line 540
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mMVPMatrix:[F

    .line 541
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSTMatrix:[F

    .line 551
    iput p3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamWidth:I

    .line 552
    iput p4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamHeight:I

    .line 554
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    .line 556
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUv:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 560
    iput-object p2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mFrameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

    .line 561
    return-void

    .line 515
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public drawFrame(IIJ)V
    .locals 11

    .prologue
    .line 602
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 604
    const v0, 0x3fc90fdb

    add-int/lit8 v1, p1, 0x3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 606
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 607
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mRenderTextureL:Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mTextureId:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->onDrawFrame(Landroid/graphics/SurfaceTexture;IF)V

    .line 609
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mFrameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

    const/4 v1, 0x0

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamWidth:I

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamHeight:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-interface/range {v0 .. v9}, Lcom/addlive/impl/cb/ADLInjectFrameCb;->injectFrame([BIIIIIIJ)V

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSTMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 623
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mWidth:I

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 624
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 625
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 626
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 627
    const v0, 0x8d65

    iget v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 629
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 630
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 632
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 634
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 635
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->maTextureHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 637
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 639
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 640
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mMVPMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 641
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->muSTMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSTMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 642
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 643
    return-void

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mRenderTextureP:Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mTextureId:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->onDrawFrame(Landroid/graphics/SurfaceTexture;IF)V

    .line 616
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mFrameReceiver:Lcom/addlive/impl/cb/ADLInjectFrameCb;

    const/4 v1, 0x0

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamHeight:I

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-interface/range {v0 .. v9}, Lcom/addlive/impl/cb/ADLInjectFrameCb;->injectFrame([BIIIIIIJ)V

    goto/16 :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .prologue
    .line 594
    iput p2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mWidth:I

    .line 595
    iput p3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mHeight:I

    .line 596
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    .prologue
    .line 574
    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const v0, 0x8d65

    # invokes: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createTexture(I)I
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$500(I)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mTextureId:I

    .line 576
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 577
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamWidth:I

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;-><init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;II)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mRenderTextureL:Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

    .line 578
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamHeight:I

    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mCamWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;-><init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;II)V

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mRenderTextureP:Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;

    .line 579
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    # invokes: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createProgram(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$600(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mProgram:I

    .line 580
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->maPositionHandle:I

    .line 581
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->maTextureHandle:I

    .line 582
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->muMVPMatrixHandle:I

    .line 583
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->muSTMatrixHandle:I

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->startCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    const-string v0, "AddLive_SDK_FCam"

    const-string v1, "critical error: failed to start camera"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startCamera()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    # invokes: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->startCamera(Landroid/graphics/SurfaceTexture;)V
    invoke-static {v0, v1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$300(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Landroid/graphics/SurfaceTexture;)V

    .line 566
    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$InternalRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    # invokes: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->stopCamera(Landroid/graphics/SurfaceTexture;)V
    invoke-static {v0, v1}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$400(Lcom/addlive/impl/cam/ADLCameraFrameLayout;Landroid/graphics/SurfaceTexture;)V

    .line 571
    :cond_0
    return-void
.end method
