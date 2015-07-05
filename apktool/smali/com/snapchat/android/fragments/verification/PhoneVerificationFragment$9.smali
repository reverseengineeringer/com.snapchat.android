.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o()V
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
    .line 297
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->j()V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    .line 311
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
