.class final Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const v1, 0x7f0c022c

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->K()V

    .line 77
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->L()V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    .line 79
    new-instance v0, Ltc;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-direct {v0, v1}, Ltc;-><init>(Ltc$a;)V

    invoke-virtual {v0}, Ltc;->f()V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
