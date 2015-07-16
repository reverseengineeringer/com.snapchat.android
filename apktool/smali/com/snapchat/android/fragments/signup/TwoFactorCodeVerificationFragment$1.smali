.class final Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/LoginTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Username required for two-factor authentication"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 91
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->t()V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final a(Lbjg;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 67
    return-void
.end method

.method public final b(Lbjg;)V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "recovery_code_used"

    invoke-virtual {p1}, Lbjg;->u()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final w_()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Verification required for two-factor authentication"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 100
    return-void
.end method
