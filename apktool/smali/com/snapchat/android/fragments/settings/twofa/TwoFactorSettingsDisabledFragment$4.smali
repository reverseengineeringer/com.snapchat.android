.class final Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->b(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Laup;

    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->i()V

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->c(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Laph;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "sendTwoFACode"

    invoke-virtual {v1, v2, v3, v5, v5}, Laph;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->d(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->d(Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
