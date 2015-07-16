.class public Lnet/simonvt/numberpicker/SnapchatTimePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/numberpicker/SnapchatTimePicker$e;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$a;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$h;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$b;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$g;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$c;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$d;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$f;,
        Lnet/simonvt/numberpicker/SnapchatTimePicker$i;
    }
.end annotation


# static fields
.field private static final a:Lnet/simonvt/numberpicker/SnapchatTimePicker$i;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private final D:Lbxu;

.field private final E:Lbxu;

.field private F:I

.field private G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

.field private H:F

.field private I:J

.field private J:F

.field private K:Landroid/view/VelocityTracker;

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private final P:I

.field private final Q:Z

.field private final R:Landroid/graphics/drawable/Drawable;

.field private final S:I

.field private T:I

.field private U:Z

.field private V:I

.field private W:I

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Lnet/simonvt/numberpicker/SnapchatTimePicker$h;

.field private final ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

.field private af:I

.field private ag:Lnet/simonvt/numberpicker/SnapchatTimePicker$e;

.field private final b:Landroid/widget/ImageButton;

.field private final c:Landroid/widget/ImageButton;

.field private final d:Landroid/widget/TextView;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I

.field private final j:Z

.field private final k:I

.field private l:I

.field private m:[Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Lnet/simonvt/numberpicker/SnapchatTimePicker$f;

.field private s:Lnet/simonvt/numberpicker/SnapchatTimePicker$d;

.field private t:Lnet/simonvt/numberpicker/SnapchatTimePicker$c;

.field private u:J

.field private final v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final w:[I

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/graphics/Paint;

.field private final z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lnet/simonvt/numberpicker/SnapchatTimePicker$i;

    invoke-direct {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$i;-><init>()V

    sput-object v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 541
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 550
    sget v0, Lbxt$a;->snapchatTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 551
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 561
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    iput-boolean v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->q:Z

    .line 297
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->u:J

    .line 302
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->v:Landroid/util/SparseArray;

    .line 307
    new-array v0, v8, [I

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    .line 332
    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    .line 423
    iput v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->T:I

    .line 469
    iput v6, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->af:I

    .line 564
    sget-object v0, Lbxt$c;->SnapchatTimePicker:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 566
    const/16 v0, 0x8

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 569
    if-eqz v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    .line 571
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->P:I

    .line 573
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->R:Landroid/graphics/drawable/Drawable;

    .line 575
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 578
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->S:I

    .line 580
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 583
    invoke-virtual {v3, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e:I

    .line 586
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->f:I

    .line 589
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->g:I

    .line 591
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->f:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->g:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->f:I

    iget v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->g:I

    if-le v0, v5, :cond_1

    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 569
    goto :goto_0

    .line 596
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->h:I

    .line 599
    const/4 v0, 0x7

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    .line 601
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->h:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->h:I

    iget v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    if-le v0, v5, :cond_2

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    if-ne v0, v6, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->j:Z

    .line 608
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 610
    new-instance v0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    .line 617
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setWillNotDraw(Z)V

    .line 619
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 621
    invoke-virtual {v0, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 623
    new-instance v3, Lnet/simonvt/numberpicker/SnapchatTimePicker$1;

    invoke-direct {v3, p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$1;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V

    .line 634
    new-instance v4, Lnet/simonvt/numberpicker/SnapchatTimePicker$2;

    invoke-direct {v4, p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$2;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V

    .line 647
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_6

    .line 648
    sget v0, Lbxt$b;->np__increment:I

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b:Landroid/widget/ImageButton;

    .line 649
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 656
    :goto_3
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_7

    .line 657
    sget v0, Lbxt$b;->np__decrement:I

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c:Landroid/widget/ImageButton;

    .line 658
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 665
    :goto_4
    sget v0, Lbxt$b;->np__numberpicker_input:I

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    .line 668
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->L:I

    .line 670
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->M:I

    .line 671
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->N:I

    .line 673
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->k:I

    .line 676
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 677
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 678
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 679
    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->k:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 680
    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 681
    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 682
    sget-object v4, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 683
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 684
    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->x:Landroid/graphics/Paint;

    .line 686
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    .line 687
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 688
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 689
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    sget-object v3, Lbxv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 690
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 691
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    new-instance v0, Landroid/graphics/Paint;

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->z:Landroid/graphics/Paint;

    .line 695
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->z:Landroid/graphics/Paint;

    const/16 v3, 0x96

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 696
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->z:Landroid/graphics/Paint;

    sget-object v3, Lbxv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 697
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->z:Landroid/graphics/Paint;

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e:I

    int-to-float v3, v3

    const v4, 0x3fd9999a    # 1.7f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 700
    new-instance v0, Lbxu;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v7, v2}, Lbxu;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;B)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    .line 701
    new-instance v0, Lbxu;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v2, v3}, Lbxu;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->E:Lbxu;

    .line 703
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    .line 705
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 707
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 708
    invoke-virtual {p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setImportantForAccessibility(I)V

    .line 711
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 606
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 617
    goto/16 :goto_2

    .line 652
    :cond_6
    iput-object v7, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 661
    :cond_7
    iput-object v7, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method private static a(II)I
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1444
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1455
    :goto_0
    :sswitch_0
    return p0

    .line 1447
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1448
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1449
    sparse-switch v1, :sswitch_data_0

    .line 1457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown measure mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :sswitch_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 1455
    :sswitch_2
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 1449
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(III)I
    .locals 3

    .prologue
    .line 1473
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 1474
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1475
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    or-int/lit8 p1, v0, 0x0

    .line 1477
    :cond_1
    return p1

    .line 1475
    :sswitch_1
    if-ge v1, v0, :cond_0

    const/high16 v0, 0x1000000

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/SnapchatTimePicker;I)I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1159
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->j:Z

    if-nez v0, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1164
    const/4 v1, 0x0

    move v3, v2

    .line 1165
    :goto_1
    const/16 v0, 0x9

    if-gt v3, v0, :cond_2

    .line 1166
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->x:Landroid/graphics/Paint;

    invoke-static {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1167
    cmpl-float v4, v0, v1

    if-lez v4, :cond_8

    .line 1165
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1172
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    .line 1173
    :goto_3
    if-lez v0, :cond_3

    .line 1174
    add-int/lit8 v2, v2, 0x1

    .line 1175
    div-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 1177
    :cond_3
    int-to-float v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1187
    :cond_4
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1188
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    if-eq v1, v0, :cond_0

    .line 1189
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->h:I

    if-le v0, v1, :cond_7

    .line 1190
    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    .line 1194
    :goto_4
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    goto :goto_0

    .line 1179
    :cond_5
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    array-length v3, v0

    move v1, v2

    move v0, v2

    .line 1180
    :goto_5
    if-ge v1, v3, :cond_4

    .line 1181
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->x:Landroid/graphics/Paint;

    iget-object v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1182
    int-to-float v4, v0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_6

    .line 1183
    float-to-int v0, v2

    .line 1180
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1192
    :cond_7
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->h:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 1632
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->T:I

    if-ne v0, p1, :cond_0

    .line 1636
    :goto_0
    return-void

    .line 1635
    :cond_0
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->T:I

    goto :goto_0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 1569
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-eqz v0, :cond_2

    .line 1570
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1571
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lbxu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1572
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->E:Lbxu;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lbxu;)Z

    .line 1574
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->F:I

    .line 1575
    if-eqz p1, :cond_1

    .line 1576
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v2}, Lbxu;->a(II)V

    .line 1580
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    .line 1588
    :goto_1
    return-void

    .line 1578
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    invoke-virtual {v0, v1, v2}, Lbxu;->a(II)V

    goto :goto_0

    .line 1582
    :cond_2
    if-eqz p1, :cond_3

    .line 1583
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setValueInternal$2563266(I)V

    goto :goto_1

    .line 1585
    :cond_3
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setValueInternal$2563266(I)V

    goto :goto_1
.end method

.method private a(ZJ)V
    .locals 2

    .prologue
    .line 1779
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    if-nez v0, :cond_0

    .line 1780
    new-instance v0, Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$b;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    .line 1784
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$b;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker$b;Z)V

    .line 1785
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    invoke-virtual {p0, v0, p2, p3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1786
    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lbxu;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 769
    iput-boolean v1, p1, Lbxu;->d:Z

    .line 770
    iget v0, p1, Lbxu;->b:I

    iget v3, p1, Lbxu;->c:I

    sub-int v3, v0, v3

    .line 771
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    add-int/2addr v0, v3

    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    rem-int/2addr v0, v4

    .line 772
    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    sub-int v0, v4, v0

    .line 773
    if-eqz v0, :cond_2

    .line 774
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_0

    .line 775
    if-lez v0, :cond_1

    .line 776
    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    sub-int/2addr v0, v4

    .line 781
    :cond_0
    :goto_0
    add-int/2addr v0, v3

    .line 782
    invoke-virtual {p0, v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->scrollBy(II)V

    move v0, v1

    .line 785
    :goto_1
    return v0

    .line 778
    :cond_1
    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 785
    goto :goto_1
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 1660
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    if-le p1, v0, :cond_1

    .line 1661
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    sub-int v1, p1, v1

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1665
    :cond_0
    :goto_0
    return p1

    .line 1662
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    if-ge p1, v0, :cond_0

    .line 1663
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v1, p1

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/SnapchatTimePicker;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 1521
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->v:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1522
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    .line 1523
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v3

    .line 1524
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1525
    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, v3

    .line 1526
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-eqz v4, :cond_0

    .line 1527
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b(I)I

    move-result v1

    .line 1529
    :cond_0
    aput v1, v2, v0

    .line 1530
    aget v1, v2, v0

    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(I)V

    .line 1524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1532
    :cond_1
    return-void
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(ZJ)V

    return-void
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ab:Z

    return v0
.end method

.method static synthetic c(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->W:I

    return v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 1705
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->v:Landroid/util/SparseArray;

    .line 1706
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1707
    if-eqz v0, :cond_0

    .line 1721
    :goto_0
    return-void

    .line 1710
    :cond_0
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    if-le p1, v0, :cond_2

    .line 1711
    :cond_1
    const-string v0, ""

    .line 1720
    :goto_1
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1713
    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1714
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int v0, p1, v0

    .line 1715
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    aget-object v0, v2, v0

    goto :goto_1

    .line 1717
    :cond_3
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 1753
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 1755
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1757
    const/4 v0, 0x1

    .line 1760
    :goto_1
    return v0

    .line 1753
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0

    .line 1760
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ab:Z

    return p1
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker$c;

    invoke-interface {v0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$c;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1804
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a()V

    .line 1805
    return-void
.end method

.method static synthetic d(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ac:Z

    return v0
.end method

.method static synthetic d(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ac:Z

    return p1
.end method

.method static synthetic e(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->V:I

    return v0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2421
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1848
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    sub-int/2addr v1, v2

    .line 1849
    if-eqz v1, :cond_0

    .line 1850
    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->F:I

    .line 1851
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    .line 1852
    if-lez v1, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v0, v1

    .line 1854
    :goto_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->E:Lbxu;

    const/16 v2, 0x320

    invoke-virtual {v1, v0, v2}, Lbxu;->a(II)V

    .line 1855
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    .line 1856
    const/4 v0, 0x1

    .line 1858
    :cond_0
    return v0

    .line 1852
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic f(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ab:Z

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ab:Z

    return v0
.end method

.method static synthetic g(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ac:Z

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ac:Z

    return v0
.end method

.method private getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/SnapchatTimePicker$h;
    .locals 2

    .prologue
    .line 1967
    new-instance v0, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;B)V

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lnet/simonvt/numberpicker/SnapchatTimePicker$c;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$i;

    return-object v0
.end method

.method static synthetic h(Lnet/simonvt/numberpicker/SnapchatTimePicker;)J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->u:J

    return-wide v0
.end method

.method static synthetic i(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->S:I

    return v0
.end method

.method static synthetic j(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    return v0
.end method

.method static synthetic k(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    return v0
.end method

.method static synthetic l(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    return v0
.end method

.method static synthetic m(Lnet/simonvt/numberpicker/SnapchatTimePicker;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    return v0
.end method

.method private setValueInternal$2563266(I)V
    .locals 2

    .prologue
    .line 1541
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    if-ne v0, p1, :cond_0

    .line 1559
    :goto_0
    return-void

    .line 1545
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-eqz v0, :cond_1

    .line 1546
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b(I)I

    move-result v0

    .line 1551
    :goto_1
    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    .line 1553
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    .line 1554
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b()V

    .line 1558
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    goto :goto_0

    .line 1548
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1549
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1016
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    .line 1017
    iget-boolean v1, v0, Lbxu;->d:Z

    if-eqz v1, :cond_1

    .line 1018
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->E:Lbxu;

    .line 1019
    iget-boolean v1, v0, Lbxu;->d:Z

    if-eqz v1, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {v0}, Lbxu;->a()Z

    .line 1024
    iget v1, v0, Lbxu;->c:I

    .line 1025
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->F:I

    if-nez v2, :cond_2

    .line 1026
    iget v2, v0, Lbxu;->a:I

    iput v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->F:I

    .line 1028
    :cond_2
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->F:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v3, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->scrollBy(II)V

    .line 1029
    iput v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->F:I

    .line 1030
    iget-boolean v1, v0, Lbxu;->d:Z

    if-eqz v1, :cond_5

    .line 1031
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    :cond_3
    invoke-direct {p0, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    goto :goto_0

    .line 1033
    :cond_5
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x80

    const/4 v3, -0x1

    .line 966
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_0

    .line 967
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1011
    :goto_0
    return v0

    .line 970
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 973
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->V:I

    if-ge v0, v1, :cond_2

    .line 974
    const/4 v0, 0x3

    .line 980
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 981
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/SnapchatTimePicker$h;

    move-result-object v2

    .line 983
    packed-switch v1, :pswitch_data_0

    .line 1011
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 975
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->W:I

    if-le v0, v1, :cond_3

    .line 976
    const/4 v0, 0x1

    goto :goto_1

    .line 978
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 985
    :pswitch_1
    invoke-virtual {v2, v0, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;->a(II)V

    .line 987
    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->aa:I

    .line 988
    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;->a(I)Z

    goto :goto_2

    .line 992
    :pswitch_2
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->aa:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->aa:I

    if-eq v1, v3, :cond_1

    .line 994
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->aa:I

    invoke-virtual {v2, v1, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;->a(II)V

    .line 997
    invoke-virtual {v2, v0, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;->a(II)V

    .line 999
    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->aa:I

    .line 1000
    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;->a(I)Z

    goto :goto_2

    .line 1005
    :pswitch_3
    invoke-virtual {v2, v0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;->a(II)V

    .line 1007
    iput v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->aa:I

    goto :goto_2

    .line 983
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x1

    .line 917
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 918
    sparse-switch v0, :sswitch_data_0

    .line 949
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 921
    :sswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d()V

    goto :goto_0

    .line 925
    :sswitch_1
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-eqz v2, :cond_0

    .line 926
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 930
    :pswitch_0
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-nez v2, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 932
    :goto_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->requestFocus()Z

    .line 933
    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->af:I

    .line 934
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d()V

    .line 935
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    iget-boolean v2, v2, Lbxu;->d:Z

    if-eqz v2, :cond_1

    .line 936
    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Z)V

    goto :goto_1

    .line 930
    :cond_3
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 936
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 942
    :pswitch_1
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->af:I

    if-ne v2, v0, :cond_0

    .line 943
    const/4 v0, -0x1

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->af:I

    goto :goto_1

    .line 918
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 926
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 906
    packed-switch v0, :pswitch_data_0

    .line 912
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 909
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d()V

    goto :goto_0

    .line 906
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 955
    packed-switch v0, :pswitch_data_0

    .line 961
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 958
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d()V

    goto :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    .line 1427
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_0

    .line 1428
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1433
    :goto_0
    return-object v0

    .line 1430
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ad:Lnet/simonvt/numberpicker/SnapchatTimePicker$h;

    if-nez v0, :cond_1

    .line 1431
    new-instance v0, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;B)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ad:Lnet/simonvt/numberpicker/SnapchatTimePicker$h;

    .line 1433
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ad:Lnet/simonvt/numberpicker/SnapchatTimePicker$h;

    iget-object v0, v0, Lnet/simonvt/numberpicker/SnapchatTimePicker$h;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$a;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1368
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1301
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1263
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->P:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1363
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1254
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1207
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1373
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d()V

    .line 1374
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1378
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_0

    .line 1379
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1414
    :goto_0
    return-void

    .line 1382
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 1383
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    int-to-float v1, v1

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 1386
    iget-object v5, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    move v1, v2

    move v3, v0

    .line 1387
    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_1

    .line 1388
    aget v0, v5, v1

    .line 1389
    iget-object v6, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->v:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1395
    iget v6, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    int-to-float v6, v6

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    iget-object v7, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1396
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 1387
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1400
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->R:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1401
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->V:I

    .line 1402
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->W:I

    .line 1403
    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v6

    invoke-virtual {v3, v2, v0, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1404
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1408
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1409
    const-string v0, "      second"

    .line 1413
    :goto_2
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    int-to-float v2, v2

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    array-length v4, v5

    div-int/lit8 v4, v4, 0x2

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1411
    :cond_3
    const-string v0, "       seconds"

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 1418
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1419
    const-class v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1420
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1421
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1422
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1423
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 790
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 835
    :cond_1
    :goto_0
    return v0

    .line 793
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 794
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 835
    goto :goto_0

    .line 796
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d()V

    .line 797
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->H:F

    iput v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->J:F

    .line 799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->I:J

    .line 800
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->U:Z

    .line 801
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->q:Z

    .line 803
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->H:F

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->V:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 804
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->T:I

    if-nez v2, :cond_3

    .line 805
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a(I)V

    .line 815
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 816
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    iget-boolean v2, v2, Lbxu;->d:Z

    if-nez v2, :cond_5

    .line 817
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    iput-boolean v0, v2, Lbxu;->d:Z

    .line 818
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->E:Lbxu;

    iput-boolean v0, v2, Lbxu;->d:Z

    .line 819
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(I)V

    .line 820
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMinValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMaxValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->q:Z

    goto :goto_0

    .line 808
    :cond_4
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->H:F

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->W:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 809
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->T:I

    if-nez v2, :cond_3

    .line 810
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a(I)V

    goto :goto_1

    .line 821
    :cond_5
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->E:Lbxu;

    iget-boolean v2, v2, Lbxu;->d:Z

    if-nez v2, :cond_6

    .line 822
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    iput-boolean v0, v1, Lbxu;->d:Z

    .line 823
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->E:Lbxu;

    iput-boolean v0, v1, Lbxu;->d:Z

    goto/16 :goto_0

    .line 824
    :cond_6
    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->H:F

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->V:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 825
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(ZJ)V

    goto/16 :goto_0

    .line 827
    :cond_7
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->H:F

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->W:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 828
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(ZJ)V

    goto/16 :goto_0

    .line 794
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 715
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_1

    .line 716
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMeasuredWidth()I

    move-result v0

    .line 720
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMeasuredHeight()I

    move-result v1

    .line 723
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 724
    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 725
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 726
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 727
    add-int/2addr v2, v0

    .line 728
    add-int/2addr v3, v1

    .line 729
    iget-object v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 731
    if-eqz p1, :cond_0

    .line 733
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b()V

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    array-length v1, v0

    iget v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->k:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    int-to-float v1, v1

    array-length v0, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->l:I

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->k:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    .line 734
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->k:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setFadingEdgeLength(I)V

    .line 735
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getHeight()I

    move-result v0

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->S:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->V:I

    .line 737
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->V:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->S:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->W:I

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 744
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_0

    .line 745
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 758
    :goto_0
    return-void

    .line 749
    :cond_0
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->i:I

    invoke-static {p1, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(II)I

    move-result v0

    .line 750
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->g:I

    invoke-static {p2, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(II)I

    move-result v1

    .line 751
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 753
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->h:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(III)I

    move-result v0

    .line 755
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->f:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2, p2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(III)I

    move-result v1

    .line 757
    invoke-virtual {p0, v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 840
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 900
    :cond_1
    :goto_0
    return v0

    .line 843
    :cond_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->K:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 844
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->K:Landroid/view/VelocityTracker;

    .line 846
    :cond_3
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 848
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 868
    :pswitch_0
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->G:Lnet/simonvt/numberpicker/SnapchatTimePicker$b;

    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 869
    :cond_4
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a()V

    .line 870
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->K:Landroid/view/VelocityTracker;

    .line 871
    const/16 v3, 0x3e8

    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->N:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 872
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    .line 873
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->M:I

    if-le v3, v4, :cond_8

    .line 874
    iput v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->F:I

    if-lez v2, :cond_7

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    invoke-virtual {v3, v1, v1, v2}, Lbxu;->a(III)V

    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    .line 875
    invoke-direct {p0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(I)V

    .line 896
    :goto_2
    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 897
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->K:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 850
    :pswitch_1
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->U:Z

    if-nez v2, :cond_1

    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 854
    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->T:I

    if-eq v3, v0, :cond_6

    .line 855
    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->H:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 856
    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->L:I

    if-le v1, v3, :cond_5

    .line 857
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d()V

    .line 858
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(I)V

    .line 865
    :cond_5
    :goto_3
    iput v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->J:F

    goto :goto_0

    .line 861
    :cond_6
    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->J:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    .line 862
    invoke-virtual {p0, v1, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->scrollBy(II)V

    .line 863
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    goto :goto_3

    .line 874
    :cond_7
    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->D:Lbxu;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4, v1, v2}, Lbxu;->a(III)V

    goto :goto_1

    .line 877
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 878
    int-to-float v3, v2

    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->H:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 880
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 881
    iget v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->L:I

    if-gt v3, v4, :cond_9

    .line 882
    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 883
    if-lez v2, :cond_a

    .line 884
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Z)V

    .line 885
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->b(I)V

    .line 893
    :cond_9
    :goto_4
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e()Z

    .line 894
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(I)V

    goto :goto_2

    .line 886
    :cond_a
    if-gez v2, :cond_b

    .line 887
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Z)V

    .line 888
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ae:Lnet/simonvt/numberpicker/SnapchatTimePicker$g;

    invoke-virtual {v2, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->b(I)V

    goto :goto_4

    .line 889
    :cond_b
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->q:Z

    if-nez v2, :cond_9

    .line 890
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ag:Lnet/simonvt/numberpicker/SnapchatTimePicker$e;

    invoke-interface {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker$e;->a()V

    goto :goto_4

    .line 848
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1050
    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    .line 1051
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-nez v0, :cond_1

    if-lez p2, :cond_1

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    if-gt v0, v3, :cond_1

    .line 1053
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-nez v0, :cond_2

    if-gez p2, :cond_2

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    if-lt v0, v3, :cond_2

    .line 1058
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    goto :goto_0

    .line 1061
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    add-int/2addr v0, p2

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    .line 1062
    :cond_3
    :goto_1
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    sub-int/2addr v0, v3

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->l:I

    if-le v0, v3, :cond_8

    .line 1063
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    sub-int/2addr v0, v3

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    .line 1064
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lez v0, :cond_4

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    aget v0, v2, v4

    add-int/lit8 v0, v0, -0x1

    iget-boolean v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    if-ge v0, v3, :cond_5

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    :cond_5
    aput v0, v2, v1

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(I)V

    .line 1065
    aget v0, v2, v4

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setValueInternal$2563266(I)V

    .line 1066
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-nez v0, :cond_3

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    if-gt v0, v3, :cond_3

    .line 1067
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    goto :goto_1

    .line 1072
    :cond_6
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    if-le v0, v3, :cond_7

    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    :cond_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput v0, v2, v3

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(I)V

    .line 1073
    aget v0, v2, v4

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setValueInternal$2563266(I)V

    .line 1074
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-nez v0, :cond_8

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    if-lt v0, v3, :cond_8

    .line 1075
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    .line 1070
    :cond_8
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->B:I

    sub-int/2addr v0, v3

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->l:I

    neg-int v3, v3

    if-ge v0, v3, :cond_0

    .line 1071
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    iget v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->A:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->C:I

    move v0, v1

    .line 1072
    :goto_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1359
    :goto_0
    return-void

    .line 1355
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->m:[Ljava/lang/String;

    .line 1356
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    .line 1357
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b()V

    .line 1358
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 1039
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1040
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1043
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->Q:Z

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1046
    :cond_1
    return-void
.end method

.method public setFormatter(Lnet/simonvt/numberpicker/SnapchatTimePicker$c;)V
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker$c;

    if-ne p1, v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1118
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker$c;

    .line 1119
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b()V

    .line 1120
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 2

    .prologue
    .line 1315
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    if-ne v0, p1, :cond_0

    .line 1331
    :goto_0
    return-void

    .line 1318
    :cond_0
    if-gez p1, :cond_1

    .line 1319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    .line 1322
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    if-ge v0, v1, :cond_2

    .line 1323
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    .line 1325
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1326
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setWrapSelectorWheel(Z)V

    .line 1327
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b()V

    .line 1328
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    .line 1329
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a()V

    .line 1330
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    goto :goto_0

    .line 1325
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 2

    .prologue
    .line 1277
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    if-ne v0, p1, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1280
    :cond_0
    if-gez p1, :cond_1

    .line 1281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1283
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    .line 1284
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    if-le v0, v1, :cond_2

    .line 1285
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->p:I

    .line 1287
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1288
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setWrapSelectorWheel(Z)V

    .line 1289
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b()V

    .line 1290
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c()Z

    .line 1291
    invoke-direct {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a()V

    .line 1292
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate()V

    goto :goto_0

    .line 1287
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1

    .prologue
    .line 1245
    iput-wide p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->u:J

    .line 1246
    return-void
.end method

.method public setOnScrollListener(Lnet/simonvt/numberpicker/SnapchatTimePicker$d;)V
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->s:Lnet/simonvt/numberpicker/SnapchatTimePicker$d;

    .line 1101
    return-void
.end method

.method public setOnTimeSelectedListener(Lnet/simonvt/numberpicker/SnapchatTimePicker$e;)V
    .locals 0

    .prologue
    .line 2425
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->ag:Lnet/simonvt/numberpicker/SnapchatTimePicker$e;

    .line 2426
    return-void
.end method

.method public setOnValueChangedListener(Lnet/simonvt/numberpicker/SnapchatTimePicker$f;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->r:Lnet/simonvt/numberpicker/SnapchatTimePicker$f;

    .line 1092
    return-void
.end method

.method public setValue(I)V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setValueInternal$2563266(I)V

    .line 1153
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .prologue
    .line 1228
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->w:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 1229
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    if-eq p1, v0, :cond_1

    .line 1230
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker;->O:Z

    .line 1232
    :cond_1
    return-void

    .line 1228
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
