.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Laqq;

.field private b:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 38
    const v0, 0x7f040002

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->mFragmentLayout:Landroid/view/View;

    .line 39
    new-instance v0, Laqq;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lafi;->a()Lafi;

    move-result-object v2

    iget-object v2, v2, Lafi;->a:Laqr;

    invoke-static {}, Lafi;->a()Lafi;

    move-result-object v3

    iget-object v3, v3, Lafi;->b:Lbpd;

    invoke-direct {v0, v1, p1, v2, v3}, Laqq;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Laqr;Lbpd;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->a:Laqq;

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->mFragmentLayout:Landroid/view/View;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->b:Landroid/support/v7/widget/RecyclerView;

    .line 42
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>()V

    .line 43
    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;)V

    iput-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/GridLayoutManager$b;

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->a:Laqq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 57
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 32
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 70
    invoke-static {}, Lafi;->a()Lafi;

    move-result-object v0

    iget-object v0, v0, Lafi;->a:Laqr;

    iget-object v0, v0, Laqr;->a:[Laqr$a;

    array-length v0, v0

    .line 71
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->a:Laqq;

    iget-object v2, v2, Laqq;->c:Laqr;

    iget-object v2, v2, Laqr;->a:[Laqr$a;

    array-length v2, v2

    .line 73
    if-eq v0, v2, :cond_1

    .line 74
    invoke-static {}, Lafi;->a()Lafi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafi;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->a:Laqq;

    invoke-static {}, Lafi;->a()Lafi;

    move-result-object v2

    iget-object v2, v2, Lafi;->a:Laqr;

    iput-object v2, v0, Laqq;->c:Laqr;

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->a:Laqq;

    invoke-static {}, Lafi;->a()Lafi;

    move-result-object v2

    iget-object v2, v2, Lafi;->b:Lbpd;

    iput-object v2, v0, Laqq;->d:Lbpd;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->a:Laqq;

    iget-object v2, v0, Laqq;->c:Laqr;

    move v0, v1

    .line 78
    :goto_0
    iget-object v3, v2, Laqr;->b:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Laqr;->b:[Z

    aput-boolean v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->a:Laqq;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 81
    :cond_1
    return-void
.end method
