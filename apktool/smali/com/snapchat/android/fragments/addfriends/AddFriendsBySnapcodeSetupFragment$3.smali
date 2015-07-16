.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 100
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const v3, 0x7f0a0022

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->AUTO_LIBRARY_SCANNING_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbew;

    invoke-direct {v1}, Lbew;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCODE_AUTOSCAN_ENABLED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCODE_AUTOSCAN_DISABLED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0
.end method
