.class final Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


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
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanh;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-static {p1}, Laph;->a(Lanh;)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a(Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Laod;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a(Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    check-cast p1, Laod;

    .line 113
    iget-boolean v0, p1, Laod;->b:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p1, Laod;->a:Lblk;

    .line 118
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->e:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 120
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 121
    invoke-virtual {v0}, Lblk;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->r()V

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->t()V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment$2;->a:Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/signup/TwoFactorCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lblk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
