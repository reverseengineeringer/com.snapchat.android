.class public Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lald;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Lald;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;"
    }
.end annotation


# instance fields
.field private final a:Laol;

.field private final b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final c:Labz;

.field private final d:Lale;

.field private final e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

.field private final f:Ladj;

.field private final g:Laby;

.field private final h:Laeh;

.field private i:Lael;

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

.field private o:Landroid/database/Cursor;

.field private final p:Laok;

.field private final q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 123
    invoke-static {}, Laol;->a()Laol;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v2

    invoke-static {}, Labz;->a()Labz;

    move-result-object v3

    invoke-static {}, Lale;->a()Lale;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-direct {v5}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;-><init>()V

    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v6

    invoke-static {}, Laby;->a()Laby;

    move-result-object v7

    invoke-static {}, Laeh;->a()Laeh;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;-><init>(Laol;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Labz;Lale;Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Ladj;Laby;Laeh;)V

    .line 127
    return-void
.end method

.method private constructor <init>(Laol;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Labz;Lale;Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Ladj;Laby;Laeh;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    .line 86
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Laok;

    .line 112
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->q:Landroid/view/View$OnClickListener;

    .line 136
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laol;

    .line 137
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 138
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Labz;

    .line 139
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lale;

    .line 140
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    .line 141
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Ladj;

    .line 142
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Laby;

    .line 143
    iput-object p8, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Laeh;

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
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
    new-instance v1, Ladp;

    invoke-direct {v1, v0}, Ladp;-><init>(Lcom/snapchat/android/discover/ui/fragment/ChannelSpanSizeLookup;)V

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

.method private a(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 369
    if-nez p1, :cond_2

    move v0, v1

    .line 370
    :goto_0
    if-lez v0, :cond_3

    .line 371
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADED:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 378
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    invoke-virtual {v1}, Lael;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 379
    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(I)V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    invoke-virtual {v0, p1}, Lael;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 383
    return-void

    .line 369
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 372
    :cond_3
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 373
    const-string v2, "DiscoverFragment"

    const-string v3, "onLoadFinished - No Channels."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->GENERIC_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 375
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Laeh;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Laeh;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Ladj;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Ladj;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lael;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/ChannelGroupView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v0, v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 315
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 322
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 329
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    move-result v1

    .line 330
    if-nez v1, :cond_0

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-ne v0, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d()V

    goto :goto_0
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lale;

    invoke-virtual {v0}, Lale;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Laby;

    invoke-virtual {v0}, Laby;->c()V

    .line 280
    :cond_0
    return-void
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 358
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->c()V

    .line 359
    const-string v0, "DiscoverFragment"

    const-string v1, "Entering pager window."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "DiscoverFragment"

    const-string v1, "Swapping cursor."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Landroid/database/Cursor;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Landroid/database/Cursor;

    .line 366
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 6

    .prologue
    .line 419
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

    .line 422
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    invoke-virtual {v0}, Lael;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADING:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 425
    :cond_0
    const-string v0, "DiscoverFragment"

    const-string v1, "Fetching discover channel list"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "op_code"

    const/16 v5, 0x3ef

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_1
    return-void
.end method

.method protected final e()V
    .locals 6

    .prologue
    .line 175
    invoke-static {}, Lnf;->d()V

    .line 176
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 177
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Labz;

    invoke-virtual {v0}, Labz;->c()V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Laby;

    sget-object v1, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->HOME_PAGE:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    const-string v2, "DiscoverMediaManager"

    const-string v3, "DISCOVER-MEDIA: Retry failed media for context %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Laby;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-interface {v0}, Lace;->d()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lace;->c()V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lale;

    invoke-virtual {v0, p0}, Lale;->a(Lald;)V

    .line 181
    invoke-static {}, Lnf;->e()V

    .line 182
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lale;

    invoke-virtual {v0, p0}, Lale;->b(Lald;)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Labz;

    invoke-virtual {v0}, Labz;->c()V

    .line 188
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f()V

    .line 189
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Laeh;

    invoke-virtual {v0}, Laeh;->b()Z

    move-result v0

    return v0
.end method

.method protected final h()Lala;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Lala;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DISCOVER"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lala;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method protected final i()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 437
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lale;

    invoke-virtual {v2}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 438
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    .line 439
    const-string v2, "DiscoverFragment"

    const-string v3, "No external storage available error."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 448
    :goto_0
    return v0

    .line 443
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    :cond_1
    const-string v2, "DiscoverFragment"

    const-string v3, "Network error."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->NETWORK_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 448
    goto :goto_0
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 453
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lnf;->d()V

    .line 159
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    invoke-static {}, Lnf;->e()V

    .line 165
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 343
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 351
    :goto_0
    return-object v0

    .line 345
    :pswitch_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0a01d1

    const/4 v6, 0x0

    .line 217
    invoke-static {}, Lnf;->d()V

    .line 218
    const v0, 0x7f04004d

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    .line 220
    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 221
    new-instance v0, Lael;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Laeh;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-direct {v0, v1, v2, v3}, Lael;-><init>(Landroid/content/Context;Laeh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    .line 224
    const v0, 0x7f0a01cf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$3;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0, v7}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    .line 232
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(B)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    invoke-virtual {v0}, Lael;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(I)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 240
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->q:Landroid/view/View$OnClickListener;

    const v0, 0x7f0a01d2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    const v5, 0x7f0a01d3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    const v5, 0x7f0a01d4

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a01d5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const v5, 0x7f0a01d6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->e:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    new-instance v5, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;

    invoke-direct {v5, v1, v4}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;-><init>(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01d8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v0, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v3, v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->h:Lael;

    .line 242
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lavh;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lavh;->a(Landroid/content/Context;)I

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
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :cond_1
    invoke-static {}, Lnf;->e()V

    .line 245
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v0, v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public onEditionClose(Laew;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Ladj;

    iget-object v1, p1, Laew;->c:Ljava/util/List;

    iget-object v2, v0, Ladj;->g:Landroid/os/Handler;

    new-instance v3, Ladj$6;

    invoke-direct {v3, v0, v1}, Ladj$6;-><init>(Ladj;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Ladj;

    invoke-virtual {v0}, Ladj;->c()V

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iget-object v1, p1, Laew;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 289
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    iget-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mAreLargeUiUpdatesEnabled:Z

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Landroid/database/Cursor;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    const-string v1, "DiscoverFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoadFinished - loaderId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(I)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lael;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lael;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 407
    return-void
.end method

.method public onPagedToDiscoverEvent(Laey;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Laey;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Laeh;

    invoke-virtual {v0}, Laeh;->c()V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laol;

    const/16 v1, 0x3ef

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lnf;->d()V

    .line 194
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Laol;

    const/16 v1, 0x3ef

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v1, v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Laby;

    const-string v1, "DiscoverMediaManager"

    const-string v2, "DISCOVER-MEDIA: Checking cache consistency"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Laby;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-interface {v0}, Lace;->b()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d()V

    .line 203
    :cond_1
    invoke-static {}, Lnf;->e()V

    .line 204
    return-void
.end method

.method public onSyncAllCompletedEvent(Lbeh;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    .line 412
    return-void
.end method
