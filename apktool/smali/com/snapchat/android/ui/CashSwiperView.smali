.class public Lcom/snapchat/android/ui/CashSwiperView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/CashSwiperView$a;,
        Lcom/snapchat/android/ui/CashSwiperView$c;,
        Lcom/snapchat/android/ui/CashSwiperView$b;,
        Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:Landroid/os/Handler;

.field private C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

.field private D:Lxw;

.field public b:Lcom/snapchat/android/ui/CashSwiperView$b;

.field public c:Landroid/media/MediaPlayer;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Z

.field private f:Landroid/view/GestureDetector;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:F

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/VelocityTracker;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/view/ViewPropertyAnimator;

.field private o:Landroid/view/ViewPropertyAnimator;

.field private p:F

.field private q:Landroid/os/Handler;

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/view/ViewGroup;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private y:Landroid/os/Handler;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/CashSwiperView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lxw;

    .line 107
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lxw;

    .line 112
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lxw;

    .line 117
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    return-object v0
.end method

.method private a(F)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 390
    :cond_0
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 391
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->q:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->q:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/ui/CashSwiperView$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/CashSwiperView$9;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    const/16 v2, 0x270f

    if-ge v0, v2, :cond_5

    .line 400
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    .line 401
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->e()V

    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    if-ne v0, v10, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->A:J

    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lxw;

    if-nez v0, :cond_3

    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    new-instance v2, Lxw$a;

    invoke-direct {v2}, Lxw$a;-><init>()V

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getHeight()I

    move-result v3

    sub-int v0, v3, v0

    iput v0, v2, Lxw$a;->b:I

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getWidth()I

    move-result v0

    iput v0, v2, Lxw$a;->a:I

    const/high16 v0, 0x42fa0000    # 125.0f

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Lxw$a;->c:I

    new-instance v0, Lxw;

    invoke-direct {v0, v2, v1}, Lxw;-><init>(Lxw$a;B)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lxw;

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lxw;

    iput-object v2, v0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->b:Lxv;

    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getHotness()F

    move-result v0

    cmpl-float v0, v0, v7

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    iget-boolean v0, v2, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Z

    if-nez v0, :cond_4

    iput-boolean v10, v2, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Z

    move v0, v1

    :goto_1
    iget v3, v2, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a:I

    if-ge v0, v3, :cond_4

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v10, [F

    aput v6, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, p1

    const v5, -0x3ac48000    # -3000.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v10, [F

    aput v2, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v10, [F

    aput v7, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v6, v10, [F

    aput v7, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    iput-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->h()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnBottom(Landroid/view/View;)V

    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->b:Lcom/snapchat/android/ui/CashSwiperView$b;

    invoke-interface {v6}, Lcom/snapchat/android/ui/CashSwiperView$b;->u()V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/snapchat/android/ui/CashSwiperView$10;

    invoke-direct {v7, p0, v5}, Lcom/snapchat/android/ui/CashSwiperView$10;-><init>(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v1

    aput-object v2, v5, v10

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->d()V

    goto/16 :goto_0
.end method

.method private a(FLandroid/view/View;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 192
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 193
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    .line 194
    new-array v4, v8, [I

    .line 195
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v1

    .line 196
    :goto_0
    if-ge v0, v8, :cond_0

    .line 197
    aget v6, v2, v0

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v5

    mul-float/2addr v6, v7

    aget v7, v3, v0

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/high16 v0, -0xe000000

    aget v1, v4, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v4, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, v4, v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBackgroundColor(I)V

    .line 202
    const v0, 0x7f0a01f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 203
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    float-to-double v2, p1

    const-wide v4, 0x3ff8532617c1bda5L    # 1.5203

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fe0548a9bcfd4bfL    # 0.51032

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lavh;->a(DD)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 205
    return-void

    .line 192
    :array_0
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    .line 193
    :array_1
    .array-data 4
        0xff
        0xf0
        0x80
    .end array-data
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    const v1, 0x7f040023

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/CashSwiperView$1;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    .line 134
    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/view/ViewGroup;

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/view/ViewGroup;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$5;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    .line 145
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->h()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    .line 146
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->h()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    .line 147
    const v0, 0x7f0a00f6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/widget/TextView;

    .line 148
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$c;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/ui/CashSwiperView$c;-><init>(Lcom/snapchat/android/ui/CashSwiperView;B)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->f:Landroid/view/GestureDetector;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->q:Landroid/os/Handler;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:Ljava/util/List;

    .line 151
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/VelocityTracker;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->y:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/CashSwiperView$6;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->x:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 163
    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnBottom(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnTop(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;F)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 50
    iget-boolean v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->z:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->n:Landroid/view/ViewPropertyAnimator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->n:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->o:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:F

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    cmpl-float v3, v2, v5

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v3, v2, v3

    sub-float v3, v6, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/CashSwiperView;->setAlpha(F)V

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:F

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v6}, Lcom/snapchat/android/ui/CashSwiperView;->setAlpha(F)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->f:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v1, :cond_a

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lavh;->b(FLandroid/content/Context;)F

    move-result v2

    const/high16 v4, -0x3cea0000    # -150.0f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_b

    if-nez v3, :cond_8

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/snapchat/android/ui/CashSwiperView;->a(F)V

    :cond_8
    :goto_2
    if-nez v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    const/high16 v4, 0x43160000    # 150.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c

    if-nez v3, :cond_8

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->b()V

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->n:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->o:Landroid/view/ViewPropertyAnimator;

    :cond_d
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->d()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 338
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getAlpha()F

    move-result v0

    .line 340
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 344
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/ui/CashSwiperView;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/CashSwiperView;)F
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:F

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 369
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    if-nez v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->f()V

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0c0289

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 378
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c028b

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 667
    const v0, 0x402df854    # (float)Math.E

    .line 668
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 672
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    .line 673
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->x:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 674
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 675
    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 50
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Z

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "coolness"

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$7;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    iput-boolean v4, v1, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Z

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private getBlingtonePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcom/snapchat/android/ui/CashSwiperView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()Landroid/view/View;
    .locals 4
    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 681
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 683
    const v1, 0x7f040053

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 684
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 687
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 690
    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c028a

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->e()V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/ui/CashSwiperView;)Lcom/snapchat/android/ui/CashSwiperView$b;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->b:Lcom/snapchat/android/ui/CashSwiperView$b;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpFadeInAudio()V

    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->y:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/ui/CashSwiperView$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/CashSwiperView$3;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    add-int/lit16 v3, v3, -0x1f4

    sub-int v0, v3, v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic p(Lcom/snapchat/android/ui/CashSwiperView;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->e:Z

    return v0
.end method

.method static synthetic q(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->g()V

    return-void
.end method

.method static synthetic r(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic s(Lcom/snapchat/android/ui/CashSwiperView;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->e:Z

    return v0
.end method

.method private setBarTextWithFade(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->z:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/snapchat/android/ui/CashSwiperView;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 356
    new-instance v2, Lcom/snapchat/android/ui/CashSwiperView$8;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/ui/CashSwiperView$8;-><init>(Lcom/snapchat/android/ui/CashSwiperView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/widget/TextView;

    sget-object v3, Lcom/snapchat/android/ui/CashSwiperView;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 363
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 364
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 365
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private setUpDollarViewOnBottom(Landroid/view/View;)V
    .locals 3

    .prologue
    const v1, 0x3f6147ae    # 0.88f

    .line 171
    invoke-static {p1}, Lavh;->c(Landroid/view/View;)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 173
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 174
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Z

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getHotness()F

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(FLandroid/view/View;)V

    .line 183
    :cond_0
    return-void
.end method

.method private setUpDollarViewOnTop(Landroid/view/View;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 247
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 248
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 249
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 250
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnTop(Landroid/view/View;)V

    .line 464
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnBottom(Landroid/view/View;)V

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    .line 466
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->f()V

    .line 467
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 506
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/CashSwiperView$11;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 518
    if-nez p1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 526
    invoke-virtual {p0, v7}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->b:Lcom/snapchat/android/ui/CashSwiperView$b;

    invoke-interface {v0}, Lcom/snapchat/android/ui/CashSwiperView$b;->w()V

    .line 529
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 530
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const v2, 0x443b8000    # 750.0f

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 534
    sget-object v2, Lcom/snapchat/android/ui/CashSwiperView;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 535
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:Landroid/view/View;

    sget-object v4, Lcom/snapchat/android/ui/CashSwiperView;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v8, [F

    aput v1, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 537
    iget-object v4, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/view/View;

    sget-object v5, Lcom/snapchat/android/ui/CashSwiperView;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 540
    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 541
    new-instance v4, Lcom/snapchat/android/ui/CashSwiperView$12;

    invoke-direct {v4, p0}, Lcom/snapchat/android/ui/CashSwiperView$12;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 549
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 550
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 552
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->c()V

    .line 553
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->e:Z

    .line 636
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->y:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 638
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->g()V

    .line 639
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$4;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 650
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 651
    return-void
.end method

.method public getCoolness()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:F

    return v0
.end method

.method public getDollarsSwiped()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    return v0
.end method

.method public getFirstSwipeMillis()J
    .locals 2

    .prologue
    .line 717
    iget-wide v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->A:J

    return-wide v0
.end method

.method protected getHotness()F
    .locals 10

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 487
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:Ljava/util/List;

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

    .line 488
    const-wide/16 v8, 0x1388

    sub-long v8, v2, v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 489
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 491
    goto :goto_0

    .line 492
    :cond_0
    int-to-float v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setCoolness(F)V
    .locals 3

    .prologue
    .line 236
    iput p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:F

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 239
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/ui/CashSwiperView;->a(FLandroid/view/View;)V

    goto :goto_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method

.method protected setDollarsSwiped(I)V
    .locals 0

    .prologue
    .line 722
    iput p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:I

    .line 723
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 188
    iput-boolean p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->z:Z

    .line 189
    return-void
.end method

.method public setListener(Lcom/snapchat/android/ui/CashSwiperView$b;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->b:Lcom/snapchat/android/ui/CashSwiperView$b;

    .line 471
    return-void
.end method

.method public setSwipeTimes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:Ljava/util/List;

    .line 728
    return-void
.end method

.method public setUpFadeInAudio()V
    .locals 4

    .prologue
    .line 655
    const/high16 v0, 0x3f800000    # 1.0f

    .line 656
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 658
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 660
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const v2, 0x402df854    # (float)Math.E

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    .line 661
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->x:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 662
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 663
    return-void
.end method
