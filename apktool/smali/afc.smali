.class public final Lafc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafc$3;
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
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafc;->e:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    .line 47
    const v0, 0x7f0a01fe

    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    .line 48
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lafc;->j:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lafc;->i:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lafc;->g:Landroid/view/ViewGroup;

    .line 51
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafc;->h:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lafc;->g:Landroid/view/ViewGroup;

    new-instance v1, Lafc$1;

    invoke-direct {v1, p0, p2}, Lafc$1;-><init>(Lafc;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0201

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lafc;->d:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafc;->b:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a0200

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafc;->c:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lafc;->b()V

    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafc;->e:Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    .line 157
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    int-to-long v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lafc;->a(JFZ)V

    goto :goto_0
.end method

.method public final a(JFZ)V
    .locals 5

    .prologue
    .line 180
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

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

    iput-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    .line 181
    iget-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 182
    iget-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    iget-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    new-instance v1, Lafc$2;

    invoke-direct {v1, p0, p4}, Lafc$2;-><init>(Lafc;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    iget-object v0, p0, Lafc;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 199
    return-void
.end method

.method final a(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lafc;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lafc;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lafc;->h:Landroid/widget/TextView;

    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v0, p0, Lafc;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lafc;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lafc;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lafc;->h:Landroid/widget/TextView;

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lafc;->g:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 168
    iget-object v0, p0, Lafc;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lafc;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lafc;->a(Z)V

    .line 171
    return-void
.end method
