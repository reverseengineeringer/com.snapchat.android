.class final Lafr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lafr;


# direct methods
.method constructor <init>(Lafr;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lafr$2;->b:Lafr;

    iput-object p2, p0, Lafr$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p0, Lafr$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->p(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lafr$2;->b:Lafr;

    invoke-static {v0}, Lafr;->a(Lafr;)Lafr$a;

    move-result-object v0

    invoke-interface {v0}, Lafr$a;->d()V

    .line 715
    iget-object v0, p0, Lafr$2;->b:Lafr;

    iget-object v0, v0, Lafr;->a:Lxx;

    iget-object v1, p0, Lafr$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    new-instance v2, Lafr$2$1;

    invoke-direct {v2, p0}, Lafr$2$1;-><init>(Lafr$2;)V

    invoke-virtual {v0, v1, v2}, Lxx;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lxx$a;)V

    .line 726
    return-void
.end method
