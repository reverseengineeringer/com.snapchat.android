.class final Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    if-nez p1, :cond_1

    move v1, v2

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move v4, v3

    .line 93
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lafj;

    move-result-object v0

    invoke-virtual {v0}, Lafj;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lafj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lafj;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 95
    instance-of v5, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-eqz v5, :cond_0

    .line 96
    if-ne v4, p1, :cond_4

    move v5, v2

    .line 97
    :goto_4
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 98
    if-eqz v5, :cond_0

    .line 99
    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Z)V

    .line 93
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_1
    move v1, v3

    .line 89
    goto :goto_0

    :cond_2
    move v0, v4

    .line 90
    goto :goto_1

    :cond_3
    move v4, v3

    .line 91
    goto :goto_2

    :cond_4
    move v5, v3

    .line 96
    goto :goto_4

    .line 104
    :cond_5
    if-eqz v1, :cond_7

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    .line 107
    :cond_6
    :goto_5
    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V

    .line 110
    return-void

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {}, Lajx;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lajx;

    invoke-static {}, Lajx;->Z()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_8
    move v2, v3

    goto :goto_5
.end method
