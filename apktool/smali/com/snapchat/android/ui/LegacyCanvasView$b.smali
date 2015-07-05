.class final Lcom/snapchat/android/ui/LegacyCanvasView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/LegacyCanvasView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/LegacyCanvasView$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Canvas;

.field e:Landroid/graphics/Bitmap;

.field f:Z

.field final synthetic g:Lcom/snapchat/android/ui/LegacyCanvasView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/LegacyCanvasView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iput-object p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->b:Landroid/graphics/Paint;

    .line 394
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->c:Landroid/graphics/Matrix;

    .line 397
    iput-boolean v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->f:Z

    .line 400
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView$b;->a()V

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 402
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 403
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView$b;->b()V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v2}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Laur;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 438
    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lavq;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    .line 440
    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->e:Landroid/graphics/Bitmap;

    .line 445
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->d:Landroid/graphics/Canvas;

    .line 446
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v0}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->g:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Laur;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->e:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    iput-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->d:Landroid/graphics/Canvas;

    .line 464
    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lavq;->a(Landroid/graphics/Bitmap;)V

    .line 465
    iput-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$b;->e:Landroid/graphics/Bitmap;

    .line 466
    return-void
.end method
