.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 247
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 250
    if-eqz p2, :cond_1

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    .line 253
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkl;

    invoke-direct {v0}, Lkl;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z

    goto :goto_0
.end method
