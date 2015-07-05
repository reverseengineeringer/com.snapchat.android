.class public final Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$a;,
        Landroid/support/v7/widget/GridLayoutManager$b;
    }
.end annotation


# static fields
.field static final a:I


# instance fields
.field b:I

.field c:I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field public g:Landroid/support/v7/widget/GridLayoutManager$b;

.field final h:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayoutManager;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 69
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->h(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(B)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 82
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->h(I)V

    .line 83
    return-void
.end method

.method private static a(III)I
    .locals 2

    .prologue
    .line 489
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return p0

    .line 492
    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 493
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 494
    :cond_2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I
    .locals 3

    .prologue
    .line 274
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager$b;->c(II)I

    move-result v0

    .line 286
    :goto_0
    return v0

    .line 277
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$l;->a(I)I

    move-result v0

    .line 278
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 283
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$b;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;IIZ)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 504
    if-eqz p5, :cond_0

    move v1, v2

    move v0, v4

    .line 513
    :goto_0
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v5, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 514
    add-int/lit8 v4, p4, -0x1

    move v5, v3

    move v6, v4

    move v4, v0

    .line 520
    :goto_1
    if-eq v4, p3, :cond_3

    .line 521
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v7, v0, v4

    .line 522
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 523
    invoke-static {v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v7

    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 524
    if-ne v5, v3, :cond_2

    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    if-le v7, v2, :cond_2

    .line 525
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int v7, v6, v7

    invoke-static {v0, v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 529
    :goto_2
    invoke-static {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v0

    mul-int/2addr v0, v5

    add-int/2addr v6, v0

    .line 520
    add-int v0, v4, v1

    move v4, v0

    goto :goto_1

    .line 509
    :cond_0
    add-int/lit8 v0, p3, -0x1

    move v1, v3

    move p3, v3

    .line 511
    goto :goto_0

    :cond_1
    move v5, v2

    move v6, v4

    move v4, v0

    .line 518
    goto :goto_1

    .line 527
    :cond_2
    invoke-static {v0, v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    goto :goto_2

    .line 531
    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 480
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 481
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 483
    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-static {p3, v2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    .line 485
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 486
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$h;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 311
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/GridLayoutManager$b;->a(I)I

    move-result v0

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 315
    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$l;->a(I)I

    move-result v0

    .line 319
    if-ne v0, v1, :cond_2

    .line 324
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager$b;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private static g(I)I
    .locals 1

    .prologue
    .line 471
    if-gez p0, :cond_0

    .line 472
    sget v0, Landroid/support/v7/widget/GridLayoutManager;->a:I

    .line 474
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private h(I)V
    .locals 3

    .prologue
    .line 553
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 556
    :cond_0
    if-gtz p1, :cond_1

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 561
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 103
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    if-gtz v0, :cond_1

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 211
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 214
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 176
    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 15

    .prologue
    .line 334
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v7, 0x1

    .line 336
    :goto_0
    const/4 v5, 0x0

    .line 337
    const/4 v6, 0x0

    .line 338
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 339
    if-nez v7, :cond_1

    .line 340
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager$b;->b(II)I

    move-result v2

    .line 341
    :cond_0
    :goto_1
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v3

    .line 342
    add-int/2addr v2, v3

    .line 344
    :cond_1
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v5, v3, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$p;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-lez v2, :cond_6

    .line 345
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->d:I

    .line 346
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v4

    .line 347
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-le v4, v8, :cond_5

    .line 348
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Item at position "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spans but GridLayoutManager has only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spans."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 340
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$l;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/GridLayoutManager$b;->b(II)I

    move-result v2

    goto :goto_1

    .line 352
    :cond_5
    sub-int/2addr v2, v4

    .line 353
    if-ltz v2, :cond_6

    .line 354
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$l;)Landroid/view/View;

    move-result-object v3

    .line 357
    if-eqz v3, :cond_6

    .line 358
    add-int/2addr v6, v4

    .line 361
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v3, v4, v5

    .line 362
    add-int/lit8 v5, v5, 0x1

    .line 363
    goto/16 :goto_2

    .line 365
    :cond_6
    if-nez v5, :cond_7

    .line 366
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->b:Z

    .line 468
    :goto_3
    return-void

    .line 370
    :cond_7
    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 373
    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;IIZ)V

    .line 374
    const/4 v2, 0x0

    move v4, v2

    move v3, v8

    :goto_4
    if-ge v4, v5, :cond_c

    .line 375
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v6, v2, v4

    .line 376
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->j:Ljava/util/List;

    if-nez v2, :cond_9

    .line 377
    if-eqz v7, :cond_8

    .line 378
    const/4 v2, -0x1

    const/4 v8, 0x0

    invoke-super {p0, v6, v2, v8}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    .line 390
    :goto_5
    invoke-static {v6}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v2

    .line 391
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    mul-int/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 393
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 394
    iget v9, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 395
    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager;->g(I)I

    move-result v2

    invoke-direct {p0, v6, v8, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;II)V

    .line 399
    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lah;

    invoke-virtual {v2, v6}, Lah;->c(Landroid/view/View;)I

    move-result v2

    .line 400
    if-le v2, v3, :cond_17

    .line 374
    :goto_7
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_4

    .line 380
    :cond_8
    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-super {p0, v6, v2, v8}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    goto :goto_5

    .line 383
    :cond_9
    if-eqz v7, :cond_a

    .line 384
    const/4 v2, -0x1

    const/4 v8, 0x1

    invoke-super {p0, v6, v2, v8}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    goto :goto_5

    .line 386
    :cond_a
    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-super {p0, v6, v2, v8}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/view/View;IZ)V

    goto :goto_5

    .line 397
    :cond_b
    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager;->g(I)I

    move-result v2

    invoke-direct {p0, v6, v2, v8}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;II)V

    goto :goto_6

    .line 406
    :cond_c
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager;->g(I)I

    move-result v4

    .line 407
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v5, :cond_f

    .line 408
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v6, v6, v2

    .line 409
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lah;

    invoke-virtual {v7, v6}, Lah;->c(Landroid/view/View;)I

    move-result v7

    if-eq v7, v3, :cond_d

    .line 410
    invoke-static {v6}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)I

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v7}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v7

    .line 411
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    mul-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 413
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 414
    invoke-direct {p0, v6, v7, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;II)V

    .line 407
    :cond_d
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 416
    :cond_e
    invoke-direct {p0, v6, v4, v7}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;II)V

    goto :goto_9

    .line 421
    :cond_f
    move-object/from16 v0, p4

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->a:I

    .line 423
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 424
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 425
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_12

    .line 426
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 427
    sub-int v3, v2, v3

    move v6, v7

    move v14, v3

    move v3, v4

    move v4, v14

    .line 441
    :goto_a
    const/4 v7, 0x0

    move v8, v7

    move v7, v6

    move v6, v4

    move v4, v3

    move v3, v2

    :goto_b
    if-ge v8, v5, :cond_16

    .line 442
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v9, v2, v8

    .line 443
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 444
    iget v10, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    .line 445
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v4

    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    mul-int/2addr v7, v10

    add-int/2addr v4, v7

    .line 446
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lah;

    invoke-virtual {v7, v9}, Lah;->d(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v4

    .line 453
    :goto_c
    iget v10, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v10, v4

    iget v11, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v11, v6

    iget v12, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v12, v7, v12

    iget v13, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v13, v3, v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 462
    iget-object v10, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$s;->m()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$s;->k()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 463
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->c:Z

    .line 465
    :cond_11
    move-object/from16 v0, p4

    iget-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v9

    or-int/2addr v2, v9

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$b;->d:Z

    .line 441
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_b

    .line 429
    :cond_12
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 430
    add-int v2, v6, v3

    move v3, v4

    move v4, v6

    move v6, v7

    goto :goto_a

    .line 433
    :cond_13
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_14

    .line 434
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 435
    sub-int v3, v4, v3

    move v14, v6

    move v6, v4

    move v4, v14

    goto :goto_a

    .line 437
    :cond_14
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->b:I

    .line 438
    add-int/2addr v3, v4

    move v14, v4

    move v4, v6

    move v6, v3

    move v3, v14

    goto/16 :goto_a

    .line 448
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->p()I

    move-result v3

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    invoke-static {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    mul-int/2addr v6, v10

    add-int/2addr v6, v3

    .line 449
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Lah;

    invoke-virtual {v3, v9}, Lah;->d(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v6

    goto :goto_c

    .line 467
    :cond_16
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_17
    move v2, v3

    goto/16 :goto_7
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 127
    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v3, :cond_0

    .line 128
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 144
    :goto_0
    return-void

    .line 131
    :cond_0
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 132
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v3

    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v3

    .line 133
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v4, :cond_2

    .line 134
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-le v6, v1, :cond_1

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v3, v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain$430787b1(IIIIZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 139
    :cond_2
    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-le v6, v1, :cond_3

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v0, v6, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v3, v1, v4, v5, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain$430787b1(IIIIZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 3

    .prologue
    .line 254
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$a;)V

    .line 255
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->q()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:I

    .line 256
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;->b(II)I

    move-result v0

    :goto_1
    if-lez v0, :cond_1

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    if-lez v0, :cond_1

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$b;->b(II)I

    move-result v0

    goto :goto_1

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->n()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->r()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->p()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_3

    .line 260
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 262
    :cond_3
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 220
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    if-gtz v0, :cond_1

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;I)I

    move-result v0

    goto :goto_0
.end method

.method public final b()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 191
    return-void
.end method

.method public final c(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 6

    .prologue
    .line 148
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$p;->i:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$s;->c()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$l;Landroid/support/v7/widget/RecyclerView$p;)V

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 156
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->n:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 196
    return-void
.end method
