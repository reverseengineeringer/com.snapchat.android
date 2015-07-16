.class public final Laiq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lair;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lair",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/snapchat/android/model/GeofilterMarkup;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcom/snapchat/android/model/GeofilterMarkup;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/snapchat/android/model/GeofilterMarkup;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Laiq;->a:Landroid/graphics/Bitmap;

    .line 17
    iput-object p2, p0, Laiq;->b:Lcom/snapchat/android/model/GeofilterMarkup;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 22
    iget-object v0, p0, Laiq;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 30
    iget-object v2, p0, Laiq;->b:Lcom/snapchat/android/model/GeofilterMarkup;

    iget-object v2, v2, Lcom/snapchat/android/model/GeofilterMarkup;->layoutParameters:Lajt;

    iget v3, v2, Lajt;->xOffset:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v2, Lajt;->yOffset:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v2, Lajt;->xOffset:F

    iget v6, v2, Lajt;->xSize:F

    add-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v2, Lajt;->yOffset:F

    iget v7, v2, Lajt;->ySize:F

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget v2, v2, Lajt;->rotation:F

    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v3

    int-to-float v7, v7

    sub-int v8, v6, v4

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {v0, v2, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Laiq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Laiq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Laiq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v5, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method
