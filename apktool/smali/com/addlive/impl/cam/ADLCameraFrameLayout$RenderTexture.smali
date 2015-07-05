.class Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/cam/ADLCameraFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderTexture"
.end annotation


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field private mFramebufferId:I

.field private mHeight:I

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

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
.method public constructor <init>(Lcom/addlive/impl/cam/ADLCameraFrameLayout;II)V
    .locals 9

    .prologue
    const/16 v2, 0x1908

    const/16 v4, 0x10

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 684
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->this$0:Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUv:[F

    .line 658
    const-string v3, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    iput-object v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mVertexShader:Ljava/lang/String;

    .line 668
    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mFragmentShader:Ljava/lang/String;

    .line 676
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mMVPMatrix:[F

    .line 677
    new-array v3, v4, [F

    iput-object v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mSTMatrix:[F

    .line 685
    iput p2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mWidth:I

    .line 686
    iput p3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mHeight:I

    .line 688
    # invokes: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createTexture(I)I
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$500(I)I

    move-result v3

    iput v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mTextureId:I

    .line 689
    iget v3, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mWidth:I

    iget v4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mHeight:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 692
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 694
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mTextureId:I

    # invokes: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createFramebuffer(I)I
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$700(I)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mFramebufferId:I

    .line 696
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    .line 697
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUv:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 699
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    # invokes: Lcom/addlive/impl/cam/ADLCameraFrameLayout;->createProgram(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v2}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;->access$600(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mProgram:I

    .line 700
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->maPositionHandle:I

    .line 701
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->maTextureHandle:I

    .line 702
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->muMVPMatrixHandle:I

    .line 703
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->muSTMatrixHandle:I

    .line 705
    const v0, 0x8d40

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 706
    return-void

    .line 651
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
.method public onDrawFrame(Landroid/graphics/SurfaceTexture;IF)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x3

    const/4 v7, 0x1

    const v6, 0x8d40

    const/4 v3, 0x0

    .line 710
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 712
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mFramebufferId:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 713
    const v0, 0x8ce0

    const/16 v2, 0xde1

    iget v4, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mTextureId:I

    invoke-static {v6, v0, v2, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 716
    invoke-static {v6}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v2, 0x8cd5

    if-eq v0, v2, :cond_0

    .line 717
    const-string v0, "AddLive_SDK_FCam"

    const-string v2, "framebuffer not complete"

    invoke-static {v0, v2}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mWidth:I

    iget v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mHeight:I

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 720
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 721
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 722
    const v0, 0x8d65

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 724
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 725
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 726
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 728
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 729
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->maTextureHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mXyzUvBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 730
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 732
    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 733
    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 734
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mMVPMatrix:[F

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 735
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mMVPMatrix:[F

    aput v0, v2, v3

    .line 736
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mMVPMatrix:[F

    neg-float v4, v1

    aput v4, v2, v7

    .line 737
    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mMVPMatrix:[F

    aput v1, v2, v8

    .line 738
    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mMVPMatrix:[F

    const/4 v2, 0x5

    aput v0, v1, v2

    .line 739
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mMVPMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 740
    iget v0, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mSTMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 741
    const/4 v0, 0x5

    invoke-static {v0, v3, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 742
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 743
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 745
    const/16 v0, 0xde1

    iget v1, p0, Lcom/addlive/impl/cam/ADLCameraFrameLayout$RenderTexture;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 746
    return-void
.end method
