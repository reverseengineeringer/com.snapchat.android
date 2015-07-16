.class public final Laiu;
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
        "Ljava/lang/String;",
        "Lcom/snapchat/android/model/GeofilterMarkup;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Typeface;

.field private c:Lcom/snapchat/android/model/GeofilterMarkup;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;Lcom/snapchat/android/model/GeofilterMarkup;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Laiu;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Laiu;->b:Landroid/graphics/Typeface;

    .line 24
    iput-object p3, p0, Laiu;->c:Lcom/snapchat/android/model/GeofilterMarkup;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 34
    iget-object v2, p0, Laiu;->c:Lcom/snapchat/android/model/GeofilterMarkup;

    iget-object v2, v2, Lcom/snapchat/android/model/GeofilterMarkup;->layoutParameters:Lajt;

    iget-object v3, p0, Laiu;->c:Lcom/snapchat/android/model/GeofilterMarkup;

    iget-object v3, v3, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Lajs;

    iget-object v4, v3, Lajs;->color:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v3, Lajs;->size:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Laiu;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Laiu;->a:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Laiu;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v4, v2, Lajt;->xOffset:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v2, Lajt;->yOffset:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget v2, v2, Lajt;->rotation:F

    int-to-float v6, v6

    int-to-float v3, v3

    invoke-virtual {v0, v2, v6, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Laiu;->a:Ljava/lang/String;

    int-to-float v3, v4

    int-to-float v4, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method
