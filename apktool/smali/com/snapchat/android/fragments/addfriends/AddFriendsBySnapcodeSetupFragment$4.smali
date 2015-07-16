.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$4;
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
    .line 129
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 132
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/WebFragment;

    const-string v3, "https://support.snapchat.com/a/add-snapcodes"

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    const v5, 0x7f0c0003

    invoke-virtual {v4, v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
