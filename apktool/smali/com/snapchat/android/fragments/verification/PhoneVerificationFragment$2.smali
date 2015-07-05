.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 483
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 486
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 487
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 488
    new-instance v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;ZZ)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    sget-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->TEXT:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;)V

    .line 493
    return-void
.end method
