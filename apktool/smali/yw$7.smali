.class final Lyw$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyw;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lyw;


# direct methods
.method constructor <init>(Lyw;Ljava/util/Map;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lyw$7;->c:Lyw;

    iput-object p2, p0, Lyw$7;->a:Ljava/util/Map;

    iput-object p3, p0, Lyw$7;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lyw$7;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 374
    iget-object v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/snapchat/android/model/CashTransaction;->mFailToSendReleaseMessage:Z

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 377
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lyw$7;->b()V

    .line 367
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    iget-object v3, p0, Lyw$7;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lyw$7;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v0, p1}, Lyw;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 359
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 360
    invoke-direct {p0}, Lyw$7;->b()V

    .line 361
    return-void
.end method
