.class public Lnet/simonvt/numberpicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/numberpicker/NumberPicker$a;,
        Lnet/simonvt/numberpicker/NumberPicker$j;,
        Lnet/simonvt/numberpicker/NumberPicker$b;,
        Lnet/simonvt/numberpicker/NumberPicker$CustomEditText;,
        Lnet/simonvt/numberpicker/NumberPicker$c;,
        Lnet/simonvt/numberpicker/NumberPicker$i;,
        Lnet/simonvt/numberpicker/NumberPicker$h;,
        Lnet/simonvt/numberpicker/NumberPicker$e;,
        Lnet/simonvt/numberpicker/NumberPicker$d;,
        Lnet/simonvt/numberpicker/NumberPicker$f;,
        Lnet/simonvt/numberpicker/NumberPicker$g;,
        Lnet/simonvt/numberpicker/NumberPicker$k;
    }
.end annotation


# static fields
.field private static final a:Lnet/simonvt/numberpicker/NumberPicker$k;

.field private static final ah:[C


# instance fields
.field private A:I

.field private final B:Lbwt;

.field private final C:Lbwt;

.field private D:I

.field private E:Lnet/simonvt/numberpicker/NumberPicker$i;

.field private F:Lnet/simonvt/numberpicker/NumberPicker$c;

.field private G:Lnet/simonvt/numberpicker/NumberPicker$b;

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

.field private V:Z

.field private W:I

.field private aa:I

.field private ab:I

.field private ac:Z

.field private ad:Z

.field private ae:Lnet/simonvt/numberpicker/NumberPicker$j;

.field private final af:Lnet/simonvt/numberpicker/NumberPicker$h;

.field private ag:I

.field private final b:Landroid/widget/ImageButton;

.field private final c:Landroid/widget/ImageButton;

.field private final d:Landroid/widget/EditText;

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

.field private q:Lnet/simonvt/numberpicker/NumberPicker$g;

.field private r:Lnet/simonvt/numberpicker/NumberPicker$f;

.field private s:Lnet/simonvt/numberpicker/NumberPicker$d;

.field private t:J

.field private final u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v:[I

.field private final w:Landroid/graphics/Paint;

.field private final x:Landroid/graphics/drawable/Drawable;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$k;

    invoke-direct {v0}, Lnet/simonvt/numberpicker/NumberPicker$k;-><init>()V

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->a:Lnet/simonvt/numberpicker/NumberPicker$k;

    .line 1970
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->ah:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 551
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 560
    sget v0, Lbws$a;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 561
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 571
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->t:J

    .line 304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->u:Landroid/util/SparseArray;

    .line 309
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    .line 329
    const/high16 v0, -0x80000000

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    .line 430
    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    .line 481
    iput v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    .line 574
    sget-object v0, Lbws$c;->NumberPicker:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 576
    const/16 v0, 0x8

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 579
    if-eqz v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    .line 581
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:I

    .line 583
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Landroid/graphics/drawable/Drawable;

    .line 585
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 588
    invoke-virtual {v3, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:I

    .line 591
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 594
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->e:I

    .line 597
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->f:I

    .line 600
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->g:I

    .line 602
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->f:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->g:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->f:I

    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->g:I

    if-le v0, v5, :cond_1

    .line 604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 579
    goto :goto_0

    .line 607
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->h:I

    .line 610
    const/4 v0, 0x7

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    .line 612
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->h:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->h:I

    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    if-le v0, v5, :cond_2

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    if-ne v0, v6, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->j:Z

    .line 619
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    .line 622
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 624
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$h;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->af:Lnet/simonvt/numberpicker/NumberPicker$h;

    .line 631
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setWillNotDraw(Z)V

    .line 633
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 635
    invoke-virtual {v0, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 637
    new-instance v3, Lnet/simonvt/numberpicker/NumberPicker$1;

    invoke-direct {v3, p0}, Lnet/simonvt/numberpicker/NumberPicker$1;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 649
    new-instance v4, Lnet/simonvt/numberpicker/NumberPicker$2;

    invoke-direct {v4, p0}, Lnet/simonvt/numberpicker/NumberPicker$2;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 663
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_6

    .line 664
    sget v0, Lbws$b;->np__increment:I

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->b:Landroid/widget/ImageButton;

    .line 665
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 672
    :goto_3
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_7

    .line 673
    sget v0, Lbws$b;->np__decrement:I

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->c:Landroid/widget/ImageButton;

    .line 674
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 681
    :goto_4
    sget v0, Lbws$b;->np__numberpicker_input:I

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    .line 682
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    new-instance v3, Lnet/simonvt/numberpicker/NumberPicker$3;

    invoke-direct {v3, p0}, Lnet/simonvt/numberpicker/NumberPicker$3;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 692
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v4, Lnet/simonvt/numberpicker/NumberPicker$e;

    invoke-direct {v4, p0}, Lnet/simonvt/numberpicker/NumberPicker$e;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 696
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 697
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 700
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    .line 702
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:I

    .line 703
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:I

    .line 705
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->k:I

    .line 708
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 709
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 710
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 711
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->k:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 712
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 713
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 714
    sget-object v4, Lnet/simonvt/numberpicker/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 715
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 716
    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:Landroid/graphics/Paint;

    .line 719
    new-instance v0, Lbwt;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v7, v2}, Lbwt;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;B)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    .line 720
    new-instance v0, Lbwt;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v2, v3}, Lbwt;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lbwt;

    .line 722
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 726
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 727
    invoke-virtual {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setImportantForAccessibility(I)V

    .line 730
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 617
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 631
    goto/16 :goto_2

    .line 668
    :cond_6
    iput-object v7, p0, Lnet/simonvt/numberpicker/NumberPicker;->b:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 677
    :cond_7
    iput-object v7, p0, Lnet/simonvt/numberpicker/NumberPicker;->c:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method private static a(II)I
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1528
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1539
    :goto_0
    :sswitch_0
    return p0

    .line 1531
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1532
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1533
    sparse-switch v1, :sswitch_data_0

    .line 1541
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

    .line 1537
    :sswitch_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 1539
    :sswitch_2
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 1533
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
    .line 1557
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 1558
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1559
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    or-int/lit8 p1, v0, 0x0

    .line 1561
    :cond_1
    return p1

    .line 1559
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

.method private a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1925
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1949
    :goto_0
    return v0

    .line 1930
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1932
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1933
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1934
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1930
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1943
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 1928
    :catch_0
    move-exception v0

    .line 1949
    :goto_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;I)I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 1716
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    if-ne v0, p1, :cond_0

    .line 1720
    :goto_0
    return-void

    .line 1719
    :cond_0
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    goto :goto_0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->c()V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    if-nez v0, :cond_0

    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$i;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$i;->a(Lnet/simonvt/numberpicker/NumberPicker$i;I)I

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-static {v0, p2}, Lnet/simonvt/numberpicker/NumberPicker$i;->b(Lnet/simonvt/numberpicker/NumberPicker$i;I)I

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 95
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal$2563266(I)V

    goto :goto_0
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 1653
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-eqz v0, :cond_2

    .line 1654
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1655
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lbwt;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lbwt;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lbwt;)Z

    .line 1658
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:I

    .line 1659
    if-eqz p1, :cond_1

    .line 1660
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v2}, Lbwt;->a(II)V

    .line 1664
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 1672
    :goto_1
    return-void

    .line 1662
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    invoke-virtual {v0, v1, v2}, Lbwt;->a(II)V

    goto :goto_0

    .line 1666
    :cond_2
    if-eqz p1, :cond_3

    .line 1667
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal$2563266(I)V

    goto :goto_1

    .line 1669
    :cond_3
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal$2563266(I)V

    goto :goto_1
.end method

.method private a(ZJ)V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    if-nez v0, :cond_0

    .line 1864
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$c;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    .line 1868
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$c;->a(Lnet/simonvt/numberpicker/NumberPicker$c;Z)V

    .line 1869
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v0, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1870
    return-void

    .line 1866
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lbwt;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 788
    iput-boolean v1, p1, Lbwt;->d:Z

    .line 789
    iget v0, p1, Lbwt;->b:I

    iget v3, p1, Lbwt;->c:I

    sub-int v3, v0, v3

    .line 790
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    add-int/2addr v0, v3

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    rem-int/2addr v0, v4

    .line 791
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    sub-int v0, v4, v0

    .line 792
    if-eqz v0, :cond_2

    .line 793
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_0

    .line 794
    if-lez v0, :cond_1

    .line 795
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v0, v4

    .line 800
    :cond_0
    :goto_0
    add-int/2addr v0, v3

    .line 801
    invoke-virtual {p0, v2, v0}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    move v0, v1

    .line 804
    :goto_1
    return v0

    .line 797
    :cond_1
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 804
    goto :goto_1
.end method

.method static synthetic a()[C
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->ah:[C

    return-object v0
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 1744
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    if-le p1, v0, :cond_1

    .line 1745
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    sub-int v1, p1, v1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1749
    :cond_0
    :goto_0
    return p1

    .line 1746
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    if-ge p1, v0, :cond_0

    .line 1747
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v1, p1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/NumberPicker;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1190
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1191
    if-eqz v0, :cond_1

    .line 1192
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-eqz v1, :cond_0

    .line 1193
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1195
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1196
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1198
    :cond_1
    return-void
.end method

.method static synthetic b(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(ZJ)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1204
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1205
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1207
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1211
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 1789
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->u:Landroid/util/SparseArray;

    .line 1790
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1791
    if-eqz v0, :cond_0

    .line 1805
    :goto_0
    return-void

    .line 1794
    :cond_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    if-le p1, v0, :cond_2

    .line 1795
    :cond_1
    const-string v0, ""

    .line 1804
    :goto_1
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1797
    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1798
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int v0, p1, v0

    .line 1799
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    aget-object v0, v2, v0

    goto :goto_1

    .line 1801
    :cond_3
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic c(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    return p1
.end method

.method static synthetic c(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    return v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->s:Lnet/simonvt/numberpicker/NumberPicker$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->s:Lnet/simonvt/numberpicker/NumberPicker$d;

    invoke-interface {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$d;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->e(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1217
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->j:Z

    if-nez v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1222
    const/4 v1, 0x0

    move v3, v2

    .line 1223
    :goto_1
    const/16 v0, 0x9

    if-gt v3, v0, :cond_2

    .line 1224
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:Landroid/graphics/Paint;

    invoke-static {v3}, Lnet/simonvt/numberpicker/NumberPicker;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1225
    cmpl-float v4, v0, v1

    if-lez v4, :cond_8

    .line 1223
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1230
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    .line 1231
    :goto_3
    if-lez v0, :cond_3

    .line 1232
    add-int/lit8 v2, v2, 0x1

    .line 1233
    div-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 1235
    :cond_3
    int-to-float v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1245
    :cond_4
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1246
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    if-eq v1, v0, :cond_0

    .line 1247
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->h:I

    if-le v0, v1, :cond_7

    .line 1248
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    .line 1252
    :goto_4
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1237
    :cond_5
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    array-length v3, v0

    move v1, v2

    move v0, v2

    .line 1238
    :goto_5
    if-ge v1, v3, :cond_4

    .line 1239
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:Landroid/graphics/Paint;

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1240
    int-to-float v4, v0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_6

    .line 1241
    float-to-int v0, v2

    .line 1238
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1250
    :cond_7
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->h:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method static synthetic d(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ad:Z

    return p1
.end method

.method private static e(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2659
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

.method private e()V
    .locals 5

    .prologue
    .line 1605
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1606
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    .line 1607
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v3

    .line 1608
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1609
    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, v3

    .line 1610
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-eqz v4, :cond_0

    .line 1611
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->b(I)I

    move-result v1

    .line 1613
    :cond_0
    aput v1, v2, v0

    .line 1614
    aget v1, v2, v0

    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->c(I)V

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1616
    :cond_1
    return-void
.end method

.method static synthetic e(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    return v0
.end method

.method static synthetic f(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    return v0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 1837
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 1839
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1840
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    const/4 v0, 0x1

    .line 1844
    :goto_1
    return v0

    .line 1837
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0

    .line 1844
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1910
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->E:Lnet/simonvt/numberpicker/NumberPicker$i;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1913
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    if-eqz v0, :cond_2

    .line 1914
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1916
    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->af:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker$h;->a()V

    .line 1917
    return-void
.end method

.method static synthetic g(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ad:Z

    return v0
.end method

.method private getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/NumberPicker$j;
    .locals 2

    .prologue
    .line 2204
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$j;-><init>(Lnet/simonvt/numberpicker/NumberPicker;B)V

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$d;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->a:Lnet/simonvt/numberpicker/NumberPicker$k;

    return-object v0
.end method

.method static synthetic h(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    return v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2053
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    sub-int/2addr v1, v2

    .line 2054
    if-eqz v1, :cond_0

    .line 2055
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:I

    .line 2056
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    .line 2057
    if-lez v1, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v0, v1

    .line 2059
    :goto_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lbwt;

    const/16 v2, 0x320

    invoke-virtual {v1, v0, v2}, Lbwt;->a(II)V

    .line 2060
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 2061
    const/4 v0, 0x1

    .line 2063
    :cond_0
    return v0

    .line 2057
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic i(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    return v0
.end method

.method static synthetic j(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ad:Z

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ad:Z

    return v0
.end method

.method static synthetic k(Lnet/simonvt/numberpicker/NumberPicker;)J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->t:J

    return-wide v0
.end method

.method static synthetic l(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->b()V

    return-void
.end method

.method static synthetic m(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->U:Z

    return v0
.end method

.method static synthetic n(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:I

    return v0
.end method

.method static synthetic o(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    return v0
.end method

.method static synthetic p(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    return v0
.end method

.method static synthetic q(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    return v0
.end method

.method private setValueInternal$2563266(I)V
    .locals 2

    .prologue
    .line 1625
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    if-ne v0, p1, :cond_0

    .line 1643
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-eqz v0, :cond_1

    .line 1630
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->b(I)I

    move-result v0

    .line 1635
    :goto_1
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    .line 1637
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    .line 1638
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1642
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1632
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1633
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1046
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    .line 1047
    iget-boolean v1, v0, Lbwt;->d:Z

    if-eqz v1, :cond_1

    .line 1048
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lbwt;

    .line 1049
    iget-boolean v1, v0, Lbwt;->d:Z

    if-eqz v1, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    invoke-virtual {v0}, Lbwt;->a()Z

    .line 1054
    iget v1, v0, Lbwt;->c:I

    .line 1055
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:I

    if-nez v2, :cond_2

    .line 1056
    iget v2, v0, Lbwt;->a:I

    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:I

    .line 1058
    :cond_2
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v3, v2}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1059
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:I

    .line 1060
    iget-boolean v1, v0, Lbwt;->d:Z

    if-eqz v1, :cond_5

    .line 1061
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    :cond_3
    invoke-direct {p0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    goto :goto_0

    .line 1063
    :cond_5
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x80

    const/4 v3, -0x1

    .line 996
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_0

    .line 997
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1041
    :goto_0
    return v0

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1003
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    if-ge v0, v1, :cond_2

    .line 1004
    const/4 v0, 0x3

    .line 1010
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1011
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/NumberPicker$j;

    move-result-object v2

    .line 1013
    packed-switch v1, :pswitch_data_0

    .line 1041
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1005
    :cond_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    if-le v0, v1, :cond_3

    .line 1006
    const/4 v0, 0x1

    goto :goto_1

    .line 1008
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 1015
    :pswitch_1
    invoke-virtual {v2, v0, v4}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1017
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    .line 1018
    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(I)Z

    goto :goto_2

    .line 1022
    :pswitch_2
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    if-eq v1, v3, :cond_1

    .line 1024
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    invoke-virtual {v2, v1, v5}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1027
    invoke-virtual {v2, v0, v4}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1029
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    .line 1030
    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(I)Z

    goto :goto_2

    .line 1035
    :pswitch_3
    invoke-virtual {v2, v0, v5}, Lnet/simonvt/numberpicker/NumberPicker$j;->a(II)V

    .line 1037
    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->ab:I

    goto :goto_2

    .line 1013
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

    .line 947
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 948
    sparse-switch v0, :sswitch_data_0

    .line 979
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 951
    :sswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    goto :goto_0

    .line 955
    :sswitch_1
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-eqz v2, :cond_0

    .line 956
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 960
    :pswitch_0
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-nez v2, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 962
    :goto_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->requestFocus()Z

    .line 963
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    .line 964
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    .line 965
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    iget-boolean v2, v2, Lbwt;->d:Z

    if-eqz v2, :cond_1

    .line 966
    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    goto :goto_1

    .line 960
    :cond_3
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 966
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 972
    :pswitch_1
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    if-ne v2, v0, :cond_0

    .line 973
    const/4 v0, -0x1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ag:I

    goto :goto_1

    .line 948
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 936
    packed-switch v0, :pswitch_data_0

    .line 942
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 939
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    goto :goto_0

    .line 936
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
    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 985
    packed-switch v0, :pswitch_data_0

    .line 991
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 988
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    goto :goto_0

    .line 985
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
    .line 1511
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_0

    .line 1512
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1517
    :goto_0
    return-object v0

    .line 1514
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Lnet/simonvt/numberpicker/NumberPicker$j;

    if-nez v0, :cond_1

    .line 1515
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$j;-><init>(Lnet/simonvt/numberpicker/NumberPicker;B)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Lnet/simonvt/numberpicker/NumberPicker$j;

    .line 1517
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->ae:Lnet/simonvt/numberpicker/NumberPicker$j;

    iget-object v0, v0, Lnet/simonvt/numberpicker/NumberPicker$j;->a:Lnet/simonvt/numberpicker/NumberPicker$a;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1433
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1321
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->P:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1428
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1265
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1438
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    .line 1439
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1443
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_1

    .line 1444
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1447
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 1448
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    int-to-float v0, v0

    .line 1451
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    if-nez v1, :cond_3

    .line 1453
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ad:Z

    if-eqz v1, :cond_2

    .line 1455
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1456
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v3

    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    invoke-virtual {v1, v2, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1457
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1459
    :cond_2
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->ac:Z

    if-eqz v1, :cond_3

    .line 1461
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1462
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1464
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1469
    :cond_3
    iget-object v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    move v1, v2

    move v3, v0

    .line 1470
    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_6

    .line 1471
    aget v0, v5, v1

    .line 1472
    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->u:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1478
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    .line 1479
    :cond_4
    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1481
    :cond_5
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 1470
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1485
    :cond_6
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1487
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    .line 1488
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:I

    add-int/2addr v1, v0

    .line 1489
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1490
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1493
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    .line 1494
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:I

    sub-int v1, v0, v1

    .line 1495
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1496
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 1502
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1503
    const-class v0, Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1504
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1505
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1506
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1507
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 809
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 857
    :goto_0
    return v0

    .line 812
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 813
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 857
    goto :goto_0

    .line 815
    :pswitch_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    .line 816
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:F

    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:F

    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->I:J

    .line 819
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->U:Z

    .line 820
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->V:Z

    .line 822
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:F

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 823
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    if-nez v2, :cond_2

    .line 824
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->af:Lnet/simonvt/numberpicker/NumberPicker$h;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lnet/simonvt/numberpicker/NumberPicker$h;->a(I)V

    .line 834
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 835
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    iget-boolean v2, v2, Lbwt;->d:Z

    if-nez v2, :cond_4

    .line 836
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    iput-boolean v0, v2, Lbwt;->d:Z

    .line 837
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lbwt;

    iput-boolean v0, v2, Lbwt;->d:Z

    .line 838
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    goto :goto_0

    .line 827
    :cond_3
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:F

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 828
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    if-nez v2, :cond_2

    .line 829
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->af:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/NumberPicker$h;->a(I)V

    goto :goto_1

    .line 839
    :cond_4
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lbwt;

    iget-boolean v2, v2, Lbwt;->d:Z

    if-nez v2, :cond_5

    .line 840
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    iput-boolean v0, v1, Lbwt;->d:Z

    .line 841
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->C:Lbwt;

    iput-boolean v0, v1, Lbwt;->d:Z

    goto :goto_0

    .line 842
    :cond_5
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:F

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 843
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->c()V

    .line 844
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->a(ZJ)V

    goto/16 :goto_0

    .line 846
    :cond_6
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:F

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 847
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->c()V

    .line 848
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->a(ZJ)V

    goto/16 :goto_0

    .line 851
    :cond_7
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->V:Z

    .line 852
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    if-nez v1, :cond_8

    new-instance v1, Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-direct {v1, p0}, Lnet/simonvt/numberpicker/NumberPicker$b;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    :goto_2
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-virtual {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 734
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_1

    .line 735
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v0

    .line 739
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v1

    .line 742
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    .line 743
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    .line 744
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 745
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 746
    add-int/2addr v2, v0

    .line 747
    add-int/2addr v3, v1

    .line 748
    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/EditText;->layout(IIII)V

    .line 750
    if-eqz p1, :cond_0

    .line 752
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    array-length v1, v0

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->k:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

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

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->l:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->k:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    .line 753
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->k:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    .line 754
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getHeight()I

    move-result v0

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->e:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    .line 756
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->W:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->S:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->aa:I

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 763
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_0

    .line 764
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 777
    :goto_0
    return-void

    .line 768
    :cond_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->i:I

    invoke-static {p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(II)I

    move-result v0

    .line 769
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->g:I

    invoke-static {p2, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(II)I

    move-result v1

    .line 770
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 772
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->h:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1, p1}, Lnet/simonvt/numberpicker/NumberPicker;->a(III)I

    move-result v0

    .line 774
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->f:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2, p2}, Lnet/simonvt/numberpicker/NumberPicker;->a(III)I

    move-result v1

    .line 776
    invoke-virtual {p0, v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 862
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 930
    :cond_1
    :goto_0
    return v0

    .line 865
    :cond_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 866
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:Landroid/view/VelocityTracker;

    .line 868
    :cond_3
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 870
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 890
    :pswitch_0
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->G:Lnet/simonvt/numberpicker/NumberPicker$b;

    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 891
    :cond_4
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->F:Lnet/simonvt/numberpicker/NumberPicker$c;

    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 892
    :cond_5
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->af:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker$h;->a()V

    .line 893
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:Landroid/view/VelocityTracker;

    .line 894
    const/16 v3, 0x3e8

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->N:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 895
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    .line 896
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->M:I

    if-le v3, v4, :cond_9

    .line 897
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->D:I

    if-lez v2, :cond_8

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    invoke-virtual {v3, v1, v1, v2}, Lbwt;->a(III)V

    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 898
    invoke-direct {p0, v5}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    .line 926
    :goto_2
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 927
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->K:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 872
    :pswitch_1
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->U:Z

    if-nez v2, :cond_1

    .line 873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 876
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->T:I

    if-eq v3, v0, :cond_7

    .line 877
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 878
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    if-le v1, v3, :cond_6

    .line 879
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->g()V

    .line 880
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    .line 887
    :cond_6
    :goto_3
    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:F

    goto/16 :goto_0

    .line 883
    :cond_7
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->J:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    .line 884
    invoke-virtual {p0, v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 885
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_3

    .line 897
    :cond_8
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->B:Lbwt;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4, v1, v2}, Lbwt;->a(III)V

    goto :goto_1

    .line 900
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 901
    int-to-float v3, v2

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->H:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 903
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 904
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->L:I

    if-gt v3, v4, :cond_d

    .line 905
    iget-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->V:Z

    if-eqz v3, :cond_b

    .line 906
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->V:Z

    .line 907
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->b()V

    .line 924
    :cond_a
    :goto_4
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(I)V

    goto :goto_2

    .line 909
    :cond_b
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 911
    if-lez v2, :cond_c

    .line 912
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    .line 913
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->af:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v2, v0}, Lnet/simonvt/numberpicker/NumberPicker$h;->b(I)V

    goto :goto_4

    .line 915
    :cond_c
    if-gez v2, :cond_a

    .line 916
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->a(Z)V

    .line 917
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->af:Lnet/simonvt/numberpicker/NumberPicker$h;

    invoke-virtual {v2, v5}, Lnet/simonvt/numberpicker/NumberPicker$h;->b(I)V

    goto :goto_4

    .line 922
    :cond_d
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->h()Z

    goto :goto_4

    .line 870
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

    .line 1081
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    .line 1082
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-nez v0, :cond_1

    if-lez p2, :cond_1

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    if-gt v0, v3, :cond_1

    .line 1084
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-nez v0, :cond_2

    if-gez p2, :cond_2

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    if-lt v0, v3, :cond_2

    .line 1089
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    goto :goto_0

    .line 1092
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    add-int/2addr v0, p2

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1093
    :cond_3
    :goto_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    sub-int/2addr v0, v3

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->l:I

    if-le v0, v3, :cond_8

    .line 1094
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    sub-int/2addr v0, v3

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1095
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

    iget-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    if-ge v0, v3, :cond_5

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    :cond_5
    aput v0, v2, v1

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->c(I)V

    .line 1096
    aget v0, v2, v4

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal$2563266(I)V

    .line 1097
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-nez v0, :cond_3

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    if-gt v0, v3, :cond_3

    .line 1098
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    goto :goto_1

    .line 1103
    :cond_6
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    if-le v0, v3, :cond_7

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    :cond_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput v0, v2, v3

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->c(I)V

    .line 1104
    aget v0, v2, v4

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal$2563266(I)V

    .line 1105
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-nez v0, :cond_8

    aget v0, v2, v4

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    if-lt v0, v3, :cond_8

    .line 1106
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    .line 1101
    :cond_8
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->z:I

    sub-int/2addr v0, v3

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->l:I

    neg-int v3, v3

    if-ge v0, v3, :cond_0

    .line 1102
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->y:I

    add-int/2addr v0, v3

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->A:I

    move v0, v1

    .line 1103
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
    .locals 2

    .prologue
    .line 1410
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1424
    :goto_0
    return-void

    .line 1413
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    .line 1414
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->m:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1421
    :goto_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    .line 1422
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1423
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->d()V

    goto :goto_0

    .line 1419
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 1069
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1070
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1073
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->Q:Z

    if-nez v0, :cond_1

    .line 1074
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1076
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1077
    return-void
.end method

.method public setFormatter(Lnet/simonvt/numberpicker/NumberPicker$d;)V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->s:Lnet/simonvt/numberpicker/NumberPicker$d;

    if-ne p1, v0, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1149
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->s:Lnet/simonvt/numberpicker/NumberPicker$d;

    .line 1150
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1151
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 2

    .prologue
    .line 1373
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    if-ne v0, p1, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1376
    :cond_0
    if-gez p1, :cond_1

    .line 1377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    .line 1380
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    if-ge v0, v1, :cond_2

    .line 1381
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    .line 1383
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1384
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1385
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1386
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    .line 1387
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->d()V

    .line 1388
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1383
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 2

    .prologue
    .line 1335
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    if-ne v0, p1, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1338
    :cond_0
    if-gez p1, :cond_1

    .line 1339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1341
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    .line 1342
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    if-le v0, v1, :cond_2

    .line 1343
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->p:I

    .line 1345
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1346
    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1347
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->e()V

    .line 1348
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->f()Z

    .line 1349
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->d()V

    .line 1350
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1345
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1

    .prologue
    .line 1303
    iput-wide p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->t:J

    .line 1304
    return-void
.end method

.method public setOnScrollListener(Lnet/simonvt/numberpicker/NumberPicker$f;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->r:Lnet/simonvt/numberpicker/NumberPicker$f;

    .line 1132
    return-void
.end method

.method public setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$g;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->q:Lnet/simonvt/numberpicker/NumberPicker$g;

    .line 1123
    return-void
.end method

.method public setValue(I)V
    .locals 0

    .prologue
    .line 1183
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal$2563266(I)V

    .line 1184
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .prologue
    .line 1286
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->o:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->v:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 1287
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    if-eq p1, v0, :cond_1

    .line 1288
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->O:Z

    .line 1290
    :cond_1
    return-void

    .line 1286
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
