.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const-string v1, ""

    iput-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->c()V

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 275
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->d()V

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z

    .line 281
    :cond_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method
