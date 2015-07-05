.class public final Laec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laec$3;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/ImageView;

.field public e:Z

.field public f:Landroid/animation/Animator;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/view/View;

.field private final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/ui/DSnapView;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Laec;->e:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Laec;->f:Landroid/animation/Animator;

    .line 47
    const v0, 0x7f0a0200

    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    .line 48
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0206

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laec;->j:Landroid/view/View;

    .line 49
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laec;->i:Landroid/view/View;

    .line 50
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Laec;->g:Landroid/view/ViewGroup;

    .line 51
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0207

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laec;->h:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Laec;->g:Landroid/view/ViewGroup;

    new-instance v1, Laec$1;

    invoke-direct {v1, p0, p2}, Laec$1;-><init>(Laec;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laec;->d:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0201

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laec;->b:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laec;->c:Landroid/widget/TextView;

    .line 66
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laec;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, "DSnapLoadingErrorViewHolder"

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

    .line 145
    int-to-long v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Laec;->a(JFZ)V

    goto :goto_0
.end method

.method public final a(JFZ)V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Laec;->a:Landroid/view/ViewGroup;

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

    iput-object v0, p0, Laec;->f:Landroid/animation/Animator;

    .line 165
    iget-object v0, p0, Laec;->f:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 166
    iget-object v0, p0, Laec;->f:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v0, p0, Laec;->f:Landroid/animation/Animator;

    new-instance v1, Laec$2;

    invoke-direct {v1, p0, p4}, Laec$2;-><init>(Laec;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object v0, p0, Laec;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 183
    return-void
.end method

.method final a(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Laec;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Laec;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Laec;->h:Landroid/widget/TextView;

    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v0, p0, Laec;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Laec;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Laec;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Laec;->h:Landroid/widget/TextView;

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v0, p0, Laec;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_0
.end method
