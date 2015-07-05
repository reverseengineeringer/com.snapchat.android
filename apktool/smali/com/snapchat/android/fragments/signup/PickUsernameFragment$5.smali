.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$5;
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
    .line 318
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$5;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$5;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$5;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method
