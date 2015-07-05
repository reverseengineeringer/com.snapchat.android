.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z

    .line 471
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z

    .line 474
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;I)I

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$8;->d:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z

    .line 477
    return-void
.end method
