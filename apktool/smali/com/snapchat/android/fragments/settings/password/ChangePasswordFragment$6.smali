.class final Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$6;
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
    .line 229
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$6;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$6;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->e(Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;)V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment$6;->a:Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/password/ChangePasswordFragment;->i()V

    .line 240
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
