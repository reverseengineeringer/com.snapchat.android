.class public final Laws;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laws$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public static a(Landroid/graphics/Bitmap$Config;)I
    .locals 3
    .param p0    # Landroid/graphics/Bitmap$Config;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x4

    .line 33
    sget-object v1, Laws$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 42
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown Bitmap config."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :pswitch_0
    const/4 v0, 0x2

    .line 43
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 40
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v5, v2, v0

    div-float v6, v4, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    div-float v0, v3, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    if-ge p1, v2, :cond_2

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    :goto_1
    if-ge p2, v3, :cond_0

    sub-int v1, v3, p2

    div-int/lit8 v1, v1, 0x2

    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    neg-int v0, v2

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    :goto_2
    return-object p0

    .line 133
    :cond_1
    div-float v0, v4, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 138
    :cond_3
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1, p2, v1}, Lawo;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    if-nez v0, :cond_4

    .line 140
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    :cond_4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 146
    if-eqz p3, :cond_5

    .line 147
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lawo;->a(Landroid/graphics/Bitmap;)V

    :cond_5
    move-object p0, v0

    .line 149
    goto :goto_2
.end method

.method public static a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawf;->a(Landroid/content/Context;)I

    move-result v1

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawf;->c(Landroid/content/Context;)I

    move-result v2

    .line 96
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lawo;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    if-nez v0, :cond_1

    .line 101
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 103
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-static {v2, p0}, Laws;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 108
    invoke-static {v2, v0}, Laws;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    goto :goto_1

    .line 112
    :cond_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 196
    aget v1, v0, v2

    if-nez v1, :cond_0

    aget v1, v0, v3

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    aget v1, v0, v2

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 200
    return-void
.end method
