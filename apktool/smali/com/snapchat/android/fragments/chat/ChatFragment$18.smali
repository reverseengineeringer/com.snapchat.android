.class final Lcom/snapchat/android/fragments/chat/ChatFragment$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;IJ)V
    .locals 1

    .prologue
    .line 2598
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->a:I

    iput-wide p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 2601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    .line 2603
    const/high16 v3, 0x43fa0000    # 500.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbgr;

    move-result-object v2

    invoke-virtual {v2}, Lbgr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CashReceiverView;->getAlpha()F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v2, v3

    float-to-long v4, v2

    .line 2604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbgr;

    move-result-object v2

    invoke-virtual {v2}, Lbgr;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CashReceiverView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2607
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbgr;

    move-result-object v2

    invoke-virtual {v2}, Lbgr;->a()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/ui/CashReceiverView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->a:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->b:J

    iget-object v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->f:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->f:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v4, v2

    move v13, v2

    :goto_0
    if-lez v13, :cond_9

    iget-object v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->f:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget v2, Lcom/snapchat/android/ui/CashReceiverView$a;->a:I

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/CashReceiverView;->a(I)V

    :cond_2
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v13, :cond_9

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0200a8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x42900000    # 72.0f

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v5, 0x42100000    # 36.0f

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lavh;->a(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "FALLING_DOLLAR_TAG"

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v6

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v5, 0x3f666666    # 0.9f

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v7

    add-float v7, v5, v2

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/CashReceiverView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    cmpl-float v5, v7, v5

    if-lez v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v13, v4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3, v4, v2}, Lcom/snapchat/android/ui/CashReceiverView;->addView(Landroid/view/View;I)V

    const v2, 0x40551eb8    # 3.33f

    const v5, 0x3fd47ae1    # 1.66f

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v11

    const v2, 0x3e4ccccd    # 0.2f

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v10

    const v2, 0x3ac49ba6    # 0.0015f

    const v5, -0x45fced91    # -5.0E-4f

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v5

    const/high16 v2, 0x43050000    # 133.0f

    mul-float/2addr v2, v7

    const/high16 v7, -0x3d7c0000    # -66.0f

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v2, v6}, Lavh;->a(FLandroid/content/Context;)F

    move-result v7

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const v6, 0x3ecccccd    # 0.4f

    const v8, 0x3e4ccccd    # 0.2f

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    mul-float/2addr v2, v6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float v8, v2, v6

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v6, v14

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v9, v14}, Lavh;->a(FLandroid/content/Context;)F

    move-result v9

    sub-float v9, v2, v9

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/snapchat/android/ui/CashReceiverView$3;

    invoke-direct/range {v2 .. v11}, Lcom/snapchat/android/ui/CashReceiverView$3;-><init>(Lcom/snapchat/android/ui/CashReceiverView;Landroid/view/View;FFFFFFF)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/snapchat/android/ui/CashReceiverView$4;

    invoke-direct {v2, v3, v4}, Lcom/snapchat/android/ui/CashReceiverView$4;-><init>(Lcom/snapchat/android/ui/CashReceiverView;Landroid/view/View;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    iget v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    const/4 v4, 0x6

    if-ge v2, v4, :cond_8

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200a7

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lavh;->a(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "CAUGHT_DOLLAR_TAG"

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    iget-boolean v5, v3, Lcom/snapchat/android/ui/CashReceiverView;->d:Z

    if-eqz v5, :cond_5

    iget v5, v3, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    :cond_5
    iget-boolean v5, v3, Lcom/snapchat/android/ui/CashReceiverView;->d:Z

    if-nez v5, :cond_7

    iget v5, v3, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    :cond_6
    const/high16 v5, 0x42000000    # 32.0f

    add-float/2addr v2, v5

    :cond_7
    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v2, -0x3e100000    # -30.0f

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/view/View;->setRotation(F)V

    :cond_8
    iget-object v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_1

    .line 2609
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->H(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$18;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->H(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFragment$18$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$18$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$18;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2616
    return-void

    .line 2607
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
