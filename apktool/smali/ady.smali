.class public final Lady;
.super Lapm;
.source "SourceFile"


# instance fields
.field public final a:Laea;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ladz;

.field private final h:Lafh;

.field private final i:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

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

.field private final k:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 6

    .prologue
    .line 57
    new-instance v4, Laea;

    invoke-direct {v4}, Laea;-><init>()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lady;-><init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Laea;Lcom/squareup/otto/Bus;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Laea;Lcom/squareup/otto/Bus;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lapm;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lady;->j:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lady;->b:Ljava/util/List;

    .line 69
    iput-object p3, p0, Lady;->i:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 70
    iput-object p2, p0, Lady;->h:Lafh;

    .line 71
    new-instance v0, Ladz;

    iget-object v1, p0, Lady;->b:Ljava/util/List;

    invoke-direct {v0, p1, p2, p3, v1}, Ladz;-><init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Ljava/util/List;)V

    iput-object v0, p0, Lady;->c:Ladz;

    .line 73
    iput-object p4, p0, Lady;->a:Laea;

    .line 74
    iput-object p5, p0, Lady;->k:Lcom/squareup/otto/Bus;

    .line 75
    return-void
.end method

.method private q()V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lady;->h:Lafh;

    invoke-virtual {v0}, Lafh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lady;->i:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iget-boolean v0, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lady;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lady;->a:Laea;

    iget-object v1, p0, Lady;->b:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laea;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lady;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lady;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lady;->c:Ladz;

    invoke-virtual {v0}, Ladz;->notifyDataSetChanged()V

    .line 249
    :cond_0
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
    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    if-eq v0, v1, :cond_1

    .line 113
    :cond_0
    const v0, 0x7f040051

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lady;->a(Landroid/view/View;)V

    .line 118
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :cond_1
    return-object p1
.end method

.method public final a(Z)Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->DISCOVER:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public final a(Lma;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lady;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lady;->j:Ljava/util/Set;

    const-string v1, "~"

    invoke-static {v0, v1}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object v0, p1, Lma;->discoverPublishersSeen:Ljava/lang/String;

    .line 168
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public final e()Landroid/widget/BaseAdapter;
    .locals 1
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lady;->c:Ladz;

    return-object v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lady;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lady;->f:I

    .line 144
    invoke-direct {p0}, Lady;->q()V

    .line 145
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lady;->q()V

    .line 150
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lady;->k:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lady;->k:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public final k_()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lady;->c:Ladz;

    invoke-virtual {v0}, Ladz;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "discover&"

    return-object v0
.end method

.method protected final m()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lady;->e:Lorg/lucasr/twowayview/TwoWayView;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lady;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lady;->e:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    const v2, 0x7f0a0109

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 198
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    iget-object v2, p0, Lady;->j:Ljava/util/Set;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onEditionClose(Lafw;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Lady;->q()V

    .line 240
    return-void
.end method
