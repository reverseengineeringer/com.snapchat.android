.class final Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 187
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->UNKNOWN:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    iput-object v1, v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->k:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->b(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$3;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->c(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    .line 202
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
