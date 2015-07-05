.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$3;
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
    .line 495
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$3;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$3;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Lcom/snapchat/android/analytics/RegistrationAnalytics;

    sget-object v0, Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;->CANCEL:Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Lcom/snapchat/android/analytics/RegistrationAnalytics$PhoneVerificationMethod;)V

    .line 500
    return-void
.end method
