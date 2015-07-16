.class final Lyt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lyt;


# direct methods
.method constructor <init>(Lyt;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lyt$2;->b:Lyt;

    iput-object p2, p0, Lyt$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lyt$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lyt$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 118
    return-void
.end method
