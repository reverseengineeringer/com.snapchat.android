.class public Lcom/snapchat/android/fragments/ScAcceptTermsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Random;


# instance fields
.field private final b:Laph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;-><init>(Laph;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Laph;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->b:Laph;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V
    .locals 10

    .prologue
    .line 39
    const v0, 0x7f0a0316

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0315

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0317

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v5, v3, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v4

    sub-float v6, v3, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v4

    sub-float v4, v3, v4

    const v3, 0x7f0a0318

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v7

    sub-float/2addr v3, v7

    sub-float v4, v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v3

    add-float v7, v3, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move v1, v4

    const-string v3, "translationY"

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v4, v7

    const/4 v7, 0x1

    aput v6, v4, v7

    const/4 v7, 0x2

    aput v1, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v4, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v4, "translationY"

    const/4 v7, 0x3

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v6, 0x2

    aput v1, v7, v6

    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v4, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x104

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x104

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x104

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x104

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$10;

    invoke-direct {v6, p0, v2}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$10;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x64

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0319

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v6, 0x82

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$11;

    invoke-direct {v3, p0, v0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$11;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v0, 0x7f0a0315

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "scaleX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "scaleY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_4

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v6, 0xe6

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$12;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v6, 0x0

    const/high16 v7, -0x3e600000    # -20.0f

    aput v7, v3, v6

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_5

    invoke-static {v0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v8, 0x82

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->i()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->m()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Laph;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->b:Laph;

    return-object v0
.end method

.method private i()Landroid/animation/Animator;
    .locals 11

    .prologue
    .line 309
    const v0, 0x7f0a031b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 310
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 311
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 312
    const-wide/16 v4, 0xb6

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    const-wide/16 v4, 0xb6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 315
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 316
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$2;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    const v0, 0x7f0a031c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 328
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 329
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 330
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 331
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 332
    const-wide/16 v6, 0x16d

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 333
    const-wide/16 v6, 0x16d

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 335
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 336
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 337
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 340
    sget-object v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x4

    .line 341
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 342
    const v1, 0x7f0a0314

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x2

    const v9, 0x7f0a031d

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x0

    const v9, 0x7f0a031c

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020293

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-float v8, v7

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    int-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/high16 v1, 0x42960000    # 75.0f

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setY(F)V

    sget-object v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/16 v7, 0x47

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, -0x1

    sget-object v7, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/16 v8, 0xa0

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x50

    mul-int/lit8 v7, v7, -0x1

    const-string v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    int-to-float v7, v7

    aput v7, v9, v10

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-string v8, "translationY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    int-to-float v1, v1

    aput v1, v9, v10

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;

    invoke-direct {v1, p0, v6}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v6, 0xb6

    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 341
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 345
    :cond_0
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;

    invoke-direct {v1, p0, v0, v5}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    return-object v5

    .line 310
    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 311
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data

    .line 330
    :array_2
    .array-data 4
        0x0
        -0x3d240000    # -110.0f
    .end array-data

    .line 331
    :array_3
    .array-data 4
        -0x3d240000    # -110.0f
        0x0
    .end array-data
.end method

.method private m()V
    .locals 3

    .prologue
    .line 411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    const v1, 0x7f0c022f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 413
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 415
    const v1, 0x7f0c02e1

    new-instance v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    const v1, 0x7f0c0180

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 434
    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->m()V

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 74
    const v0, 0x7f04008f

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    .line 75
    const v0, 0x7f0c02a1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c02a3

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c02a2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;

    invoke-direct {v5, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v4, v5, v3, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$7;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v4, v2, v0, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a031d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$8;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c02a0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
