.class final Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;
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
    .line 113
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V

    .line 118
    return-void
.end method
