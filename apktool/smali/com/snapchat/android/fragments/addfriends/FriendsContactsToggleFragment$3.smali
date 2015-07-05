.class final Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 121
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 124
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 125
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {}, Lajx;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lajx;

    invoke-static {}, Lajx;->Z()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
