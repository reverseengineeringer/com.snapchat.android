.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->o(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->o(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    new-instance v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)V

    sget-object v0, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$7;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 370
    return-void
.end method
