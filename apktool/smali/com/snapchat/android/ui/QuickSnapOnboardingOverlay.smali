.class public Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$2;,
        Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Landroid/widget/FrameLayout;

.field private final d:Landroid/widget/FrameLayout;

.field private e:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

.field private f:Z

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    sget-object v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->MODE_SOLID:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    iput-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->e:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    .line 93
    new-instance v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$1;-><init>(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->g:Ljava/lang/Runnable;

    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    const v1, 0x7f04008c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    sget v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->a:I

    if-ne v0, v3, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->a:I

    .line 65
    :cond_1
    const v0, 0x7f0a0313

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->c:Landroid/widget/FrameLayout;

    .line 66
    const v0, 0x7f0a0314

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->d:Landroid/widget/FrameLayout;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->b:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;)Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->e:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    return-object p1
.end method


# virtual methods
.method public setHeightThreshold(I)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    iget-object v1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method public setOverlayMode(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 75
    iput-object p1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->e:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    sget-object v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->e:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected OverlayMode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->e:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setAlpha(F)V

    .line 87
    :goto_0
    return-void

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setAlpha(F)V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setAlpha(F)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUpperRegionHighlight(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->f:Z

    if-ne p1, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iput-boolean p1, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->f:Z

    .line 123
    iget-object v2, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->c:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 124
    iget-object v2, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->d:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    sget v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->a:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->e:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    sget-object v2, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->MODE_BLINK:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->getAlpha()F

    move-result v2

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v2, v4, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v4, v1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 123
    :cond_2
    sget v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->a:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 124
    goto :goto_2

    .line 125
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
