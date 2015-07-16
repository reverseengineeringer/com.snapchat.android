.class final Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;)V
    .locals 0

    .prologue
    .line 2616
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;Z)V

    .line 2623
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2624
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2628
    return-void
.end method
