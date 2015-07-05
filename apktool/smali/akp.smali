.class public final Lakp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luv;


# instance fields
.field private final mConversationFeedItemProvider:Luu;

.field private final mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Luu;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luu;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakp;->mConversations:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lakp;->mConversationFeedItemProvider:Luu;

    .line 31
    iput-object p2, p0, Lakp;->mUserProvider:Ljavax/inject/Provider;

    .line 32
    invoke-virtual {p0}, Lakp;->b()V

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
            "Lut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lakp;->mConversations:Ljava/util/List;

    return-object v0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lakp;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lakp;->mConversations:Ljava/util/List;

    iget-object v1, p0, Lakp;->mConversationFeedItemProvider:Luu;

    invoke-interface {v1}, Luu;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v0, p0, Lakp;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 46
    invoke-virtual {v0}, Lajv;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 47
    invoke-static {v0}, Lym;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lakp;->mConversations:Ljava/util/List;

    new-instance v3, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method
