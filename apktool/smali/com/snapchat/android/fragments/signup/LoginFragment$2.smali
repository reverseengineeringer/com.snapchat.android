.class final Lcom/snapchat/android/fragments/signup/LoginFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/LoginFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->e(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->f(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 161
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
