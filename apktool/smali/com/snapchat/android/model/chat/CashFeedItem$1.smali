.class final Lcom/snapchat/android/model/chat/CashFeedItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/chat/CashFeedItem;->a(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic val$modifiedVersion:I

.field final synthetic val$originalVersion:I

.field final synthetic val$saved:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/CashFeedItem;ZII)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-boolean p2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$saved:Z

    iput p3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$modifiedVersion:I

    iput p4, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$originalVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 582
    invoke-static {}, Lcom/snapchat/android/model/chat/CashFeedItem;->s()Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$saved:Z

    if-eqz v0, :cond_0

    const-string v0, "SAVING"

    :goto_0
    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 584
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    new-array v1, v4, [Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 586
    return-void

    .line 582
    :cond_0
    const-string v0, "UNSAVING"

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 589
    invoke-static {}, Lcom/snapchat/android/model/chat/CashFeedItem;->s()Ljava/lang/String;

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$saved:Z

    if-eqz v0, :cond_1

    const-string v0, "SAVING"

    :goto_0
    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->Z()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    iget v0, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    iget v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$modifiedVersion:I

    if-ne v0, v3, :cond_0

    .line 593
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$saved:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    .line 594
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    iget v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->val$originalVersion:I

    iput v3, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    .line 595
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    new-array v1, v1, [Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 597
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$1;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 599
    :cond_0
    return-void

    .line 589
    :cond_1
    const-string v0, "UNSAVING"

    goto :goto_0

    :cond_2
    move v0, v2

    .line 593
    goto :goto_1
.end method
