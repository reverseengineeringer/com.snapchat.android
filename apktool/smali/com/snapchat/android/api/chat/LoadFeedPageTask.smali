.class public final Lcom/snapchat/android/api/chat/LoadFeedPageTask;
.super Lpk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;,
        Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/conversations"

.field private static final TAG:Ljava/lang/String; = "LoadFeedPageTask"

.field private static final TASK_NAME:Ljava/lang/String; = "LoadFeedPageTask"

.field private static sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;


# instance fields
.field private mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;

.field private final mIterToken:Ljava/lang/String;

.field private mServerInfo:Lbjx;

.field private final mUser:Lakp;


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "/loq/conversations"

    return-object v0
.end method

.method protected final a(Lalp;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    .line 92
    invoke-super {p0, p1}, Lpk;->a(Lalp;)V

    .line 93
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->FAILED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFail - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    iget-object v2, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mUUID:Ljava/util/UUID;

    invoke-direct {v1, v2, p2}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;-><init>(Ljava/util/UUID;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mIterToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "offset"

    iget-object v2, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mIterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string v0, "Empty Response"

    const/16 v1, 0xcc

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Ljava/lang/String;I)V

    .line 129
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p1, Lalp;->server_info:Lbjx;

    iput-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mServerInfo:Lbjx;

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mServerInfo:Lbjx;

    if-eqz v0, :cond_1

    sget-object v0, Lbjx$a;->EQUAL:Lbjx$a;

    iget-object v1, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mServerInfo:Lbjx;

    invoke-virtual {v1}, Lbjx;->e()Lbjx$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 107
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p1, Lalp;->conversations_response:Ljava/util/List;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess - response not pruned, # of conversations="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    if-eqz v0, :cond_3

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbid;

    .line 117
    invoke-virtual {v0}, Lbid;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    .line 120
    :cond_2
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    iget-object v1, p1, Lalp;->conversations_response:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v3}, Lakx;->a(Ljava/util/List;ZZ)V

    .line 128
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mUser:Lakp;

    invoke-virtual {v0}, Lakp;->x()V

    goto :goto_0

    .line 124
    :cond_4
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    goto :goto_1
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "LoadFeedPageTask"

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Lalp;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lpk;->onPreExecute()V

    .line 67
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->RUNNING:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mStartMillis:J

    .line 69
    return-void
.end method
