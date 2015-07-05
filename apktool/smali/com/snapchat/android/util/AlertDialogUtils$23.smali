.class final Lcom/snapchat/android/util/AlertDialogUtils$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Laje;Laio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$provider:Laio;

.field final synthetic val$snap:Laje;

.field final synthetic val$user:Lajv;


# direct methods
.method constructor <init>(Laje;Lajv;Laio;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$snap:Laje;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$user:Lajv;

    iput-object p3, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$provider:Laio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 256
    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$snap:Laje;

    invoke-virtual {v2}, Laje;->s()V

    .line 257
    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$user:Lajv;

    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lajv;->mNextReplayAvailableRealtime:J

    .line 258
    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$provider:Laio;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$provider:Laio;

    instance-of v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$provider:Laio;

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v4, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v2, Laje;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Laje;

    move-object v3, v0

    invoke-virtual {v3}, Laje;->ap()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Laje;

    invoke-virtual {v2}, Laje;->s()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :cond_2
    invoke-static {}, Laut;->b()V

    .line 262
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lbdp;

    invoke-direct {v3}, Lbdp;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 264
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snapchat/android/util/AlertDialogUtils$23;->val$snap:Laje;

    invoke-static {v2, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZLaje;)V

    .line 265
    return-void
.end method
