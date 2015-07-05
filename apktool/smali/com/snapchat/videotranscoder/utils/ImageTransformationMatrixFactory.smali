.class public Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformationMatrix(Z)Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;
    .locals 1

    .prologue
    .line 6
    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;-><init>()V

    .line 10
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    goto :goto_0
.end method
