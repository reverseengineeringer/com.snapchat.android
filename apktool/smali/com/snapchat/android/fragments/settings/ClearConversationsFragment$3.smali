.class final Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a()V
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
    .line 132
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Latw;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
