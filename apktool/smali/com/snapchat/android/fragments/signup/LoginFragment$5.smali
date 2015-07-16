.class final Lcom/snapchat/android/fragments/signup/LoginFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/LoginFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$5;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$5;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$5;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->f(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 370
    return-void
.end method
