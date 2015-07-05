.class final Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->c(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Laol;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "pwConfirmPhoneNumber"

    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Laol;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->d(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->e(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method
