.class final Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Laol;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laol;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->d(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->e(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->f(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
.end method
