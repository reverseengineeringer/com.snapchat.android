.class final Lagr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lagr;


# direct methods
.method constructor <init>(Lagr;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lagr$2;->b:Lagr;

    iput-object p2, p0, Lagr$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 710
    iget-object v0, p0, Lagr$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->o(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lagr$2;->b:Lagr;

    invoke-static {v0}, Lagr;->a(Lagr;)Lagr$a;

    move-result-object v0

    invoke-interface {v0}, Lagr$a;->d()V

    .line 712
    iget-object v0, p0, Lagr$2;->b:Lagr;

    iget-object v0, v0, Lagr;->a:Lyt;

    iget-object v1, p0, Lagr$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    new-instance v2, Lagr$2$1;

    invoke-direct {v2, p0}, Lagr$2$1;-><init>(Lagr$2;)V

    invoke-virtual {v0, v1, v2}, Lyt;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lyt$a;)V

    .line 723
    return-void
.end method
