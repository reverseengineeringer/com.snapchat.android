.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u()V
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
    .line 540
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 544
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lakr;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lla;

    invoke-direct {v1}, Lla;-><init>()V

    iput-object v0, v1, Lht;->country:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    invoke-static {}, Lakr;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_COUNTRY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 545
    :cond_0
    return-void

    .line 544
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
