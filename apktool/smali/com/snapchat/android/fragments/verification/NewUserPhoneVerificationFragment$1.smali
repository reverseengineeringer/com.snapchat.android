.class final Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    invoke-static {}, Lajx;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkv;

    invoke-direct {v0}, Lkv;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;->a:Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->i()V

    .line 92
    return-void
.end method
