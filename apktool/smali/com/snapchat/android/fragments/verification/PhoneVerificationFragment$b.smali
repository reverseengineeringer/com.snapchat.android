.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;
.super Lpk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;ZZ)V
    .locals 1

    .prologue
    .line 597
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Lpk;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->c:Ljava/lang/String;

    .line 598
    iget-object v0, p1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    .line 599
    if-eqz p3, :cond_1

    .line 601
    const-string v0, "requestPhoneVerification"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->b:Ljava/lang/String;

    .line 602
    if-eqz p2, :cond_0

    .line 603
    const-string v0, "text"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->c:Ljava/lang/String;

    .line 612
    :goto_0
    return-void

    .line 605
    :cond_0
    const-string v0, "call"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->c:Ljava/lang/String;

    goto :goto_0

    .line 607
    :cond_1
    if-eqz p2, :cond_2

    .line 608
    const-string v0, "updatePhoneNumber"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->b:Ljava/lang/String;

    goto :goto_0

    .line 610
    :cond_2
    const-string v0, "updatePhoneNumberWithCall"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    const-string v0, "/bq/phone_verify"

    return-object v0
.end method

.method protected final a(Lalp;)V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 657
    :cond_0
    invoke-super {p0, p1}, Lpk;->a(Lalp;)V

    .line 658
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0, p1, p2}, Lpk;->a(Ljava/lang/String;I)V

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const-string v1, ""

    iput-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 691
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->e()V

    .line 697
    return-void
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 631
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 632
    const-string v1, "action"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v2, v2, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v1, "countryCode"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v1, "skipConfirmation"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 639
    const-string v1, "method"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_0
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 662
    invoke-super {p0, p1}, Lpk;->b(Lalp;)V

    .line 664
    iget-object v0, p1, Lalp;->message_format:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p1, Lalp;->message_format:Ljava/lang/String;

    invoke-static {v0}, Lakr;->v(Ljava/lang/String;)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 670
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v3, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v6}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;IJLandroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    .line 673
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$a;->e()V

    .line 674
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 676
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->b:Ljava/lang/String;

    const-string v1, "updatePhoneNumberWithCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    const v0, 0x7f0c00c4

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 681
    :cond_1
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->h()V

    .line 682
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    const-string v0, "RequestPhoneVerificationCodeTask"

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 585
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a(Lalp;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-super {p0}, Lpk;->onPreExecute()V

    .line 618
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 622
    return-void
.end method
