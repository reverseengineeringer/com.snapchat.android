.class final Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    iget-object v1, v0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const v2, 0x7f0c01ec

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, v0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a(Ljava/lang/String;)V

    .line 103
    return-void

    .line 101
    :cond_0
    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
