.class final Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanh;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-static {p1}, Laph;->a(Lanh;)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 59
    instance-of v0, p1, Lanz;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lanz;

    .line 61
    iget-object v0, p1, Lanz;->b:Lanz$c;

    .line 63
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->b(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->c(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 65
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->d(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 66
    iget-object v1, p1, Lanz;->a:Ljava/lang/String;

    const-string v2, "enableTwoFA"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-boolean v1, v0, Lanz$c;->a:Z

    if-eqz v1, :cond_1

    .line 69
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->h(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)V

    .line 87
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    iget-object v0, v0, Lanz$c;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-boolean v1, v0, Lanz$c;->a:Z

    if-eqz v1, :cond_3

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->e(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->f(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->g(Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/twofa/TwoFAEnableCodeConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, v0, Lanz$c;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
