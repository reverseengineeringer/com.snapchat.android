.class public final Laee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field final b:Landroid/widget/ImageView;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/graphics/drawable/AnimationDrawable;

.field final e:Lavp;

.field public f:Z

.field public g:Landroid/animation/Animator;

.field h:Landroid/animation/ObjectAnimator;

.field final i:Lavy;

.field private final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/DSnapView;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 51
    new-instance v0, Lavp;

    invoke-direct {v0, p1}, Lavp;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Laee;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;Lavp;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;Lavp;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/ui/DSnapView;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Laee;->f:Z

    .line 133
    new-instance v0, Laee$1;

    invoke-direct {v0, p0}, Laee$1;-><init>(Laee;)V

    iput-object v0, p0, Laee;->i:Lavy;

    .line 57
    iput-object p3, p0, Laee;->e:Lavp;

    .line 58
    iput-object p1, p0, Laee;->j:Landroid/content/Context;

    .line 60
    const v0, 0x7f0a01fc

    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laee;->a:Landroid/view/View;

    .line 61
    const v0, 0x7f0a01fe

    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laee;->b:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0a01fd

    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laee;->c:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Laee;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 65
    invoke-virtual {p0}, Laee;->a()V

    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 80
    iget-object v0, p0, Laee;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object v0, p0, Laee;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Laee;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Laee;->h:Landroid/animation/ObjectAnimator;

    .line 83
    iget-object v0, p0, Laee;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v0, p0, Laee;->h:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 85
    iget-object v0, p0, Laee;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 86
    return-void

    .line 82
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Laee;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laee;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v0, "DSnapLoadingViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOADING-STATE: Hiding with duration "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    int-to-long v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Laee;->a(JFZ)V

    goto :goto_0
.end method

.method public final a(JFZ)V
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Laee;->a:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Laee;->g:Landroid/animation/Animator;

    .line 209
    iget-object v0, p0, Laee;->g:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 210
    iget-object v0, p0, Laee;->g:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-object v0, p0, Laee;->g:Landroid/animation/Animator;

    new-instance v1, Laee$2;

    invoke-direct {v1, p0, p4}, Laee$2;-><init>(Laee;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    iget-object v0, p0, Laee;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 227
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Laee;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Laee;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 194
    iget-object v0, p0, Laee;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 195
    iget-object v0, p0, Laee;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Laee;->f:Z

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Laee;->g:Landroid/animation/Animator;

    .line 198
    iget-object v0, p0, Laee;->e:Lavp;

    iget-object v1, p0, Laee;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lavp;->a(Landroid/widget/ImageView;)V

    .line 199
    return-void
.end method
