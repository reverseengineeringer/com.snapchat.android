.class public final Lafh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafh$a;
    }
.end annotation


# static fields
.field private static final j:Lafh;


# instance fields
.field public final a:Lcom/squareup/otto/Bus;

.field protected b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field public c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

.field private final d:Landroid/content/Context;

.field private final e:Lacy;

.field private final f:Laef;

.field private final g:Lacq;

.field private final h:Ladw;

.field private final i:Lacz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lafh;

    invoke-direct {v0}, Lafh;-><init>()V

    sput-object v0, Lafh;->j:Lafh;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 69
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-static {}, Lacy;->a()Lacy;

    move-result-object v3

    invoke-static {}, Laef;->a()Laef;

    move-result-object v4

    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v5

    invoke-static {}, Ladw;->a()Ladw;

    move-result-object v6

    invoke-static {}, Lacz;->a()Lacz;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lafh;-><init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Lacy;Laef;Lacq;Ladw;Lacz;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Lacy;Laef;Lacq;Ladw;Lacz;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 81
    iput-object p1, p0, Lafh;->d:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    .line 83
    iput-object p3, p0, Lafh;->e:Lacy;

    .line 84
    iput-object p4, p0, Lafh;->f:Laef;

    .line 85
    iput-object p5, p0, Lafh;->g:Lacq;

    .line 86
    iput-object p6, p0, Lafh;->h:Ladw;

    .line 87
    iput-object p7, p0, Lafh;->i:Lacz;

    .line 89
    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static a()Lafh;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lafh;->j:Lafh;

    return-object v0
.end method

.method static synthetic a(Lafh;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic a(Lafh;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-direct {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;-><init>()V

    iput-object v0, p0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iget-object v0, p0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbev;

    iget-object v2, p0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    const-string v3, "EditionViewerFragment"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;ZLcom/snapchat/android/discover/model/EditionOpenOrigin;)Z
    .locals 13
    .param p1    # Lcom/snapchat/android/discover/ui/ChannelView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 284
    invoke-virtual {p0}, Lafh;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lafh;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    const/4 v2, 0x1

    .line 317
    :goto_0
    return v2

    .line 289
    :cond_1
    iput-object p2, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 291
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v3

    .line 292
    if-eqz p4, :cond_2

    iget-boolean v2, v3, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    if-eqz v2, :cond_3

    iget-object v2, v3, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget v2, v3, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    :cond_2
    const/4 v2, 0x1

    .line 294
    :goto_2
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->b()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-boolean v6, v3, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v3, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, v3, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 299
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 300
    iget-object v2, p0, Lafh;->f:Laef;

    iget-object v4, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Laef;->a(Ljava/lang/String;J)V

    .line 301
    iget-object v2, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v4, Lbeg;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lbeg;-><init>(Z)V

    invoke-virtual {v2, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 302
    iget-object v2, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setVisibility(I)V

    .line 303
    iget-object v4, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    iput-object p1, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v2, v5, v6}, Lcom/snapchat/android/discover/ui/ChannelView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    .line 304
    :goto_3
    iget-object v2, p0, Lafh;->g:Lacq;

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Lacq;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V

    .line 305
    iget-object v4, p0, Lafh;->h:Ladw;

    iget-object v5, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v4, Ladw;->a:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ladx;

    invoke-direct {v2, v5, v3}, Ladx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance v3, Lchh;

    invoke-direct {v3, v6, v7}, Lchh;-><init>(J)V

    invoke-virtual {v3}, Lchh;->F_()Lchh;

    move-result-object v3

    invoke-virtual {v2, v3}, Ladx;->a(Lchh;)V

    iget-object v3, v4, Ladw;->a:Ljava/util/Map;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v2, p0, Lafh;->i:Lacz;

    invoke-virtual {v2}, Lacz;->c()V

    .line 308
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 292
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 303
    :cond_5
    iget-object v2, p1, Lcom/snapchat/android/discover/ui/ChannelView;->a:Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v7, v2, Lcom/snapchat/android/discover/ui/ChannelView;

    if-nez v7, :cond_6

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    goto :goto_3

    :cond_6
    iget-object v7, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v7, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    new-instance v8, Larc;

    iget-object v9, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v9}, Lcom/snapchat/android/discover/ui/ChannelView;->getFillColor()I

    move-result v9

    invoke-direct {v8, v9}, Larc;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v2, Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v7, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Lcom/snapchat/android/discover/ui/ChannelView;->removeView(Landroid/view/View;)V

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v2, v7, v8}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->addView(Landroid/view/View;II)V

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setY(F)V

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lawf;->a(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lawf;->b(Landroid/content/Context;)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iget v8, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6, v2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(FF)F

    move-result v2

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v2, v5

    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/high16 v8, -0x1000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;

    invoke-direct {v6, v4}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v8, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_X:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v2, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x96

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    iget-object v8, v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v9, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v2, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;

    move-object/from16 v0, p3

    invoke-direct {v2, v4, v0, p1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;Lcom/snapchat/android/discover/ui/ChannelView;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    .line 305
    :cond_7
    iget-object v2, v4, Ladw;->a:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ladx;

    goto/16 :goto_4

    .line 309
    :cond_8
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->b()Z

    move-result v2

    if-nez v2, :cond_9

    .line 311
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    .line 312
    iget-object v2, p0, Lafh;->e:Lacy;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lacy;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 313
    iget-object v2, p0, Lafh;->g:Lacq;

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Lacq;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V

    .line 314
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 316
    :cond_9
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v6

    iget-object v7, v3, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-boolean v7, v3, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    if-nez v7, :cond_d

    :cond_a
    const v2, 0x7f0c0108

    iget-object v4, p0, Lafh;->d:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    :cond_b
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    :goto_5
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lafh;->g:Lacq;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    const-string v5, "DISCOVER_INTRO_MEDIA_ERROR"

    invoke-static {v5}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "publisher_name"

    invoke-virtual {v5, v6, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "type"

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "reachability"

    iget-object v4, v4, Lacq;->a:Lama;

    invoke-virtual {v4}, Lama;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 317
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 316
    :cond_d
    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v2, v7, :cond_e

    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v4, v7, :cond_e

    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v5, v7, :cond_e

    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v6, v7, :cond_f

    :cond_e
    iget-object v2, p0, Lafh;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lafh;->d:Landroid/content/Context;

    const v5, 0x7f0c00ff

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0100

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_5

    :cond_f
    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v2, v7, :cond_10

    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v4, v7, :cond_10

    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v5, v7, :cond_10

    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v6, v7, :cond_11

    :cond_10
    const v2, 0x7f0c0104

    iget-object v4, p0, Lafh;->d:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_5

    :cond_11
    sget-object v7, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v2, v7, :cond_12

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v4, v2, :cond_12

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v5, v2, :cond_12

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v6, v2, :cond_b

    :cond_12
    const v2, 0x7f0c0103

    iget-object v4, p0, Lafh;->d:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto/16 :goto_5
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;I)Z
    .locals 6
    .param p1    # Lcom/snapchat/android/discover/ui/ChannelView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    const-string v1, "edition_open_origin"

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v1, "adapter_index"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    new-instance v3, Lafh$a;

    invoke-direct {v3, p0, v0}, Lafh$a;-><init>(Lafh;Landroid/os/Bundle;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lafh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;ZLcom/snapchat/android/discover/model/EditionOpenOrigin;)Z

    move-result v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    iget-object v1, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v2, Lbeg;

    invoke-direct {v2, v4}, Lbeg;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 201
    :cond_0
    return v0
.end method

.method public final a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1    # Lcom/snapchat/android/discover/ui/ChannelView;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 215
    if-nez p1, :cond_0

    .line 216
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p5, v0, v4

    aput-object p4, v0, v2

    .line 218
    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 252
    :goto_0
    return v4

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 223
    if-nez v0, :cond_1

    .line 224
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p5, v0, v4

    aput-object p4, v0, v2

    .line 226
    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_1
    if-eqz p5, :cond_2

    .line 231
    :goto_1
    if-nez p5, :cond_3

    .line 232
    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object p5, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 238
    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    const-string v0, "archived_edition"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    :cond_4
    if-eqz p6, :cond_5

    .line 243
    const-string v0, "open_to_dsnap_id"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_2
    const-string v0, "edition_id"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "open_to_longform"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v0, "edition_open_origin"

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    new-instance v3, Lafh$a;

    invoke-direct {v3, p0, v1}, Lafh$a;-><init>(Lafh;Landroid/os/Bundle;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lafh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;ZLcom/snapchat/android/discover/model/EditionOpenOrigin;)Z

    move-result v4

    goto :goto_0

    .line 245
    :cond_5
    const-string v0, "open_to_start"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iget-boolean v0, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v0, :cond_3

    .line 143
    iget-object v1, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setBackgroundColor(I)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v2, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/discover/ui/ChannelView;->addView(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v2, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/snapchat/android/discover/ui/ChannelView;->a:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iput-boolean v3, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    iput-boolean v3, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Z

    .line 144
    iget-object v0, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setVisibility(I)V

    .line 147
    :cond_3
    iput-object v5, p0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 148
    iput-object v5, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 149
    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iget-boolean v0, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAllStackedFragmentsPoppedEvent(Lbbm;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lafh;->c()V

    .line 265
    return-void
.end method

.method public final onEditionClose(Lafw;)V
    .locals 14
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const-wide/16 v12, 0x96

    const/4 v7, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 258
    const/4 v2, 0x0

    iput-object v2, p0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iget-object v2, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v3, Lbfk;

    sget-object v4, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v3, v4}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v3, Lbbx;

    invoke-direct {v3, v1}, Lbbx;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v3, Lbeg;

    invoke-direct {v3, v1}, Lbeg;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lafh;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v2, :cond_0

    new-instance v3, Lafh$1;

    invoke-direct {v3, p0, v2}, Lafh$1;-><init>(Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    new-array v4, v7, [I

    iget-object v5, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v5, v4}, Lcom/snapchat/android/discover/ui/ChannelView;->getLocationOnScreen([I)V

    aget v5, v4, v0

    if-nez v5, :cond_1

    aget v5, v4, v1

    if-nez v5, :cond_1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lafh;->c()V

    .line 259
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v5, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    aget v6, v4, v0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setX(F)V

    iget-object v5, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    aget v4, v4, v1

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setY(F)V

    iput-boolean v1, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Z

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    const/high16 v6, -0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$3;

    invoke-direct {v5, v2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$3;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v6, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v7, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_X:Landroid/util/Property;

    new-array v8, v1, [F

    aput v10, v8, v0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v7, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v8, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_Y:Landroid/util/Property;

    new-array v9, v1, [F

    aput v10, v9, v0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;

    invoke-direct {v0, v2, v3}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    goto :goto_0
.end method
