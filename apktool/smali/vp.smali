.class public final Lvp;
.super Lvn;
.source "SourceFile"


# instance fields
.field private final n:Lbef;

.field private final o:Landroid/widget/TextView;

.field private final p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbef;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lvn;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 45
    iput-object p4, p0, Lvp;->n:Lbef;

    .line 46
    iget-object v1, p0, Lvp;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lvp;->o:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lvp;->f:Landroid/widget/TextView;

    const v2, 0x7f020021

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 49
    iget-object v1, p0, Lvp;->f:Landroid/widget/TextView;

    new-instance v2, Lvp$1;

    invoke-direct {v2, p0}, Lvp$1;-><init>(Lvp;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f020022

    invoke-static {p1, v1}, Laur;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    :goto_0
    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lvp;->o:Landroid/widget/TextView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    :goto_1
    iget-object v0, p0, Lvp;->o:Landroid/widget/TextView;

    new-instance v1, Lvp$2;

    invoke-direct {v1, p0}, Lvp$2;-><init>(Lvp;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-boolean v0, p4, Lbef;->mDuringPresence:Z

    iput-boolean v0, p0, Lvp;->p:Z

    .line 77
    invoke-virtual {p0}, Lvp;->a()V

    .line 78
    return-void

    .line 56
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Laur;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const v6, 0x3e9eb852    # 0.31f

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v2, v2

    mul-float v7, v10, v6

    sub-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {p1, v2}, Lvp;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v10, v6

    sub-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v10

    sub-float v6, v8, v6

    invoke-direct {v0, v9, v9, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v6

    int-to-float v6, v6

    invoke-virtual {v4, v0, v7, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v0, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v1, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lvp;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date_modified DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 171
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_1
    :goto_0
    return-object v3

    .line 166
    :cond_2
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Laur;->a(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 168
    if-nez v0, :cond_3

    .line 171
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 169
    :cond_3
    :try_start_2
    invoke-static {p0, v0}, Laur;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 171
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_4
    if-eqz v0, :cond_1

    .line 175
    invoke-static {v0, p1, p1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public final f()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    iget-object v0, p0, Lvp;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    iget-object v1, p0, Lvp;->n:Lbef;

    iget v1, v1, Lbef;->mOriginatingFragment:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(IZ)V

    .line 93
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbar;

    iget-boolean v2, p0, Lvp;->p:Z

    invoke-direct {v1, v3, v2}, Lbar;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 95
    return v3
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method
