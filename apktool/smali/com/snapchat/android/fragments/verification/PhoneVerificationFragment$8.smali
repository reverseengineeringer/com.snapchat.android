.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 284
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 291
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->l()V

    .line 292
    return-void
.end method
