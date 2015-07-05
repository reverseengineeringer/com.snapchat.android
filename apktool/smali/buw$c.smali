.class public final Lbuw$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:[I

.field public k:I

.field l:F

.field m:F

.field n:F

.field o:Z

.field p:Landroid/graphics/Path;

.field q:F

.field r:D

.field s:I

.field t:I

.field u:I

.field public v:I

.field private final w:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbuw$c;->a:Landroid/graphics/RectF;

    .line 418
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbuw$c;->b:Landroid/graphics/Paint;

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbuw$c;->c:Landroid/graphics/Paint;

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbuw$c;->d:Landroid/graphics/Paint;

    .line 422
    iput v1, p0, Lbuw$c;->e:F

    .line 423
    iput v1, p0, Lbuw$c;->f:F

    .line 424
    iput v1, p0, Lbuw$c;->g:F

    .line 425
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lbuw$c;->h:F

    .line 426
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lbuw$c;->i:F

    .line 445
    iput-object p1, p0, Lbuw$c;->w:Landroid/graphics/drawable/Drawable$Callback;

    .line 446
    iget-object v0, p0, Lbuw$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 447
    iget-object v0, p0, Lbuw$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 448
    iget-object v0, p0, Lbuw$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 449
    iget-object v0, p0, Lbuw$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object v0, p0, Lbuw$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 452
    iget-object v0, p0, Lbuw$c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 548
    iget v0, p0, Lbuw$c;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lbuw$c;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lbuw$c;->k:I

    .line 549
    return-void
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 591
    iput p1, p0, Lbuw$c;->e:F

    .line 592
    invoke-virtual {p0}, Lbuw$c;->d()V

    .line 593
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lbuw$c;->o:Z

    if-eq v0, p1, :cond_0

    .line 658
    iput-boolean p1, p0, Lbuw$c;->o:Z

    .line 659
    invoke-virtual {p0}, Lbuw$c;->d()V

    .line 661
    :cond_0
    return-void
.end method

.method public final a([I)V
    .locals 1

    .prologue
    .line 530
    iput-object p1, p0, Lbuw$c;->j:[I

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lbuw$c;->k:I

    .line 533
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lbuw$c;->e:F

    iput v0, p0, Lbuw$c;->l:F

    .line 686
    iget v0, p0, Lbuw$c;->f:F

    iput v0, p0, Lbuw$c;->m:F

    .line 687
    iget v0, p0, Lbuw$c;->g:F

    iput v0, p0, Lbuw$c;->n:F

    .line 688
    return-void
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 610
    iput p1, p0, Lbuw$c;->f:F

    .line 611
    invoke-virtual {p0}, Lbuw$c;->d()V

    .line 612
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 694
    iput v0, p0, Lbuw$c;->l:F

    .line 695
    iput v0, p0, Lbuw$c;->m:F

    .line 696
    iput v0, p0, Lbuw$c;->n:F

    .line 697
    invoke-virtual {p0, v0}, Lbuw$c;->a(F)V

    .line 698
    invoke-virtual {p0, v0}, Lbuw$c;->b(F)V

    .line 699
    invoke-virtual {p0, v0}, Lbuw$c;->c(F)V

    .line 700
    return-void
.end method

.method public final c(F)V
    .locals 0

    .prologue
    .line 621
    iput p1, p0, Lbuw$c;->g:F

    .line 622
    invoke-virtual {p0}, Lbuw$c;->d()V

    .line 623
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lbuw$c;->w:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    return-void
.end method

.method public final d(F)V
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lbuw$c;->q:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 668
    iput p1, p0, Lbuw$c;->q:F

    .line 669
    invoke-virtual {p0}, Lbuw$c;->d()V

    .line 671
    :cond_0
    return-void
.end method
