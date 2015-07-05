.class public abstract Laem;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laem$a;
    }
.end annotation


# instance fields
.field protected final a:Ladf;

.field protected final b:Ladj;

.field protected final c:Lapd;

.field protected final d:Lcom/snapchat/android/discover/model/ChannelPage;

.field protected final e:Ljava/lang/String;

.field protected final f:Labr;

.field protected final g:Lcom/snapchat/android/util/debug/ReleaseManager;

.field protected h:Z

.field protected i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;Labr;Lapd;Ladf;Ladj;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Labr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lapd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Ladf;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Ladj;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p7    # Lcom/snapchat/android/util/debug/ReleaseManager;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Laem;->h:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laem;->i:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laem;->j:Ljava/util/ArrayList;

    .line 69
    iput-object p4, p0, Laem;->c:Lapd;

    .line 70
    iput-object p1, p0, Laem;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 71
    iput-object p2, p0, Laem;->e:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Laem;->f:Labr;

    .line 73
    iput-object p5, p0, Laem;->a:Ladf;

    .line 74
    iput-object p6, p0, Laem;->b:Ladj;

    .line 75
    iput-object p7, p0, Laem;->g:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 76
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 5
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Laem;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 257
    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v0

    .line 261
    goto :goto_0

    .line 262
    :cond_0
    return-object v1
.end method

.method private a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
    .locals 1

    .prologue
    .line 301
    new-instance v0, Laem$1;

    invoke-direct {v0, p0, p1}, Laem$1;-><init>(Laem;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    .line 308
    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;)V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    invoke-virtual {p2}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->q_()V

    .line 268
    instance-of v0, p2, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Laem;->c:Lapd;

    const v1, 0x7f040054

    invoke-virtual {v0, v1, p2}, Lapd;->a(ILandroid/view/View;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Laem;->c:Lapd;

    const v1, 0x7f040058

    invoke-virtual {v0, v1, p2}, Lapd;->a(ILandroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public final a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 205
    iget-object v0, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 206
    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0, v1}, Laem;->b(I)I

    move-result v0

    .line 210
    :goto_1
    return v0

    .line 204
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0, p2}, Laem;->a(I)I

    move-result v0

    .line 105
    if-gez v0, :cond_0

    .line 106
    const-string v0, "IntroVideo"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Laem;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 109
    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Landroid/database/Cursor;)V
    .param p1    # Landroid/database/Cursor;
        .annotation build Lcgc;
        .end annotation
    .end param
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Laem;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 167
    invoke-virtual {p0, p1, v1}, Laem;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1, v0}, Laem;->a(Landroid/view/ViewGroup;Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;)V

    .line 166
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method

.method public abstract b(I)I
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 159
    check-cast p3, Laem$a;

    .line 160
    iget-object v0, p3, Laem$a;->a:Landroid/view/View;

    check-cast v0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;

    .line 161
    invoke-direct {p0, p1, v0}, Laem;->a(Landroid/view/ViewGroup;Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;)V

    .line 162
    return-void
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 117
    check-cast p1, Laem$a;

    .line 120
    iget-boolean v0, p1, Laem$a;->c:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, -0x1

    .line 147
    :goto_0
    return v0

    .line 126
    :cond_0
    const/4 v2, 0x0

    .line 128
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 129
    iget-object v0, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 130
    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v4, p1, Laem$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 138
    :cond_1
    if-eqz v2, :cond_3

    .line 140
    iget-object v0, p1, Laem$a;->a:Landroid/view/View;

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapView;

    .line 141
    iget-object v3, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Laem;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;ILcom/snapchat/android/discover/model/DSnapPage;)V

    .line 142
    invoke-virtual {p0, v1}, Laem;->b(I)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 147
    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    check-cast p1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    .line 180
    invoke-virtual {p0, p2}, Laem;->a(I)I

    move-result v0

    if-gez v0, :cond_0

    move v4, v2

    .line 184
    :goto_0
    if-eqz v4, :cond_2

    .line 185
    iget-object v0, p0, Laem;->c:Lapd;

    const v1, 0x7f040054

    invoke-virtual {v0, v1}, Lapd;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v1, p0, Laem;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    iget-object v1, p0, Laem;->a:Ladf;

    iget-object v5, p0, Laem;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ladf;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setCanAdvance(Z)V

    invoke-direct {p0, p1}, Laem;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;)V

    move-object v1, v0

    .line 191
    :goto_2
    invoke-virtual {p0, p2}, Laem;->a(I)I

    move-result v0

    if-gez v0, :cond_5

    const-string v0, "IntroVideo"

    .line 192
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p1, v1, v3}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->addView(Landroid/view/View;I)V

    .line 195
    new-instance v2, Laem$a;

    invoke-direct {v2, v1, v0, v4}, Laem$a;-><init>(Landroid/view/View;Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    move v4, v3

    .line 180
    goto :goto_0

    :cond_1
    move v1, v3

    .line 185
    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Laem;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v1, p0, Laem;->c:Lapd;

    const v5, 0x7f040058

    invoke-virtual {v1, v5}, Lapd;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/ui/DSnapView;

    iget-object v5, p0, Laem;->f:Labr;

    iput-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->f:Labr;

    iget-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v5, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    iget-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    new-instance v6, Laee;

    iget-object v7, v5, Laed;->a:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Laee;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V

    new-instance v7, Laec;

    new-instance v8, Laed$1;

    invoke-direct {v8, v5}, Laed$1;-><init>(Laed;)V

    invoke-direct {v7, v1, v8}, Laec;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Landroid/view/View$OnClickListener;)V

    iput-object v1, v5, Laed;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    iput-object v6, v5, Laed;->c:Laee;

    iput-object v7, v5, Laed;->d:Laec;

    iput-boolean v2, v5, Laed;->e:Z

    iget-object v5, p0, Laem;->d:Lcom/snapchat/android/discover/model/ChannelPage;

    iput-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v5, v1, Lcom/snapchat/android/discover/ui/DSnapView;->a:Laed;

    iget-object v6, v1, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/ChannelPage;->j()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/snapchat/android/discover/ui/DSnapView;->h:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    iget-object v8, v5, Laed;->i:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Laed;->i:Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iput-object v6, v5, Laed;->i:Ljava/lang/String;

    iput-object v7, v5, Laed;->h:Lcom/snapchat/android/discover/model/MediaState;

    iput-boolean v2, v5, Laed;->e:Z

    iget-object v6, v5, Laed;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v5, v6}, Laed;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->setOnboardingEnabled(Z)V

    iget-object v2, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Laem;->a(I)I

    move-result v5

    invoke-direct {p0, v0}, Laem;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v6

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;ILcom/snapchat/android/discover/model/DSnapPage;)V

    invoke-direct {p0, p1}, Laem;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;)V

    goto/16 :goto_2

    .line 191
    :cond_5
    iget-object v2, p0, Laem;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 152
    check-cast p2, Laem$a;

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Laem$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
