.class final Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->p()V
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
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->c()V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->b(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->m()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;->a:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->i()V

    goto :goto_0
.end method
