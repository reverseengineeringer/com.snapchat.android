.class final Lcom/snapchat/android/fragments/signup/LoginFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 125
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/snapchat/android/fragments/signup/LoginFragment;->i()Lavm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lavm;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-static {}, Lcom/snapchat/android/fragments/signup/LoginFragment;->i()Lavm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lavm;->b(Ljava/lang/String;)I

    move-result v4

    iget-object v3, v3, Lavm;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SnapKidzLoginManager_passkey_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V

    .line 146
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    const v2, 0x7f0c0152

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    goto :goto_1
.end method
