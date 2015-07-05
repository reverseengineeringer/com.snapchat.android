.class final Lcom/snapchat/android/fragments/chat/ChatFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 2418
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: SENDING transaction id[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v4, v4, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2420
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$15$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$15$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$15;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 2426
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 2427
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2429
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdd;

    invoke-direct {v1}, Lbdd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2430
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;Z)V

    .line 2432
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$15;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2437
    return-void
.end method
