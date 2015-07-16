.class final Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;
.super Lara;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;

    invoke-direct {p0, p2, p3, p4, p5}, Lara;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->c(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Laph;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "disableTwoFA"

    invoke-virtual {v1, v2, v3, v4, v4}, Laph;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;->b(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment$5$1;->dismiss()V

    .line 111
    return-void
.end method
