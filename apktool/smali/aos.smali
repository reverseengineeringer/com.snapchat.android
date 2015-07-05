.class public final Laos;
.super Laoq;
.source "SourceFile"


# instance fields
.field final c:Lauy;

.field protected d:Laor;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lajq;

.field private final g:Lzd;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lauy;Lajq;Lcom/squareup/otto/Bus;Lzd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;",
            "Lauy;",
            "Lajq;",
            "Lcom/squareup/otto/Bus;",
            "Lzd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Laoq;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Laos;->e:Ljava/util/List;

    .line 51
    iput-object p3, p0, Laos;->c:Lauy;

    .line 52
    iput-object p4, p0, Laos;->f:Lajq;

    .line 53
    iput-object p6, p0, Laos;->g:Lzd;

    .line 54
    new-instance v0, Laor;

    iget-object v1, p0, Laos;->e:Ljava/util/List;

    invoke-direct {v0, p1, v1, p3, p5}, Laor;-><init>(Landroid/content/Context;Ljava/util/List;Lauy;Lcom/squareup/otto/Bus;)V

    iput-object v0, p0, Laos;->d:Laor;

    .line 55
    invoke-virtual {p0}, Laos;->b()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzd;)V
    .locals 7

    .prologue
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v3

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v4

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Laos;-><init>(Landroid/content/Context;Ljava/util/List;Lauy;Lajq;Lcom/squareup/otto/Bus;Lzd;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Landroid/view/LayoutInflater;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    if-eq v0, v1, :cond_1

    .line 101
    :cond_0
    const v0, 0x7f040074

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Laos;->a(Landroid/view/View;)V

    .line 106
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :goto_0
    return-object p1

    .line 108
    :cond_1
    iget-object v0, p0, Laos;->d:Laor;

    invoke-virtual {v0}, Laor;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Laos;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Laos;->e:Ljava/util/List;

    iget-object v1, p0, Laos;->f:Lajq;

    invoke-virtual {v1}, Lajq;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-void
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->LIVE_STORIES:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Laos;->b:Lorg/lucasr/twowayview/TwoWayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laos;->b:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v0

    iget-object v2, p0, Laos;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Laos;->b:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v2}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Laos;->b:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getFirstVisiblePosition()I

    move-result v0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Laos;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 88
    new-instance v2, Laos$1;

    invoke-direct {v2, p0, v0}, Laos$1;-><init>(Laos;Lcom/snapchat/android/model/StoryCollection;)V

    invoke-static {v2}, Lbgp;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 95
    :cond_1
    return-void
.end method

.method public final e()Landroid/widget/BaseAdapter;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Laos;->d:Laor;

    return-object v0
.end method

.method public final f()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 122
    const/4 v0, 0x2

    iget-object v1, p0, Laos;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v4

    .line 124
    :goto_0
    if-ge v6, v7, :cond_0

    .line 125
    iget-object v0, p0, Laos;->g:Lzd;

    iget-object v1, p0, Laos;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    const/4 v2, 0x3

    const/4 v3, 0x0

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->AUTO_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzd;->a(Lcom/snapchat/android/model/StoryCollection;ILaje;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    .line 124
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Laos;->d:Laor;

    invoke-virtual {v0}, Laor;->notifyDataSetChanged()V

    .line 136
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "livestories&"

    return-object v0
.end method

.method public final i()Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->LIVE:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public final m_()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Laos;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
