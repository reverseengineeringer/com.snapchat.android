.class public final Lcom/snapchat/android/api/chat/LoadFeedPageTask;
.super Lot;
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

.field private mServerInfo:Lbiw;

.field private final mUser:Lajv;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;Lajv;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lot;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mIterToken:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;

    .line 48
    iput-object p3, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mUser:Lajv;

    .line 49
    return-void
.end method

.method public static a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;Lajv;)V
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    iget-object v0, v0, Lakc;->mIterToken:Ljava/lang/String;

    .line 55
    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {p0, v0}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    invoke-direct {v1, v0, p0, p1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;-><init>(Ljava/lang/String;Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;Lajv;)V

    .line 61
    sput-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    sget-object v0, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "/loq/conversations"

    return-object v0
.end method

.method protected final a(Laku;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    .line 92
    invoke-super {p0, p1}, Lot;->a(Laku;)V

    .line 93
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->FAILED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 135
    const-string v0, "LoadFeedPageTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFail - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

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

    invoke-static {}, Lajx;->l()Ljava/lang/String;

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

.method protected final b(Laku;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

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
    iget-object v0, p1, Laku;->server_info:Lbiw;

    iput-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mServerInfo:Lbiw;

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mServerInfo:Lbiw;

    if-eqz v0, :cond_1

    sget-object v0, Lbiw$a;->EQUAL:Lbiw$a;

    iget-object v1, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mServerInfo:Lbiw;

    invoke-virtual {v1}, Lbiw;->e()Lbiw$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 108
    const-string v0, "LoadFeedPageTask"

    const-string v1, "onSuccess - response is pruned"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p1, Laku;->conversations_response:Ljava/util/List;

    .line 113
    const-string v1, "LoadFeedPageTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess - response not pruned, # of conversations="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    check-cast v0, Lbhd;

    .line 117
    invoke-virtual {v0}, Lbhd;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 120
    :cond_2
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    iget-object v1, p1, Laku;->conversations_response:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0, v1, v5, v5}, Lakc;->a(Ljava/util/List;ZZ)V

    .line 128
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mUser:Lajv;

    invoke-virtual {v0}, Lajv;->x()V

    goto :goto_0

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

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
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Laku;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lot;->onPreExecute()V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->RUNNING:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$a;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mStartMillis:J

    .line 69
    return-void
.end method
