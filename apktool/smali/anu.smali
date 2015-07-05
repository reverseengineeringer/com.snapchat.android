.class public final Lanu;
.super Lanv;
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

    invoke-direct/range {v0 .. v5}, Lanu;-><init>(Ljava/lang/String;JJ)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lanv;-><init>(Ljava/lang/String;JJ)V

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
    const-string v0, "ChatViewingSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onScreenshotDetected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lanv;->a:Ljava/lang/String;

    .line 38
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lakc;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v2, Lakg$a;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lakg$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lakg$a;->a()Lakg;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1, p2}, Lakg;->c(J)V

    .line 44
    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v3

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lakg;->W()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lakg;->c(J)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    new-instance v4, Lbij;

    invoke-direct {v4}, Lbij;-><init>()V

    sget-object v5, Lbij$a;->SCREENSHOT:Lbij$a;

    invoke-virtual {v5}, Lbij$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbij;->a(Ljava/lang/String;)Lbij;

    move-result-object v4

    sget-object v5, Lbii$a;->CHAT_MESSAGE:Lbii$a;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-static {v5, v0, v6, v7}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbhf;

    invoke-virtual {v2}, Lakg;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lbhf;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lbhf;->a(Lbij;)V

    invoke-virtual {v2}, Lakg;->W()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbhf;->b(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lbhf;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lakg;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lakg;->a(Lbhf;)V

    invoke-virtual {v3, v1, v2}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lanu;->d:Laol;

    invoke-virtual {v0}, Laol;->d()I

    goto :goto_0
.end method
