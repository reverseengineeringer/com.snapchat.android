.class final Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 48
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    instance-of v0, p1, Lamy;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a:Landroid/widget/Button;

    const v1, 0x7f0c02be

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 55
    check-cast p1, Lamy;

    .line 57
    iget-boolean v0, p1, Lamy;->b:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodePasswordValidationFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p1, Lamy;->a:Lbkj;

    .line 63
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$1;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;Lbkj;)V

    goto :goto_0
.end method
