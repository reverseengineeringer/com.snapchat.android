.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p()V
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
    .line 340
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 343
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->w()V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Laol;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "verifyPhoneNumber"

    iget-object v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v4, v4, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v5}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m()Lbks$a;

    move-result-object v5

    invoke-virtual {v5}, Lbks$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "op_code"

    const/16 v8, 0x400

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "action"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "code"

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v6}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    move-result v0

    invoke-static {}, Lajx;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lks;

    invoke-direct {v1}, Lks;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lks;->autofill:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ATTEMPT_VERIFY_WITH_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 353
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->g()V

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkq;

    invoke-direct {v0}, Lkq;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkx;

    invoke-direct {v0}, Lkx;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_RESEND_VERIFICATION_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method
