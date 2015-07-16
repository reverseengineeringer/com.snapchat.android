.class final Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .prologue
    .line 209
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->d(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)Laph;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    iget-object v3, v3, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "op_code"

    const/16 v6, 0x3fa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "new_password"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v4}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$4;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_0
    return-void
.end method
