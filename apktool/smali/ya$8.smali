.class public final Lya$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lts$b",
        "<",
        "Lbhc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lya;


# direct methods
.method public constructor <init>(Lya;Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lya$8;->c:Lya;

    iput-object p2, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p3, p0, Lya$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 4

    .prologue
    .line 361
    check-cast p1, Lbhc;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/snapchat/android/model/CashTransaction$a;->a(Lbhc;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    iget-object v1, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lya$8;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v2, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    iget-object v0, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/CashUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/chat/CashFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lya$8;->c:Lya;

    iget-object v2, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lya;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    :cond_1
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v0}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    :cond_2
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lya$8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    iget-object v1, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lya$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
