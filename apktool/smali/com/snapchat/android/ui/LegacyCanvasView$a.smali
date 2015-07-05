.class public final Lcom/snapchat/android/ui/LegacyCanvasView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/LegacyCanvasView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Path;

.field final synthetic c:Lcom/snapchat/android/ui/LegacyCanvasView;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/LegacyCanvasView;IF)V
    .locals 3

    .prologue
    .line 354
    iput-object p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->c:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput p3, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->d:F

    .line 356
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->b:Landroid/graphics/Path;

    .line 357
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    .line 358
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->d:F

    const/high16 v2, 0x40d00000    # 6.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 364
    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->b:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 375
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 383
    return-void
.end method
