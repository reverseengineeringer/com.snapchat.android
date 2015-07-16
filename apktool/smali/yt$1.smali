.class final Lyt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyt$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lyt$a;

.field final synthetic c:Lyt;


# direct methods
.method constructor <init>(Lyt;Lcom/snapchat/android/model/chat/CashFeedItem;Lyt$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lyt$1;->c:Lyt;

    iput-object p2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lyt$1;->b:Lyt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lyt;->b()Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    iget-object v0, p0, Lyt$1;->c:Lyt;

    invoke-virtual {v0}, Lyt;->a()V

    .line 65
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lyt$1;->b:Lyt$a;

    invoke-interface {v0}, Lyt$a;->a()V

    .line 67
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lyt;->b()Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lyt$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lyt$1;->b:Lyt$a;

    invoke-interface {v0}, Lyt$a;->b()V

    .line 75
    return-void
.end method
