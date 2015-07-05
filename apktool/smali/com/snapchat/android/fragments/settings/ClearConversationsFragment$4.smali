.class final Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->w_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const v1, 0x7f0c022a

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 155
    return-void
.end method
