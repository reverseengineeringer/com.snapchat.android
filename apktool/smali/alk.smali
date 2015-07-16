.class public final Lalk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvr;


# instance fields
.field private final mConversationFeedItemProvider:Lvq;

.field private final mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvq;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvq;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lalk;->mConversations:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lalk;->mConversationFeedItemProvider:Lvq;

    .line 31
    iput-object p2, p0, Lalk;->mUserProvider:Ljavax/inject/Provider;

    .line 32
    invoke-virtual {p0}, Lalk;->c()V

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lalk;->mConversations:Ljava/util/List;

    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 45
    iget-object v0, p0, Lalk;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object v0, p0, Lalk;->mConversations:Ljava/util/List;

    iget-object v1, p0, Lalk;->mConversationFeedItemProvider:Lvq;

    invoke-interface {v1}, Lvq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Lalk;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 49
    invoke-virtual {v0}, Lakp;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 50
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lalk;->mConversations:Ljava/util/List;

    new-instance v4, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 55
    :cond_2
    return-void
.end method
