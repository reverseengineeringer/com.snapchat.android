.class final Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;
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
    .line 63
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const v2, 0x7f0c0225

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const v3, 0x7f0c0226

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const v3, 0x7f0c0195

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 85
    return-void
.end method
