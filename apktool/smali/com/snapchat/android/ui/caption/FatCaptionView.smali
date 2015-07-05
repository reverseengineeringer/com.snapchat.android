.class public Lcom/snapchat/android/ui/caption/FatCaptionView;
.super Lcom/snapchat/android/ui/caption/SnapCaptionView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/ui/caption/SnapCaptionView",
        "<",
        "Lcom/snapchat/android/ui/caption/FatCaptionEditText;",
        ">;"
    }
.end annotation


# instance fields
.field private f:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getOrientationAngle()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->f:D

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 44
    const-string v0, "captionPreviousXPercentageOnScreen"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getCaptionPositionX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 46
    new-instance v2, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    .line 47
    const-string v0, "captionPositionState"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    const-string v0, "captionLastOrientationAngle"

    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->f:D

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 49
    const-string v2, "captionInFreeMode"

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v2, "captionScaleEdited"

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Z

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-object v1
.end method

.method protected a(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/FatCaptionEditText;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getAttributes()Landroid/util/AttributeSet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_0

    const-string v0, "captionMaxLength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const-string v1, "captionMaxLength"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxTextLengthInputFilter(I)V

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->c()V

    .line 61
    return-void
.end method

.method protected bridge synthetic a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 0

    .prologue
    .line 25
    check-cast p3, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    return-void
.end method

.method protected a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 24

    .prologue
    .line 138
    if-nez p2, :cond_5

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getOrientationAngle()D

    move-result-wide v6

    const-string v4, "captionInFreeMode"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p3

    iput-boolean v4, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    const-string v4, "captionScaleEdited"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p3

    iput-boolean v4, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Z

    const-string v4, "captionPositionState"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;

    iget-wide v8, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->h:D

    move-object/from16 v0, p3

    iput-wide v8, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    iget-wide v8, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->i:D

    move-object/from16 v0, p3

    iput-wide v8, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-nez v5, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-super {v0, v1, v4, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V

    const-string v4, "captionPreviousXPercentageOnScreen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCaptionPositionX(F)V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    if-eqz v4, :cond_3

    iget v5, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->a:F

    move v10, v5

    :goto_1
    if-eqz v4, :cond_4

    iget v5, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->b:F

    :goto_2
    const-string v8, "captionLastOrientationAngle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    sub-double v12, v8, v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/snapchat/android/ui/caption/FatCaptionView;->f:D

    iget-object v6, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->c:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->c:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget v11, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->f:I

    iget v14, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->g:I

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    float-to-double v8, v6

    mul-double v8, v8, v16

    float-to-double v0, v7

    move-wide/from16 v20, v0

    mul-double v20, v20, v18

    sub-double v8, v8, v20

    float-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v20, v20, v18

    float-to-double v6, v7

    mul-double v6, v6, v16

    add-double v6, v6, v20

    sub-double v20, v16, v18

    const-wide/16 v22, 0x0

    cmpg-double v15, v20, v22

    if-gez v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    int-to-double v0, v15

    move-wide/from16 v20, v0

    add-double v8, v8, v20

    :cond_1
    add-double v16, v16, v18

    const-wide/16 v18, 0x0

    cmpg-double v15, v16, v18

    if-gez v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    add-double v6, v6, v16

    :cond_2
    double-to-float v8, v8

    div-int/lit8 v9, v11, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    double-to-float v6, v6

    div-int/lit8 v7, v14, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v6, 0x0

    aget v6, v7, v6

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(FF)V

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v6, v10

    move-object/from16 v0, p3

    iput v6, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    move-object/from16 v0, p3

    iput v5, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    move-object/from16 v0, p3

    iget v5, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    move-object/from16 v0, p3

    iget v5, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxWidth(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v8, v4, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->h:D

    double-to-float v4, v8

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v4}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_1

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 141
    :cond_5
    invoke-super/range {p0 .. p3}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->f()V

    goto/16 :goto_0
.end method

.method protected synthetic b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getCaptionPositionX()I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getCaptionPositionY()I

    move-result v2

    iget v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(FF)V

    .line 75
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 6

    .prologue
    .line 237
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d59999a

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxFontSize(D)V

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getMaxFontSize()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMinFontSize(D)V

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->g()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setVerticalFadingEdgeEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setFadingEdgeLength(I)V

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d()V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e()V

    .line 250
    :cond_1
    return-void
.end method

.method public getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    return-object v0
.end method

.method protected getLayout()Landroid/content/res/XmlResourceParser;
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method protected getOrientationAngle()D
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lavh;->d(Landroid/content/Context;)I

    move-result v2

    .line 176
    packed-switch v2, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-wide v0

    .line 180
    :pswitch_1
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    .line 182
    :pswitch_2
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    .line 184
    :pswitch_3
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCaptionColorPickedEvent(Lapp;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget v1, p1, Lbbc;->mColor:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setColor(I)V

    .line 269
    return-void
.end method

.method public onEditCaptionEvent(Lbbh;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 254
    iget-boolean v0, p1, Lbbh;->mIsEditing:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->setBackgroundColor(I)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onGlobalLayoutEvent(Lbbt;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b()V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 206
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 209
    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 215
    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    sub-int/2addr v1, v0

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getKeyboardHeight()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setKeyboardHeight(I)V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Z)V

    .line 223
    :cond_2
    return-void
.end method
