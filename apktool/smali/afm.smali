.class public abstract Lafm;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafm$a;
    }
.end annotation


# instance fields
.field protected final a:Laef;

.field protected final b:Laej;

.field protected final c:Lapz;

.field protected final d:Lcom/snapchat/android/discover/model/ChannelPage;

.field protected final e:Ljava/lang/String;

.field protected final f:Lacr;

.field protected final g:Lcom/snapchat/android/util/debug/ReleaseManager;

.field protected h:Z

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Lacr;Lapz;Laef;Laej;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lacr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lapz;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Laef;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Laej;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/util/debug/ReleaseManager;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafm;->h:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafm;->i:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafm;->j:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lafm;->c:Lapz;

    .line 72
    iput-object p1, p0, Lafm;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 73
    iput-object p2, p0, Lafm;->e:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lafm;->f:Lacr;

    .line 75
    iput-object p5, p0, Lafm;->a:Laef;

    .line 76
    iput-object p6, p0, Lafm;->b:Laej;

    .line 77
    iput-object p7, p0, Lafm;->g:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 78
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 5
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Lafm;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 259
    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v0

    .line 263
    goto :goto_0

    .line 264
    :cond_0
    return-object v1
.end method

.method private a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lafm$1;

    invoke-direct {v0, p0, p1}, Lafm$1;-><init>(Lafm;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    .line 312
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;)V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    invoke-virtual {p2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->o_()V

    .line 270
    instance-of v0, p2, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lafm;->c:Lapz;

    const v1, 0x7f040055

    invoke-virtual {v0, v1, p2}, Lapz;->a(ILandroid/view/View;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lafm;->c:Lapz;

    const v1, 0x7f040059

    invoke-virtual {v0, v1, p2}, Lapz;->a(ILandroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public final a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lafm;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lafm;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 208
    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, v1}, Lafm;->b(I)I

    move-result v0

    .line 212
    :goto_1
    return v0

    .line 206
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lafm;->a(I)I

    move-result v0

    .line 107
    if-gez v0, :cond_0

    .line 108
    const-string v0, "IntroVideo"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-object v1, p0, Lafm;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lafm;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 111
    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lafm;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 169
    invoke-virtual {p0, p1, v1}, Lafm;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, p1, v0}, Lafm;->a(Landroid/view/ViewGroup;Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;)V

    .line 168
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 174
    :cond_1
    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(I)I
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 161
    check-cast p3, Lafm$a;

    .line 162
    iget-object v0, p3, Lafm$a;->a:Landroid/view/View;

    check-cast v0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    .line 163
    invoke-direct {p0, p1, v0}, Lafm;->a(Landroid/view/ViewGroup;Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;)V

    .line 164
    return-void
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 119
    check-cast p1, Lafm$a;

    .line 122
    iget-boolean v0, p1, Lafm$a;->c:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, -0x1

    .line 149
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lafm;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 131
    iget-object v0, p0, Lafm;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 132
    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p1, Lafm$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 140
    :cond_1
    if-eqz v2, :cond_3

    .line 142
    iget-object v0, p1, Lafm$a;->a:Landroid/view/View;

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapView;

    .line 143
    iget-object v3, p0, Lafm;->i:Ljava/util/List;

    invoke-direct {p0, v2}, Lafm;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;ILcom/snapchat/android/discover/model/DSnapPage;)V

    .line 144
    invoke-virtual {p0, v1}, Lafm;->b(I)I

    move-result v0

    goto :goto_0

    .line 130
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 149
    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 179
    check-cast p1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    .line 182
    invoke-virtual {p0, p2}, Lafm;->a(I)I

    move-result v0

    if-gez v0, :cond_0

    move v4, v2

    .line 186
    :goto_0
    if-eqz v4, :cond_2

    .line 187
    iget-object v0, p0, Lafm;->c:Lapz;

    const v1, 0x7f040055

    invoke-virtual {v0, v1}, Lapz;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v1, p0, Lafm;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, p0, Lafm;->f:Lacr;

    invoke-virtual {v0, v1, v5}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lacr;)V

    iget-object v1, p0, Lafm;->a:Laef;

    iget-object v5, p0, Lafm;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Laef;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setCanAdvance(Z)V

    invoke-direct {p0, p1}, Lafm;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;)V

    move-object v1, v0

    .line 193
    :goto_2
    invoke-virtual {p0, p2}, Lafm;->a(I)I

    move-result v0

    if-gez v0, :cond_5

    const-string v0, "IntroVideo"

    .line 194
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p1, v1, v3}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->addView(Landroid/view/View;I)V

    .line 197
    new-instance v2, Lafm$a;

    invoke-direct {v2, v1, v0, v4}, Lafm$a;-><init>(Landroid/view/View;Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    move v4, v3

    .line 182
    goto :goto_0

    :cond_1
    move v1, v3

    .line 187
    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lafm;->i:Ljava/util/List;

    invoke-virtual {p0, p2}, Lafm;->a(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, p0, Lafm;->c:Lapz;

    const v5, 0x7f040059

    invoke-virtual {v1, v5}, Lapz;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/ui/DSnapView;

    iget-object v5, p0, Lafm;->f:Lacr;

    iput-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lacr;

    iget-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v5, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    iget-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    new-instance v6, Lafe;

    iget-object v7, v5, Lafd;->a:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Lafe;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V

    new-instance v7, Lafc;

    new-instance v8, Lafd$1;

    invoke-direct {v8, v5}, Lafd$1;-><init>(Lafd;)V

    invoke-direct {v7, v1, v8}, Lafc;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Landroid/view/View$OnClickListener;)V

    iput-object v1, v5, Lafd;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    iput-object v6, v5, Lafd;->c:Lafe;

    iput-object v7, v5, Lafd;->d:Lafc;

    iput-boolean v2, v5, Lafd;->e:Z

    iget-object v5, p0, Lafm;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    iput-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lafd;

    iget-object v6, v1, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/ChannelPage;->j()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    iget-object v8, v5, Lafd;->i:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Lafd;->i:Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iput-object v6, v5, Lafd;->i:Ljava/lang/String;

    iput-object v7, v5, Lafd;->h:Lcom/snapchat/android/discover/model/MediaState;

    iput-boolean v2, v5, Lafd;->e:Z

    iget-object v6, v5, Lafd;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v5, v6}, Lafd;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->setOnboardingEnabled(Z)V

    iget-object v2, p0, Lafm;->i:Ljava/util/List;

    invoke-virtual {p0, p2}, Lafm;->a(I)I

    move-result v5

    invoke-direct {p0, v0}, Lafm;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v6

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;ILcom/snapchat/android/discover/model/DSnapPage;)V

    invoke-direct {p0, p1}, Lafm;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;)V

    goto/16 :goto_2

    .line 193
    :cond_5
    iget-object v2, p0, Lafm;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 154
    check-cast p2, Lafm$a;

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lafm$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
