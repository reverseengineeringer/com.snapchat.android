.class final Lcom/snapchat/android/fragments/signup/SignupFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/SignupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/SignupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->b(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 457
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->k(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-static {}, Lcom/snapchat/android/fragments/signup/SignupFragment;->i()Lavm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lavm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->q(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    const v3, 0x7f0c016b

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/fragments/signup/SignupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 468
    const/16 v3, -0xd

    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 469
    iget-object v3, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/signup/SignupFragment;->m(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    invoke-static {}, Lcom/snapchat/android/fragments/signup/SignupFragment;->i()Lavm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lavm;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lavm;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SnapKidzLoginManager_username_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lavm;->numAccounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, v0, Lavm;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SnapKidzLoginManager_passkey_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lavm;->numAccounts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v2, v0, Lavm;->numAccounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lavm;->numAccounts:I

    iget-object v2, v0, Lavm;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "SnapKidzLoginManager_numAccounts"

    iget v4, v0, Lavm;->numAccounts:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, v0, Lavm;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    :cond_1
    const v0, 0x7f0c027a

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->q(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->a(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$3;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->r(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    goto :goto_0
.end method
