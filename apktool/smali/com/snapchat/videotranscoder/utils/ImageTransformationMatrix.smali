.class public Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mTransformation:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    .line 42
    return-void
.end method


# virtual methods
.method public adjustForTranscoderTransformation()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v4, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    return-object v0
.end method

.method public flipHorizontal()[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 58
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    invoke-static {v0, v1, v6, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    return-object v0
.end method

.method public flipVertical()[F
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 46
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    return-object v0
.end method

.method public rotate180Degrees()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 65
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    return-object v0
.end method

.method public rotateLeft()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->adjustForTranscoderTransformation()[F

    move-result-object v0

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    return-object v0
.end method

.method public rotateRight()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->adjustForTranscoderTransformation()[F

    move-result-object v0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->mTransformation:[F

    return-object v0
.end method
