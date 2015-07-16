.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;
.super Lpk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

.field private b:Lakp;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 544
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Lpk;-><init>()V

    .line 545
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->b:Lakp;

    .line 546
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->c:Ljava/lang/String;

    .line 547
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    const-string v0, "/loq/register_username"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 595
    invoke-super {p0, p1, p2}, Lpk;->a(Ljava/lang/String;I)V

    .line 596
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->p(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->q(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 564
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    const-string v1, "selected_username"

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "username"

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-super {p0, p1}, Lpk;->b(Lalp;)V

    .line 573
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p1, Lalp;->updates_response:Lbkq;

    invoke-static {v0}, Lakr;->a(Lbkq;)V

    .line 575
    iget-object v0, p1, Lalp;->updates_response:Lbkq;

    invoke-virtual {v0}, Lbkq;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->b(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 577
    iget-object v0, p1, Lalp;->verification_needed:Lbls;

    invoke-static {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lbls;)V

    .line 579
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->r(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Lakr;

    invoke-static {}, Lakr;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->r(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Lakr;

    invoke-static {}, Lakr;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    invoke-static {v1}, Lakr;->c(Z)V

    .line 581
    invoke-static {v1}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->b:Lakp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lakp;->a(Lakp$b;)V

    .line 587
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->s(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->k(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->j(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z

    move-result v2

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->t(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z

    move-result v3

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->u(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->v(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)I

    move-result v5

    new-instance v6, Llt;

    invoke-direct {v6}, Llt;-><init>()V

    if-nez v2, :cond_2

    sget-object v0, Lmm;->DEFAULT_SUGGESTION:Lmm;

    :goto_1
    iput-object v1, v6, Llt;->username:Ljava/lang/String;

    iput-object v0, v6, Llt;->usernameType:Lmm;

    iput-object v4, v6, Llt;->usernameSuggestion:Ljava/lang/String;

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Llt;->usernameIndexPos:Ljava/lang/Long;

    invoke-static {v6}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->F()V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;ZZLjava/lang/String;I)V

    .line 591
    return-void

    .line 583
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    goto :goto_0

    .line 589
    :cond_2
    if-nez v3, :cond_3

    sget-object v0, Lmm;->OTHER_SUGGESTION:Lmm;

    goto :goto_1

    :cond_3
    sget-object v0, Lmm;->CUSTOM:Lmm;

    goto :goto_1
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const-string v0, "RegisterUsernameTask"

    return-object v0
.end method

.method protected final d(Lalp;)V
    .locals 2
    .param p1    # Lalp;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 604
    invoke-super {p0, p1}, Lpk;->d(Lalp;)V

    .line 605
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 607
    :cond_0
    if-nez p1, :cond_1

    const v0, 0x7ffffffa

    .line 609
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 630
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    .line 631
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_1
    iget v0, p1, Lalp;->status:I

    goto :goto_1

    .line 611
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->mFailureMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->RED_X:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    goto :goto_0

    .line 615
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(I)V

    .line 616
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->mFailureMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->RED_X:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    goto :goto_0

    .line 620
    :pswitch_3
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->E()V

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->mFailureMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->RED_X:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    goto :goto_0

    .line 625
    :pswitch_4
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->D()V

    .line 626
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->mFailureMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->RED_X:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->CLEAR:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    .line 552
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->p(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->q(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->q(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 555
    return-void
.end method
