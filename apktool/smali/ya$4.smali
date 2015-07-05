.class final Lya$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lya$b;

.field final synthetic c:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic d:Lya;


# direct methods
.method constructor <init>(Lya;Lcom/snapchat/android/model/chat/CashFeedItem;Lya$b;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lya$4;->d:Lya;

    iput-object p2, p0, Lya$4;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lya$4;->b:Lya$b;

    iput-object p4, p0, Lya$4;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 175
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FETCHED transaction and resolved blockers id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$4;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lya$4;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->m(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lya$4;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lmz;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 179
    iget-object v0, p0, Lya$4;->b:Lya$b;

    invoke-interface {v0}, Lya$b;->a()V

    .line 180
    iget-object v0, p0, Lya$4;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 181
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 184
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FAILED to fetch transaction and/or resolve blockers id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lya$4;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lya$4;->b:Lya$b;

    invoke-interface {v0}, Lya$b;->b()V

    .line 187
    iget-object v0, p0, Lya$4;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 188
    return-void
.end method
