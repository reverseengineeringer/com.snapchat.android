.class public Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final D()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->A:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method protected final E()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->A:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->A:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public final k()Lalw;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;)V

    return-object v0
.end method

.method protected final l()I
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    const v0, 0x7f0c0033

    :goto_0
    return v0

    .line 70
    :pswitch_0
    const v0, 0x7f0c0137

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lbbd;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lbbd;)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 41
    new-instance v0, Lagu;

    invoke-direct {v0}, Lagu;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Lagr;

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Lagr;

    invoke-virtual {v0}, Lagr;->b()Lcom/snapchat/android/util/FriendSectionizer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Lagr;

    invoke-virtual {v0}, Lagr;->a()Lcom/snapchat/android/util/FriendSectionizer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Lafa;

    iput-boolean v2, v1, Lafa;->i:Z

    .line 49
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Lafa;

    iput-boolean v2, v1, Lafa;->g:Z

    .line 50
    return-object v0
.end method

.method public onRefreshFriendExistsTask(Lbcx;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lbcx;)V

    .line 96
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lbcw;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshOnFriendActionEvent(Lbcw;)V

    .line 89
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onUserLoadedEvent(Lber;)V

    .line 103
    return-void
.end method

.method protected final t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FOR_ADDRESS_BOOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
