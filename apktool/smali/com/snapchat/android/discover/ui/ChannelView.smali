.class public Lcom/snapchat/android/discover/ui/ChannelView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView;

.field private final b:Ladf;

.field private final c:Ladq;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Lcom/snapchat/android/discover/model/ChannelPage;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ladq;Ladf;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Ladq;

    .line 58
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/ChannelView;->b:Ladf;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->b:Ladf;

    .line 41
    new-instance v0, Ladq;

    invoke-direct {v0}, Ladq;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Ladq;

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Ladq;

    new-instance v1, Lcom/snapchat/android/discover/ui/ChannelView$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/ChannelView$1;-><init>(Lcom/snapchat/android/discover/ui/ChannelView;)V

    iput-object v1, v0, Ladq;->d:Laeg$a;

    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->c()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->c()V

    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/ChannelPage;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->b:Ladf;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ladf;->b(Ljava/lang/String;)Z

    move-result v1

    .line 137
    iget v2, p1, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setAlpha(F)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setAlpha(F)V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lavh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Ladq;

    iput-object v1, v0, Ladq;->a:Ljava/lang/String;

    iput-object v1, v0, Ladq;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ladq;->c:Z

    .line 85
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Ladq;

    iget-boolean v0, v0, Ladq;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Ladq;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-direct {p0, v3}, Lcom/snapchat/android/discover/ui/ChannelView;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ladq;->a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;Z)V

    .line 111
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->c()V

    .line 113
    :cond_0
    return-void
.end method

.method public getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0a010b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Landroid/widget/ProgressBar;

    .line 100
    const v0, 0x7f0a010c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->a:Landroid/widget/ImageView;

    .line 101
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p2, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 93
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method public setChannelPage(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 68
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 69
    iget-object v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setTag(Ljava/lang/Object;)V

    .line 71
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->invalidate()V

    .line 74
    :cond_1
    return-void

    .line 66
    :cond_2
    invoke-static {}, Lcw;->a()Lcw;

    move-result-object v0

    iget-object v4, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcw;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcw;

    move-result-object v0

    iget-boolean v4, v3, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->k:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcw;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcw;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcw;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcw;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/snapchat/android/discover/ui/ChannelView;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/ChannelView;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcw;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcw;

    move-result-object v0

    iget v4, v3, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iget v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-virtual {v0, v4, v5}, Lcw;->a(II)Lcw;

    move-result-object v0

    iget v4, v3, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    iget v5, p1, Lcom/snapchat/android/discover/model/ChannelPage;->i:I

    invoke-virtual {v0, v4, v5}, Lcw;->a(II)Lcw;

    move-result-object v4

    iget v0, v3, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p1, Lcom/snapchat/android/discover/model/ChannelPage;->j:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcw;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->b()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public setProgressBarVisibility(Z)V
    .locals 2

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavh;->a(Landroid/view/View;I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lavh;->a(Landroid/view/View;I)V

    goto :goto_0
.end method
