.class public final Laor;
.super Laos;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Laor;-><init>(Ljava/lang/String;JJ)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Laos;-><init>(Ljava/lang/String;JJ)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public final a(J)V
    .locals 9

    .prologue
    .line 35
    iget-object v0, p0, Laos;->a:Ljava/lang/String;

    .line 38
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lakx;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v2, Lalb$a;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lalb$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lalb$a;->a()Lalb;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1, p2}, Lalb;->c(J)V

    .line 44
    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v3

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lalb;->U()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lalb;->c(J)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    new-instance v4, Lbjj;

    invoke-direct {v4}, Lbjj;-><init>()V

    sget-object v5, Lbjj$a;->SCREENSHOT:Lbjj$a;

    invoke-virtual {v5}, Lbjj$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbjj;->a(Ljava/lang/String;)Lbjj;

    move-result-object v4

    sget-object v5, Lbji$a;->CHAT_MESSAGE:Lbji$a;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-static {v5, v0, v6, v7}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbif;

    invoke-virtual {v2}, Lalb;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbif;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lbif;->a(Lbjj;)V

    invoke-virtual {v2}, Lalb;->U()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbif;->b(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lbif;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lalb;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lalb;->a(Lbif;)V

    invoke-virtual {v3, v1, v2}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;)V

    .line 46
    :cond_1
    iget-object v0, p0, Laor;->d:Laph;

    invoke-virtual {v0}, Laph;->d()I

    goto :goto_0
.end method
