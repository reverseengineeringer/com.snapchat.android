.class final Lcom/snapchat/android/fragments/signup/SignupFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 388
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$9;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 391
    if-eqz p2, :cond_0

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$9;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Lcom/snapchat/android/fragments/signup/SignupFragment;)Lcom/snapchat/android/analytics/RegistrationAnalytics;

    new-instance v0, Lkk;

    invoke-direct {v0}, Lkk;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->s()V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$9;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->b(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z

    goto :goto_0
.end method
