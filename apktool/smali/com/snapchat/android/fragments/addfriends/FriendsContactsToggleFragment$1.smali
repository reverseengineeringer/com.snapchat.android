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
    .line 92
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    if-nez p1, :cond_1

    move v1, v2

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move v4, v3

    .line 100
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lagj;

    move-result-object v0

    invoke-virtual {v0}, Lagj;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lagj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lagj;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 102
    instance-of v5, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-eqz v5, :cond_0

    .line 103
    if-ne v4, p1, :cond_4

    move v5, v2

    .line 104
    :goto_4
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 105
    if-eqz v5, :cond_5

    .line 106
    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Z)V

    .line 100
    :cond_0
    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_1
    move v1, v3

    .line 96
    goto :goto_0

    :cond_2
    move v0, v4

    .line 97
    goto :goto_1

    :cond_3
    move v4, v3

    .line 98
    goto :goto_2

    :cond_4
    move v5, v3

    .line 103
    goto :goto_4

    .line 108
    :cond_5
    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    if-nez v1, :cond_6

    move v0, v2

    :goto_6
    sget-object v6, Lkf;->TOGGLE:Lkf;

    invoke-static {v5, v0, v6}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;ZLkf;)V

    goto :goto_5

    :cond_6
    move v0, v3

    goto :goto_6

    .line 113
    :cond_7
    if-eqz v1, :cond_9

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    .line 116
    :cond_8
    :goto_7
    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V

    .line 119
    return-void

    .line 116
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {}, Lakr;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lakr;

    invoke-static {}, Lakr;->Z()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_a
    move v2, v3

    goto :goto_7
.end method
