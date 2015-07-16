.class public Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Laej$a;
.implements Lalz;
.implements Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;


# instance fields
.field private final a:Laph;

.field private final b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final c:Lacz;

.field private final d:Lama;

.field private final e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

.field private final f:Laej;

.field private final g:Lacy;

.field private final h:Lafh;

.field private i:Lafl;

.field private j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

.field private k:Landroid/support/v7/widget/GridLayoutManager;

.field private l:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field private m:Z

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lapg;

.field private final q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 119
    invoke-static {}, Laph;->a()Laph;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v2

    invoke-static {}, Lacz;->a()Lacz;

    move-result-object v3

    invoke-static {}, Lama;->a()Lama;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-direct {v5}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;-><init>()V

    invoke-static {}, Laej;->a()Laej;

    move-result-object v6

    invoke-static {}, Lacy;->a()Lacy;

    move-result-object v7

    invoke-static {}, Lafh;->a()Lafh;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;-><init>(Laph;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lacz;Lama;Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Laej;Lacy;Lafh;)V

    .line 123
    return-void
.end method

.method private constructor <init>(Laph;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lacz;Lama;Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Laej;Lacy;Lafh;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Lapg;

    .line 108
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->q:Landroid/view/View$OnClickListener;

    .line 132
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laph;

    .line 133
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 134
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lacz;

    .line 135
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lama;

    .line 136
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    .line 137
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Laej;

    .line 138
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lacy;

    .line 139
    iput-object p8, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lafh;

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;-><init>(I)V

    .line 250
    new-instance v1, Laep;

    invoke-direct {v1, v0}, Laep;-><init>(Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;)V

    .line 251
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    iput-object v0, v2, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    .line 253
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->removeAllViews()V

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADED:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    invoke-virtual {v1}, Lafl;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    iget-object v1, v0, Lafl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lafl;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->GENERIC_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lafh;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lafh;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 368
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Laej;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Laej;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lafl;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/ChannelGroupView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v0, v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 317
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 324
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 331
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    move-result v1

    .line 332
    if-nez v1, :cond_0

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d()V

    goto :goto_0
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lama;

    invoke-virtual {v0}, Lama;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lacy;

    invoke-virtual {v0}, Lacy;->c()V

    .line 280
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    if-nez v0, :cond_0

    .line 353
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Ljava/util/List;

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->c()V

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b(Ljava/util/List;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Ljava/util/List;

    .line 348
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 6

    .prologue
    .line 396
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v0, v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    invoke-virtual {v0}, Lafl;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADING:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "op_code"

    const/16 v5, 0x3ef

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_1
    return-void
.end method

.method protected final e()V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Lnw;->d()V

    .line 175
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 176
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()V

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lacy;

    sget-object v1, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->HOME_PAGE:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v0, v0, Lacy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lade;

    invoke-interface {v0}, Lade;->d()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lade;->c()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lama;

    invoke-virtual {v0, p0}, Lama;->a(Lalz;)V

    .line 180
    invoke-static {}, Lnw;->e()V

    .line 181
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lama;

    invoke-virtual {v0, p0}, Lama;->b(Lalz;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()V

    .line 187
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 188
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lafh;

    invoke-virtual {v0}, Lafh;->b()Z

    move-result v0

    return v0
.end method

.method protected final h()Lalv;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lalv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DISCOVER"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method protected final i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 414
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lama;

    invoke-virtual {v1}, Lama;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 415
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 416
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 425
    :goto_0
    return v0

    .line 420
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->NETWORK_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    goto :goto_0

    .line 425
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lamt;
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$6;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lnw;->d()V

    .line 155
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lafh;

    invoke-virtual {v0}, Lafh;->c()V

    .line 162
    invoke-static {}, Lnw;->e()V

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0a01cf

    const/4 v6, 0x0

    .line 216
    invoke-static {}, Lnw;->d()V

    .line 217
    const v0, 0x7f04004e

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    .line 219
    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 220
    new-instance v0, Lafl;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lafh;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-direct {v0, v1, v2, v3}, Lafl;-><init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    .line 223
    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$3;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {p0, v7}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    .line 231
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(B)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    invoke-virtual {v0}, Lafl;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(I)V

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 238
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lafl;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->q:Landroid/view/View$OnClickListener;

    const v0, 0x7f0a01d0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    const v5, 0x7f0a01d1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    const v5, 0x7f0a01d2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a01d3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const v5, 0x7f0a01d4

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->e:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    new-instance v5, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;

    invoke-direct {v5, v1, v4}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;-><init>(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v3, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->h:Lafl;

    .line 240
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lawf;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lawf;->a(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x3fd33333    # 1.65f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    :cond_0
    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Laej;

    invoke-virtual {v0, p0}, Laej;->a(Laej$a;)V

    .line 244
    invoke-static {}, Lnw;->e()V

    .line 245
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Laej;

    invoke-virtual {v0, p0}, Laej;->b(Laej$a;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v0, v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public onEditionClose(Lafw;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Laej;

    iget-object v1, p1, Lafw;->c:Ljava/util/List;

    iget-object v2, v0, Laej;->h:Landroid/os/Handler;

    new-instance v3, Laej$7;

    invoke-direct {v3, v0, v1}, Laej$7;-><init>(Laej;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Laej;

    invoke-virtual {v0}, Laej;->d()V

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iget-object v1, p1, Lafw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 291
    :cond_0
    return-void
.end method

.method public onPagedToDiscoverEvent(Lafy;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Lafy;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lafh;

    invoke-virtual {v0}, Lafh;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lafh;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    iget-object v2, v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->ENTER_BACKGROUND:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    :cond_0
    iget-object v0, v0, Lafh;->a:Lcom/squareup/otto/Bus;

    new-instance v1, Lbet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laph;

    const/16 v1, 0x3ef

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Lnw;->d()V

    .line 193
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laph;

    const/16 v1, 0x3ef

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v1, v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lacy;

    iget-object v0, v0, Lacy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lade;

    invoke-interface {v0}, Lade;->b()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d()V

    .line 202
    :cond_1
    invoke-static {}, Lnw;->e()V

    .line 203
    return-void
.end method

.method public onSyncAllCompletedEvent(Lbfg;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    .line 389
    return-void
.end method
