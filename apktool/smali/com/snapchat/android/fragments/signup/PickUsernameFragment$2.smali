.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;
.super Landroid/os/Handler;
.source "SourceFile"


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
    .line 231
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 234
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Laph;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v0, :cond_2

    :goto_0
    invoke-virtual {v2, v3}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "op_code"

    const/16 v8, 0x3fc

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "email"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "requested_username"

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "refresh_suggestions"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v3, v6}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    sget-object v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;->IN_PROGRESS:Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment$UsernameState;)V

    .line 244
    :cond_1
    return-void

    .line 235
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
