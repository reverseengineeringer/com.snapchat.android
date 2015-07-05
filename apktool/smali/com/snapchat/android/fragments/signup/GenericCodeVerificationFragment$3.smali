.class final Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$3;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$3;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$3;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$3;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 115
    return-void
.end method
