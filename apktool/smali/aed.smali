.class public final Laed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laed$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/snapchat/android/discover/ui/DSnapView;

.field public c:Laee;

.field public d:Laec;

.field public e:Z

.field public f:Z

.field public g:Lcom/snapchat/android/discover/model/MediaState;

.field public h:Lcom/snapchat/android/discover/model/MediaState;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Laed$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Laed;->e:Z

    .line 30
    iput-boolean v0, p0, Laed;->f:Z

    .line 31
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    .line 32
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Laed;->h:Lcom/snapchat/android/discover/model/MediaState;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Laed;->k:Laed$a;

    .line 48
    iput-object p1, p0, Laed;->a:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Laed;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laed;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 9

    .prologue
    const/16 v4, 0x320

    const/16 v8, 0x8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    iget-object v0, p0, Laed;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE: Can\'t set loading state on uninitialized presenter."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-boolean v0, p0, Laed;->e:Z

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, p1, :cond_1

    .line 126
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: Same loading state. "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Laed;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: Still loading %s, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Laed;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v3, v2, v7

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-boolean v0, p0, Laed;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: We are retrying an error."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Laed;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_3
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: New loading state %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Laed;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Laed;->d:Laec;

    invoke-virtual {v0, v4}, Laec;->a(I)V

    iget-object v0, p0, Laed;->c:Laee;

    iget-object v1, p0, Laed;->i:Ljava/lang/String;

    iget-object v2, p0, Laed;->h:Lcom/snapchat/android/discover/model/MediaState;

    iget v3, p0, Laed;->j:I

    iget-object v4, v0, Laee;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v3, "DSnapLoadingViewHolder"

    const-string v4, "LOADING-STATE %s: state: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_6

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v2, v3, :cond_6

    iget-object v1, v0, Laee;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Laee;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Laee;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, v0, Laee;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Laee;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Laee;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v1, v2}, Lavh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Laee;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_4
    :goto_1
    iget-object v0, v0, Laee;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_5
    :goto_2
    iput-object p1, p0, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    .line 148
    iput-boolean v6, p0, Laed;->e:Z

    .line 149
    iput-boolean v6, p0, Laed;->f:Z

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v2, v0, Laee;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Laee;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Laee;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v2, v0, Laee;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    new-instance v2, Lavx$a;

    invoke-direct {v2}, Lavx$a;-><init>()V

    invoke-virtual {v2, v1}, Lavx$a;->a(Ljava/lang/String;)Lavx$a;

    move-result-object v1

    iget-object v2, v0, Laee;->b:Landroid/widget/ImageView;

    iput-object v2, v1, Lavx$a;->mImageView:Landroid/widget/ImageView;

    iput-boolean v7, v1, Lavx$a;->mRequireExactDimensions:Z

    invoke-virtual {v1}, Lavx$a;->a()Lavx;

    move-result-object v1

    iget-object v2, v0, Laee;->e:Lavp;

    new-array v3, v7, [Lavy;

    iget-object v4, v0, Laee;->i:Lavy;

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Lavp;->a(Lavx;[Lavy;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laed;->c:Laee;

    invoke-virtual {v0, v4}, Laee;->a(I)V

    iget-object v3, p0, Laed;->d:Laec;

    sget-object v0, Laec$3;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f0c0105

    const v0, 0x7f0c0102

    const v2, 0x7f020109

    :goto_3
    iget-object v4, v3, Laec;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v3, Laec;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v3, Laec;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v3, Laec;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v3, v6}, Laec;->a(Z)V

    goto :goto_2

    :pswitch_0
    const v1, 0x7f0c0101

    const v0, 0x7f0c0100

    const v2, 0x7f020108

    goto :goto_3

    :pswitch_1
    const v1, 0x7f0c0105

    const v0, 0x7f0c0104

    const v2, 0x7f02010c

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
