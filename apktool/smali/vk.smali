.class public final Lvk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lxh;)D
    .locals 4
    .param p0    # Lxh;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 133
    iget v0, p0, Lxh;->heightPixels:I

    int-to-double v0, v0

    iget v2, p0, Lxh;->widthPixels:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(II)I
    .locals 0

    .prologue
    .line 52
    if-le p0, p1, :cond_0

    .line 54
    :goto_0
    return p1

    .line 53
    :cond_0
    if-gez p0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move p1, p0

    .line 54
    goto :goto_0
.end method

.method public static a(I)Landroid/hardware/Camera;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 166
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()[Landroid/hardware/Camera$CameraInfo;
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 116
    new-array v2, v1, [Landroid/hardware/Camera$CameraInfo;

    .line 117
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v0

    .line 119
    aget-object v3, v2, v0

    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-object v2
.end method
