.class public Lala;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/chat/ChatFeedItem;


# static fields
.field private static final HEADER_ID_SUFFIX:Ljava/lang/String; = "CHAT_HEADER"


# instance fields
.field public mId:Ljava/lang/String;

.field public final mSender:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lala;->mSender:Ljava/lang/String;

    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v0

    iput-wide v0, p0, Lala;->mTimestamp:J

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CHAT_HEADER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lala;->mId:Ljava/lang/String;

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lala;->mTimestamp:J

    .line 27
    const-string v0, "TODAY_DUMMY_HEADER"

    iput-object v0, p0, Lala;->mId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final O()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public final R()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public final U()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lala;->mTimestamp:J

    return-wide v0
.end method

.method public final a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, ""

    return-object v0
.end method

.method public final aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ak()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public final am()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lala;->mTimestamp:J

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 12
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v0

    iget-wide v2, p0, Lala;->mTimestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lala;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 140
    instance-of v0, p1, Lala;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lala;->mId:Ljava/lang/String;

    check-cast p1, Lala;

    invoke-virtual {p1}, Lala;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lala;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lala;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method
