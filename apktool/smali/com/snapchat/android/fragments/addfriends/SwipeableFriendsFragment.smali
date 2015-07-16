.class public abstract Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Laga$a;
.implements Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment$a;
.implements Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$2;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field protected final d:Laph;

.field protected final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lbgy;

.field protected g:Laga;

.field protected h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field protected final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    sget-object v1, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lbgy;->a()Lbgy;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laph;Ljavax/inject/Provider;Lbgy;)V

    .line 58
    return-void
.end method

.method constructor <init>(Laph;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laph;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lbgy;->a()Lbgy;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laph;Ljavax/inject/Provider;Lbgy;)V

    .line 63
    return-void
.end method

.method constructor <init>(Laph;Ljavax/inject/Provider;Lbgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laph;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lbgy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->m:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->d:Laph;

    .line 69
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e:Ljavax/inject/Provider;

    .line 70
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->f:Lbgy;

    .line 71
    return-void
.end method

.method private c(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 185
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public H()V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lkf;->SWIPE_LEFT:Lkf;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lkf;)V

    .line 290
    return-void
.end method

.method public final a(Landroid/view/View;)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    const v1, 0x7f0a0042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Laga;

    invoke-virtual {v0, p1}, Laga;->a(I)V

    .line 231
    return-void
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Laga;

    if-eqz p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Laga;->c:Lcom/snapchat/android/model/Friend;

    iput-object v1, v2, Laga;->d:Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lagf;

    if-eqz v1, :cond_0

    check-cast v0, Lagf;

    if-nez p3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lagf;->b(Z)V

    :cond_0
    invoke-virtual {v2}, Laga;->notifyDataSetChanged()V

    .line 226
    return-void

    .line 225
    :cond_1
    invoke-virtual {v2, p2}, Laga;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected final a(Lbdw;)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p1, Lbdw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 242
    if-eqz v0, :cond_0

    .line 243
    sget-object v1, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$2;->a:[I

    iget-object v2, p1, Lbdw;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->n()V

    .line 251
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Laga;

    invoke-virtual {v1, v0}, Laga;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lkf;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public final a(Landroid/view/View;F)Z
    .locals 4

    .prologue
    .line 156
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 158
    :cond_0
    const v0, 0x7f0a0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 167
    const v0, 0x7f0a0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    const v1, 0x7f0a003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 170
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->b(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 172
    neg-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 174
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->c(Landroid/view/View;)I

    move-result v0

    .line 175
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Laga;

    invoke-virtual {v1, v0}, Laga;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iput-object v0, v1, Laga;->d:Lcom/snapchat/android/model/Friend;

    .line 180
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lr;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 212
    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 215
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 214
    :cond_2
    const v1, 0x7f0a003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lkf;->BACK_BUTTON:Lkf;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a(Lkf;)V

    .line 284
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    return v0
.end method

.method protected abstract i()I
.end method

.method protected l()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract m()Lage;
.end method

.method protected abstract n()V
.end method

.method protected o()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->OPAQUE_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a(Z)Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 75
    invoke-static {}, Lnw;->d()V

    .line 77
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i()I

    move-result v0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->mFragmentLayout:Landroid/view/View;

    .line 81
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbfk;

    sget-object v3, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v2, v3}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 83
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->l()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->p()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->p()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->j:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->j:Landroid/view/View;

    const v2, 0x7f0a0061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->k:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->j:Landroid/view/View;

    const v2, 0x7f0a0062

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->l:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 97
    :cond_1
    new-instance v0, Laga;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->m:Ljava/util/List;

    new-instance v3, Lcom/snapchat/android/util/FriendSectionizer$c;

    invoke-direct {v3}, Lcom/snapchat/android/util/FriendSectionizer$c;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->m()Lage;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e:Ljavax/inject/Provider;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->o()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->f:Lbgy;

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Laga;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Laga$a;Lage;Ljavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbgy;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Laga;

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Laga;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    .line 105
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 108
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {}, Lnw;->e()V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method protected p()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q_()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public final r_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a:Ljava/lang/String;

    goto :goto_0
.end method
