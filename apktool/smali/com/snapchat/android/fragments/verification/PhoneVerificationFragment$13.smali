.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;
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
    .line 472
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()V

    .line 476
    new-instance v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r()Z

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;ZZ)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$13;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    sget-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->CALL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;)V

    .line 481
    return-void
.end method
