.class final Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 96
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->b(Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;)Laol;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Laol;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->a:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment$3;->a:Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/twofa/RecoveryCodeFragment;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    return-void
.end method
