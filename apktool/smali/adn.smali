.class public final Ladn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lapd;

.field final b:Lavs;

.field public final c:Landroid/view/View;

.field final d:Landroid/widget/FrameLayout;

.field e:Landroid/view/View;

.field f:I

.field g:Landroid/widget/ImageView;

.field h:Landroid/animation/AnimatorSet;

.field i:Z

.field private final j:Lavq;

.field private final k:Landroid/content/Context;

.field private final l:Landroid/view/View;

.field private m:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lapd;->a()Lapd;

    move-result-object v0

    new-instance v1, Lavs;

    invoke-direct {v1}, Lavs;-><init>()V

    invoke-static {}, Lavq;->a()Lavq;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ladn;-><init>(Landroid/content/Context;Lapd;Lavs;Lavq;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lapd;Lavs;Lavq;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ladn;->k:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Ladn;->a:Lapd;

    .line 65
    iput-object p3, p0, Ladn;->b:Lavs;

    .line 66
    iput-object p4, p0, Ladn;->j:Lavq;

    .line 67
    iget-object v0, p0, Ladn;->a:Lapd;

    iget-object v1, p0, Ladn;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lapd;->a(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Ladn;->a:Lapd;

    const v1, 0x7f040055

    invoke-virtual {v0, v1}, Lapd;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ladn;->c:Landroid/view/View;

    .line 70
    iget-object v0, p0, Ladn;->c:Landroid/view/View;

    const v1, 0x7f0a01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ladn;->d:Landroid/widget/FrameLayout;

    .line 71
    iget-object v0, p0, Ladn;->c:Landroid/view/View;

    const v1, 0x7f0a01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ladn;->g:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Ladn;->c:Landroid/view/View;

    const v1, 0x7f0a01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ladn;->l:Landroid/view/View;

    .line 73
    return-void
.end method

.method private static b(II)Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 179
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 184
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 185
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 186
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Ladn;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 143
    iget-boolean v0, p0, Ladn;->i:Z

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Ladn;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Ladn;->i:Z

    goto :goto_0
.end method

.method public final a(II)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x40000000    # 2.0f

    .line 89
    iget-object v0, p0, Ladn;->k:Landroid/content/Context;

    invoke-static {v0}, Lavh;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v1, v0

    .line 90
    int-to-float v0, v1

    const v2, 0x3e851eb8    # 0.26f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v2, v0

    .line 91
    int-to-float v0, v1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v3, v0

    .line 92
    int-to-float v0, v3

    const/high16 v4, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 93
    mul-int/lit8 v0, v0, 0x2

    add-int v4, v3, v0

    .line 94
    int-to-float v0, v4

    div-float v5, v0, v10

    .line 96
    iget-object v0, p0, Ladn;->j:Lavq;

    add-int v6, v1, v4

    add-int v7, v2, v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v6, v7, v8}, Lavq;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    add-int v0, v1, v4

    add-int v6, v2, v4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    :cond_0
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-static {p1, v3}, Ladn;->b(II)Landroid/graphics/Paint;

    move-result-object v3

    .line 109
    invoke-static {p2, v4}, Ladn;->b(II)Landroid/graphics/Paint;

    move-result-object v4

    .line 112
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 113
    int-to-float v8, v2

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    int-to-float v8, v1

    div-float/2addr v8, v10

    int-to-float v9, v2

    sub-float/2addr v9, v5

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 115
    int-to-float v1, v1

    div-float/2addr v1, v10

    int-to-float v2, v2

    sub-float/2addr v2, v5

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 117
    invoke-virtual {v6, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    invoke-virtual {v6, v7, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    iget-object v1, p0, Ladn;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object v0, p0, Ladn;->k:Landroid/content/Context;

    invoke-static {v0}, Lavh;->b(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ladn;->f:I

    .line 123
    iget-object v0, p0, Ladn;->c:Landroid/view/View;

    const v1, 0x7f0a01f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ladn;->e:Landroid/view/View;

    .line 124
    iget-object v0, p0, Ladn;->e:Landroid/view/View;

    iget v1, p0, Ladn;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 126
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v1, -0x3f600000    # -5.0f

    iget-object v2, p0, Ladn;->k:Landroid/content/Context;

    invoke-static {v1, v2}, Lavh;->a(FLandroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Ladn;->e:Landroid/view/View;

    sget-object v3, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v4, v12, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v1, v4, v11

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v12}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iput-object v0, p0, Ladn;->h:Landroid/animation/AnimatorSet;

    .line 127
    new-instance v0, Ladn$1;

    invoke-direct {v0, p0}, Ladn$1;-><init>(Ladn;)V

    iput-object v0, p0, Ladn;->m:Landroid/animation/Animator$AnimatorListener;

    .line 138
    iget-object v0, p0, Ladn;->h:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Ladn;->m:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ladn;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladn;->i:Z

    .line 150
    iget-object v0, p0, Ladn;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ladn$2;

    invoke-direct {v1, p0}, Ladn$2;-><init>(Ladn;)V

    iget-object v2, p0, Ladn;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method
