.class final Lcom/snapchat/android/fragments/signup/LoginFragment$3;
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
    .line 342
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->e(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 347
    return-void
.end method
