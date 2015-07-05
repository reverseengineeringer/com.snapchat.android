.class final Lxx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxx;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lxx$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lxx$a;

.field final synthetic c:Lxx;


# direct methods
.method constructor <init>(Lxx;Lcom/snapchat/android/model/chat/CashFeedItem;Lxx$a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lxx$1;->c:Lxx;

    iput-object p2, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lxx$1;->b:Lxx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 61
    invoke-static {}, Lxx;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CASH-LOG: ReceivingCashManager SUCCESS RESOLVED blockers id[%s], sender[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lxx$1;->c:Lxx;

    invoke-virtual {v0}, Lxx;->a()V

    .line 64
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->X()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lxx$1;->b:Lxx$a;

    invoke-interface {v0}, Lxx$a;->a()V

    .line 66
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 70
    invoke-static {}, Lxx;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CASH-LOG: ReceivingCashManager CANCELED RESOLVED blockers id[%s], sender[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->X()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lxx$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lxx$1;->b:Lxx$a;

    invoke-interface {v0}, Lxx$a;->b()V

    .line 74
    return-void
.end method
