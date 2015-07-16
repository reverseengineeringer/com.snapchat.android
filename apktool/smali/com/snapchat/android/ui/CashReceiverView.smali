.class public Lcom/snapchat/android/ui/CashReceiverView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/CashReceiverView$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/ViewGroup;

.field public d:Z

.field public e:Landroid/animation/ValueAnimator;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->f:Ljava/util/HashMap;

    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->b()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->f:Ljava/util/HashMap;

    .line 49
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->b()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->f:Ljava/util/HashMap;

    .line 54
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->b()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashReceiverView;I)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/CashReceiverView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    const v1, 0x7f040022

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v0, 0x7f0a00e4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashReceiverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->a()V

    .line 63
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/CashReceiverView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/CashReceiverView;)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Z

    return v0
.end method

.method private getHotness()F
    .locals 10

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 273
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 274
    const-wide/16 v8, 0x7d0

    sub-long v8, v2, v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 275
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 277
    goto :goto_0

    .line 279
    :cond_0
    int-to-float v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Laux;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->d:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Lawf;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "CAUGHT_DOLLAR_TAG"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {p0}, Lawf;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "FALLING_DOLLAR_TAG"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashReceiverView;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 87
    :cond_4
    return-void
.end method

.method public final a(I)V
    .locals 7

    .prologue
    const/high16 v6, 0x42960000    # 75.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x41c80000    # 25.0f

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Z

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    const v1, 0x446d8000    # 950.0f

    const v2, 0x44228000    # 650.0f

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getHotness()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    invoke-static {}, Laux;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v5

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getHotness()F

    move-result v1

    invoke-static {}, Laux;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 145
    sget v1, Lcom/snapchat/android/ui/CashReceiverView$a;->b:I

    if-ne p1, v1, :cond_0

    .line 146
    neg-float v0, v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v1

    .line 151
    invoke-static {}, Laux;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getHotness()F

    move-result v3

    invoke-static {}, Laux;->a()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lawf;->a(FLandroid/content/Context;)F

    move-result v2

    .line 153
    iget-object v3, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/snapchat/android/ui/CashReceiverView$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/snapchat/android/ui/CashReceiverView$1;-><init>(Lcom/snapchat/android/ui/CashReceiverView;FFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v2, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/snapchat/android/ui/CashReceiverView$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/snapchat/android/ui/CashReceiverView$2;-><init>(Lcom/snapchat/android/ui/CashReceiverView;FFI)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 195
    return-void

    .line 139
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
