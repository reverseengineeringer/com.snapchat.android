.class public final Lapo;
.super Lapm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapo$a;
    }
.end annotation


# instance fields
.field final a:Lavw;

.field protected b:Lapn;

.field private final c:Lzz;

.field private final h:Lcom/squareup/otto/Bus;

.field private final i:Lapp;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lapp;Lavw;Lzz;Lcom/squareup/otto/Bus;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lapp;",
            "Lavw;",
            "Lzz;",
            "Lcom/squareup/otto/Bus;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lapm;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p3, p0, Lapo;->a:Lavw;

    .line 59
    iput-object p4, p0, Lapo;->c:Lzz;

    .line 60
    iput-object p5, p0, Lapo;->h:Lcom/squareup/otto/Bus;

    .line 61
    iput-object p2, p0, Lapo;->i:Lapp;

    .line 62
    new-instance v0, Lapn;

    iget-object v1, p0, Lapo;->i:Lapp;

    iget-object v1, v1, Lapp;->a:Ljava/util/List;

    invoke-direct {v0, p1, v1, p3}, Lapn;-><init>(Landroid/content/Context;Ljava/util/List;Lavw;)V

    iput-object v0, p0, Lapo;->b:Lapn;

    .line 63
    iput-object p6, p0, Lapo;->j:Ljava/util/Set;

    .line 64
    invoke-virtual {p0}, Lapo;->b()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzz;)V
    .locals 7

    .prologue
    .line 50
    new-instance v2, Lapp;

    invoke-direct {v2}, Lapp;-><init>()V

    invoke-static {}, Lavw;->a()Lavw;

    move-result-object v3

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lapo;-><init>(Landroid/content/Context;Lapp;Lavw;Lzz;Lcom/squareup/otto/Bus;Ljava/util/Set;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Landroid/view/LayoutInflater;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    if-eq v0, v1, :cond_1

    .line 126
    :cond_0
    const v0, 0x7f040075

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lapo;->a(Landroid/view/View;)V

    .line 131
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-object p1

    .line 133
    :cond_1
    iget-object v0, p0, Lapo;->b:Lapn;

    invoke-virtual {v0}, Lapn;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Z)Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->LIVE:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public final a(Lma;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lapo;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lapo;->j:Ljava/util/Set;

    const-string v1, "~"

    invoke-static {v0, v1}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iput-object v0, p1, Lma;->liveStoriesSeen:Ljava/lang/String;

    .line 192
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lapo;->i:Lapp;

    iget-object v1, v0, Lapp;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lapp;->a:Ljava/util/List;

    iget-object v0, v0, Lapp;->b:Lakk;

    invoke-virtual {v0}, Lakk;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-void
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final d()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lapo;->i:Lapp;

    iget-object v1, v0, Lapp;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lapo;->e:Lorg/lucasr/twowayview/TwoWayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapo;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lapo;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v3}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lapo;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getFirstVisiblePosition()I

    move-result v0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 96
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->C()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    new-instance v2, Lapo$a;

    invoke-direct {v2, p0, v0}, Lapo$a;-><init>(Lapo;Ljava/util/List;)V

    .line 100
    invoke-static {v2}, Lbhp;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 103
    :cond_2
    return-void
.end method

.method public final e()Landroid/widget/BaseAdapter;
    .locals 1
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lapo;->b:Lapn;

    return-object v0
.end method

.method public final f()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-object v0, p0, Lapo;->i:Lapp;

    iget-object v7, v0, Lapp;->a:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lapo;->c:Lzz;

    invoke-virtual {v0}, Lzz;->e()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v6, v4

    .line 150
    :goto_0
    if-ge v6, v8, :cond_0

    .line 151
    iget-object v0, p0, Lapo;->c:Lzz;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, p0, Lapo;->c:Lzz;

    invoke-virtual {v2}, Lzz;->b()I

    move-result v2

    const/4 v3, 0x0

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzz;->a(Lcom/snapchat/android/model/StoryCollection;ILaka;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    .line 150
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lapo;->b:Lapn;

    invoke-virtual {v0}, Lapn;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lapo;->b()V

    .line 167
    invoke-virtual {p0}, Lapo;->f()V

    .line 168
    iget-object v0, p0, Lapo;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lapo;->f:I

    .line 170
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lapo;->h:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lapo;->h:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public final k_()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lapo;->i:Lapp;

    iget-object v0, v0, Lapp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "livestories&"

    return-object v0
.end method

.method protected final m()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lapo;->e:Lorg/lucasr/twowayview/TwoWayView;

    if-nez v0, :cond_1

    .line 244
    :cond_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lapo;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lapo;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapq;

    .line 240
    if-eqz v0, :cond_2

    iget-object v2, v0, Lapq;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lapo;->j:Ljava/util/Set;

    iget-object v0, v0, Lapq;->d:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onRecentStoryCollectionCompletedViewingEvent(Lbdt;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p1, Lbdt;->mStorySnap:Lakl;

    .line 216
    iget-boolean v0, v0, Lakl;->mIsShared:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lapo;->i:Lapp;

    iget-object v0, v1, Lapp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    instance-of v3, v0, Lakc;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->s()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lapp;->b:Lakk;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_2
    iget-object v0, p0, Lapo;->b:Lapn;

    invoke-virtual {v0}, Lapn;->notifyDataSetChanged()V

    .line 222
    invoke-virtual {p0}, Lapo;->d()V

    .line 223
    invoke-virtual {p0}, Lapo;->f()V

    goto :goto_0
.end method
