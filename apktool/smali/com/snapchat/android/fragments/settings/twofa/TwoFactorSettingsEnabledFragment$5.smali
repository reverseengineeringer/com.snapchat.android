.class final Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    const v3, 0x7f0c02c2

    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    const v4, 0x7f0c02e1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    const v5, 0x7f0c0058

    invoke-virtual {v1, v5}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;-><init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lara;->show()V

    .line 122
    return-void
.end method
