.class public final Lyq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyq$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a(Landroid/text/Editable;)I
    .locals 5
    .param p0    # Landroid/text/Editable;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, -0x1

    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-static {p0}, Lyq;->b(Landroid/text/Editable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 198
    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p0, v4, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {v3}, Lyq;->c(Ljava/lang/String;)I

    move-result v3

    .line 200
    if-ne v3, v1, :cond_1

    move v0, v1

    .line 206
    :cond_0
    return v0

    .line 203
    :cond_1
    add-int/2addr v0, v3

    .line 204
    goto :goto_0
.end method

.method public static a(Landroid/widget/EditText;)I
    .locals 3
    .param p0    # Landroid/widget/EditText;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Lyq;->a(Ljava/lang/String;I)Lyq$a;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Lyq;->b(Ljava/lang/String;I)Lyq$a;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "check containsCashtagAtSelection first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget v2, v0, Lyq$a;->a:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lyq$a;->b:I

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lyq;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)Lyq$a;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 241
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 242
    :goto_0
    if-nez v0, :cond_8

    move-object v0, v2

    .line 244
    :cond_1
    :goto_1
    return-object v0

    .line 241
    :cond_2
    const/4 v0, -0x1

    move v1, v3

    :goto_2
    if-ge v1, p1, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-lt v1, p1, :cond_6

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    if-le v4, v0, :cond_7

    new-instance v0, Lyq$a;

    invoke-direct {v0, p1, p1}, Lyq$a;-><init>(II)V

    goto :goto_0

    :cond_7
    new-instance v1, Lyq$a;

    invoke-direct {v1, v4, v0}, Lyq$a;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 243
    :cond_8
    iget v1, v0, Lyq$a;->a:I

    iget v4, v0, Lyq$a;->b:I

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Lyq;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v1}, Lyq;->c(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_9

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_9
    move v1, v3

    goto :goto_4
.end method

.method public static a(Landroid/widget/EditText;I)V
    .locals 13
    .param p0    # Landroid/widget/EditText;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lyq;->a(Ljava/lang/String;I)Lyq$a;

    move-result-object v0

    .line 108
    if-nez v0, :cond_4

    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lyq;->b(Ljava/lang/String;I)Lyq$a;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lyq$a;->a:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v1, Lyq$a;->b:I

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lyq;->e(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 114
    iget v4, v1, Lyq$a;->a:I

    iget v5, v1, Lyq$a;->b:I

    invoke-interface {v2, v4, v5, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 115
    iget v0, v1, Lyq$a;->b:I

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int v3, v4, v3

    add-int/2addr v0, v3

    iput v0, v1, Lyq$a;->b:I

    move-object v0, v1

    .line 130
    :cond_0
    :goto_1
    iget v1, v0, Lyq$a;->a:I

    iget v3, v0, Lyq$a;->b:I

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lyq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v1, v12, v5, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    invoke-static {v5, v6}, Lawf;->a(FLandroid/content/Context;)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    invoke-static {v5, v6}, Lawf;->a(FLandroid/content/Context;)F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v7, -0x1

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0200ae

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v12, v12, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v9, v1, v4, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v1, v12, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v1, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iget v1, v0, Lyq$a;->a:I

    iget v4, v0, Lyq$a;->b:I

    const/16 v5, 0x21

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    iget v1, v0, Lyq$a;->b:I

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget v1, v0, Lyq$a;->b:I

    const-string v3, " "

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget v0, v0, Lyq$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 133
    :goto_2
    return-void

    .line 112
    :cond_1
    rem-int/lit8 v3, v0, 0x64

    if-nez v3, :cond_2

    const-string v3, "%d"

    new-array v4, v5, [Ljava/lang/Object;

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v12

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v3, "%.2f"

    new-array v4, v5, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v12

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "check containsCashtagAtSelection first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    iget v1, v0, Lyq$a;->a:I

    iget v3, v0, Lyq$a;->b:I

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v3, "\\$(?i:pi|e)"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-static {v1}, Lyq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 125
    iget v4, v0, Lyq$a;->a:I

    iget v5, v0, Lyq$a;->b:I

    invoke-interface {v2, v4, v5, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 126
    iget v1, v0, Lyq$a;->b:I

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int v3, v4, v3

    add-int/2addr v1, v3

    iput v1, v0, Lyq$a;->b:I

    goto/16 :goto_1

    .line 132
    :cond_5
    iget v0, v0, Lyq$a;->b:I

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 273
    const-string v0, "\\$([1-9],\\d{3})(\\.\\d{0,2})?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\$(?i:pi|e)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 183
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 189
    :cond_0
    :goto_0
    return-object p0

    .line 185
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Landroid/text/Editable;)Ljava/util/List;
    .locals 3
    .param p0    # Landroid/text/Editable;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/text/style/ImageSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ImageSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Lyq$a;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/16 v1, 0x24

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v0, v2

    .line 264
    :goto_0
    return-object v0

    .line 252
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, p1

    :cond_2
    move v1, v0

    .line 259
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_8

    .line 260
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\\$\\(.*\\)"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyq;->e(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_5

    const/16 v6, 0x64

    if-lt v3, v6, :cond_5

    move v3, v4

    :goto_2
    if-eqz v3, :cond_7

    .line 261
    if-gt p1, v1, :cond_6

    new-instance v2, Lyq$a;

    invoke-direct {v2, v0, v1}, Lyq$a;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 256
    if-ltz v0, :cond_4

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    move v3, v5

    .line 260
    goto :goto_2

    :cond_6
    move-object v0, v2

    .line 261
    goto :goto_0

    .line 259
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    move-object v0, v2

    .line 264
    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 281
    const-string v2, "$."

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v2}, Lyq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 285
    const-string v3, "\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 294
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    :goto_2
    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    goto :goto_0

    .line 290
    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 295
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 292
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 301
    const-string v0, "(?i)PI"

    const-string v1, "3.14"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "(?i)E"

    const-string v2, "2.72"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    return-object v0
.end method

.method private static e(Ljava/lang/String;)I
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string v3, "([^\\d\\s\\.\\)]|^)\\s*\\+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 335
    const-string v4, "[\\s\\d+/*\\-()\\.\u00d7\u00f7]*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 336
    :goto_0
    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    move v0, v6

    .line 344
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 335
    goto :goto_0

    .line 338
    :cond_2
    const/16 v0, 0xd7

    const/16 v3, 0x2a

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 339
    const/16 v1, 0xf7

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 340
    new-instance v0, Lbya;

    const/16 v1, 0x27

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lbya;-><init>(CZZZZ)V

    .line 342
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v7, v1}, Lbya;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 344
    :catch_0
    move-exception v0

    :goto_2
    move v0, v6

    goto :goto_1

    .line 342
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I
    :try_end_0
    .catch Lbxy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 344
    :catch_1
    move-exception v0

    goto :goto_2
.end method
