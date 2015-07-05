.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Show the gallery scanning view here!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$2;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->e()V

    .line 96
    return-void
.end method
