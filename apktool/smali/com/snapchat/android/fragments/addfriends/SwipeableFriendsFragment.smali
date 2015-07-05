.class public abstract Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lafa$a;
.implements Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$2;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field protected final d:Laol;

.field protected final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lbfy;

.field protected g:Lafa;

.field protected h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field protected i:Landroid/view/View;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/TextView;

.field protected final l:Ljava/util/List;
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
    .line 53
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    sget-object v1, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lbfy;->a()Lbfy;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;Lbfy;)V

    .line 54
    return-void
.end method

.method constructor <init>(Laol;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laol;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lbfy;->a()Lbfy;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;-><init>(Laol;Ljavax/inject/Provider;Lbfy;)V

    .line 59
    return-void
.end method

.method constructor <init>(Laol;Ljavax/inject/Provider;Lbfy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laol;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lbfy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->l:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->d:Laol;

    .line 65
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e:Ljavax/inject/Provider;

    .line 66
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->f:Lbfy;

    .line 67
    return-void
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 163
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPositionForView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 179
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    const v1, 0x7f0a0041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Lafa;

    invoke-virtual {v0, p1}, Lafa;->a(I)V

    .line 209
    return-void
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Lafa;

    if-eqz p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lafa;->b:Lcom/snapchat/android/model/Friend;

    iput-object v1, v2, Lafa;->c:Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Laff;

    if-eqz v1, :cond_0

    check-cast v0, Laff;

    if-nez p3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Laff;->b(Z)V

    :cond_0
    invoke-virtual {v2}, Lafa;->notifyDataSetChanged()V

    .line 204
    return-void

    .line 203
    :cond_1
    invoke-virtual {v2, p2}, Lafa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected final a(Lbcw;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p1, Lbcw;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    sget-object v1, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$2;->a:[I

    iget-object v2, p1, Lbcw;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->m()V

    .line 229
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Lafa;

    invoke-virtual {v1, v0}, Lafa;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/View;FFF)Z
    .locals 4

    .prologue
    .line 134
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 136
    :cond_0
    const v0, 0x7f0a0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 145
    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    const v1, 0x7f0a0039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->b(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 150
    neg-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 152
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->c(Landroid/view/View;)I

    move-result v0

    .line 153
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Lafa;

    invoke-virtual {v1, v0}, Lafa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iput-object v0, v1, Lafa;->c:Lcom/snapchat/android/model/Friend;

    .line 158
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1

    .prologue
    .line 243
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

    .line 189
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 190
    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 193
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 192
    :cond_2
    const v1, 0x7f0a0039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract i()I
.end method

.method protected abstract l()Lafe;
.end method

.method protected abstract m()V
.end method

.method protected n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->OPAQUE_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a(Z)Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v0

    return-object v0
.end method

.method protected o()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-static {}, Lnf;->d()V

    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i()I

    move-result v0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->mFragmentLayout:Landroid/view/View;

    .line 77
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbel;

    sget-object v3, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v2, v3}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 79
    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 80
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->o()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->o()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i:Landroid/view/View;

    const v2, 0x7f0a005f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->j:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i:Landroid/view/View;

    const v2, 0x7f0a0060

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->k:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 87
    :cond_0
    new-instance v0, Lafa;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->l:Ljava/util/List;

    new-instance v3, Lcom/snapchat/android/util/FriendSectionizer$c;

    invoke-direct {v3}, Lcom/snapchat/android/util/FriendSectionizer$c;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->l()Lafe;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->e:Ljavax/inject/Provider;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->n()Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->f:Lbfy;

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lafa;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lafa$a;Lafe;Ljavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbfy;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Lafa;

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->g:Lafa;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    .line 95
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->h:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 98
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {}, Lnf;->e()V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public final s_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SwipeableFriendsFragment;->a:Ljava/lang/String;

    goto :goto_0
.end method
