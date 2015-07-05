.class public final Laeh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laeh$a;
    }
.end annotation


# static fields
.field private static final i:Laeh;


# instance fields
.field protected a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Laby;

.field private final e:Ladf;

.field private final f:Labq;

.field private final g:Lacw;

.field private h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Laeh;

    invoke-direct {v0}, Laeh;-><init>()V

    sput-object v0, Laeh;->i:Laeh;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 66
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-static {}, Laby;->a()Laby;

    move-result-object v3

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v4

    invoke-static {}, Labq;->a()Labq;

    move-result-object v5

    invoke-static {}, Lacw;->a()Lacw;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Laeh;-><init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Laby;Ladf;Labq;Lacw;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Laby;Ladf;Labq;Lacw;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 77
    iput-object p1, p0, Laeh;->b:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    .line 79
    iput-object p3, p0, Laeh;->d:Laby;

    .line 80
    iput-object p4, p0, Laeh;->e:Ladf;

    .line 81
    iput-object p5, p0, Laeh;->f:Labq;

    .line 82
    iput-object p6, p0, Laeh;->g:Lacw;

    .line 84
    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static a()Laeh;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Laeh;->i:Laeh;

    return-object v0
.end method

.method static synthetic a(Laeh;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic a(Laeh;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-direct {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;-><init>()V

    iput-object v0, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iget-object v0, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    iget-object v2, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    const-string v3, "EditionViewerFragment"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;Z)Z
    .locals 11
    .param p1    # Lcom/snapchat/android/discover/ui/ChannelView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 253
    invoke-virtual {p0}, Laeh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laeh;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    const-string v0, "EditionViewerLauncher"

    const-string v1, "Channel is already open."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    .line 258
    :cond_1
    iput-object p2, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 260
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    .line 261
    if-eqz p4, :cond_2

    iget-boolean v0, v1, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, v1, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 263
    :goto_2
    const-string v2, "EditionViewerLauncher"

    const-string v3, "Attempt to open %s - intromedia loaded: %b, ready: %b, enabled: %b, num snaps: %d, current edition: %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

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

    iget-boolean v6, v1, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v1, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 269
    iget-object v0, p0, Laeh;->e:Ladf;

    iget-object v2, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Ladf;->a(Ljava/lang/String;J)V

    .line 270
    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdg;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    iput-object p1, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v0, p1, Lcom/snapchat/android/discover/ui/ChannelView;->a:Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    new-instance v3, Laqd;

    iget-object v4, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/ChannelView;->getFillColor()I

    move-result v4

    invoke-direct {v3, v4}, Laqd;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/discover/ui/ChannelView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lavh;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lavh;->b(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v6, v0, Lcom/snapchat/android/discover/ui/ChannelView;

    if-eqz v6, :cond_3

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v6, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/discover/ui/ChannelView;->removeView(Landroid/view/View;)V

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v2, v0, v6, v7}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->addView(Landroid/view/View;II)V

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setY(F)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v6, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(FF)F

    move-result v0

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v0, v3

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, -0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;

    invoke-direct {v4, v2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v6, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v6, v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v7, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    const/4 v9, 0x1

    aput v0, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;

    invoke-direct {v0, v2, p3, p1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;Lcom/snapchat/android/discover/ui/ChannelView;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 273
    :cond_3
    iget-object v0, p0, Laeh;->f:Labq;

    invoke-virtual {v0, v1}, Labq;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 274
    iget-object v2, p0, Laeh;->g:Lacw;

    iget-object v3, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, v2, Lacw;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lacx;

    invoke-direct {v0, v3, v1}, Lacx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v1, Lcgg;

    invoke-direct {v1, v4, v5}, Lcgg;-><init>(J)V

    invoke-virtual {v1}, Lcgg;->F_()Lcgg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacx;->a(Lcgg;)V

    iget-object v1, v2, Lacw;->a:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 274
    :cond_6
    iget-object v0, v2, Lacw;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacx;

    goto :goto_3

    .line 277
    :cond_7
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    .line 280
    iget-object v0, p0, Laeh;->d:Laby;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laby;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 281
    iget-object v0, p0, Laeh;->f:Labq;

    invoke-virtual {v0, v1}, Labq;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 282
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 284
    :cond_8
    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    iget-object v5, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-boolean v5, v1, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    if-nez v5, :cond_c

    :cond_9
    const v0, 0x7f0c0108

    iget-object v2, p0, Laeh;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    :cond_a
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    :goto_4
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Laeh;->f:Labq;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    const-string v3, "DISCOVER_INTRO_MEDIA_ERROR"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "publisher_name"

    invoke-virtual {v3, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, v2, Labq;->a:Lale;

    invoke-virtual {v2}, Lale;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 285
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 284
    :cond_c
    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v5, :cond_d

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v2, v5, :cond_d

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v3, v5, :cond_d

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_e

    :cond_d
    iget-object v0, p0, Laeh;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Laeh;->b:Landroid/content/Context;

    const v3, 0x7f0c00ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c0100

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_4

    :cond_e
    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v5, :cond_f

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v2, v5, :cond_f

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v3, v5, :cond_f

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_10

    :cond_f
    const v0, 0x7f0c0104

    iget-object v2, p0, Laeh;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_4

    :cond_10
    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v5, :cond_11

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v2, v0, :cond_11

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v3, v0, :cond_11

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v0, :cond_a

    :cond_11
    const v0, 0x7f0c0103

    iget-object v2, p0, Laeh;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    goto/16 :goto_4
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)Z
    .locals 4
    .param p1    # Lcom/snapchat/android/discover/ui/ChannelView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string v1, "edition_open_origin"

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    new-instance v1, Laeh$a;

    invoke-direct {v1, p0, v0}, Laeh$a;-><init>(Laeh;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v1, v3}, Laeh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;Z)Z

    move-result v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    iget-object v1, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdg;

    invoke-direct {v2, v3}, Lbdg;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 177
    :cond_0
    return v0
.end method

.method public final a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/ui/ChannelView;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 191
    if-nez p1, :cond_0

    .line 192
    const-string v1, "EditionViewerLauncher"

    const-string v2, "Didn\'t open specific edition %s. Publisher %s not available."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p5, v3, v0

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdg;

    invoke-direct {v2, v4}, Lbdg;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 228
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    .line 199
    if-nez v1, :cond_1

    .line 200
    const-string v1, "EditionViewerLauncher"

    const-string v2, "Didn\'t open specific edition %s. Channel page was null for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p5, v3, v0

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdg;

    invoke-direct {v2, v4}, Lbdg;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_1
    if-eqz p5, :cond_2

    .line 207
    :goto_1
    if-nez p5, :cond_3

    .line 208
    iget-object v1, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdg;

    invoke-direct {v2, v4}, Lbdg;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object p5, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    goto :goto_1

    .line 212
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 214
    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-static {p5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    const-string v1, "archived_edition"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    :cond_4
    if-eqz p6, :cond_5

    .line 219
    const-string v1, "open_to_dsnap_id"

    invoke-virtual {v2, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_2
    const-string v1, "edition_id"

    invoke-virtual {v2, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "open_to_longform"

    invoke-virtual {v2, v1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    const-string v1, "edition_open_origin"

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->ordinal()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    new-instance v1, Laeh$a;

    invoke-direct {v1, p0, v2}, Laeh$a;-><init>(Laeh;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v1, v0}, Laeh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;Z)Z

    move-result v0

    goto :goto_0

    .line 221
    :cond_5
    const-string v1, "open_to_start"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

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
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0}, Laeh;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setBackgroundColor(I)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v2, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v4}, Lcom/snapchat/android/discover/ui/ChannelView;->addView(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v2, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/snapchat/android/discover/ui/ChannelView;->a:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iget-object v1, v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-nez v1, :cond_2

    const-string v0, "EditionViewerFragment"

    const-string v1, "channel page or pager was null when logging app background"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 137
    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    invoke-direct {v1, v5}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 140
    :cond_1
    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdt;

    invoke-direct {v1, v5}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 141
    return-void

    .line 135
    :cond_2
    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->ENTER_BACKGROUND:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

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
    .line 155
    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iget-boolean v0, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onEditionClose(Laew;)V
    .locals 12
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const-wide/16 v10, 0x96

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Laeh;->h:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lbaw;

    invoke-direct {v1, v7}, Lbaw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Laeh;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    invoke-direct {v1, v7}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laeh;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    new-instance v1, Laeh$1;

    invoke-direct {v1, p0}, Laeh$1;-><init>(Laeh;)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setY(F)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/high16 v4, -0x1000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$3;

    invoke-direct {v3, v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$3;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v5, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_X:Landroid/util/Property;

    new-array v6, v7, [F

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    sget-object v6, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_Y:Landroid/util/Property;

    new-array v7, v7, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 235
    :cond_0
    return-void
.end method
