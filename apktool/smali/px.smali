.class public final Lpx;
.super Lpk;
.source "SourceFile"


# static fields
.field private static final FRIENDS_STORIES_PARAM:Ljava/lang/String; = "friend_stories"

.field private static final TASK_NAME:Ljava/lang/String; = "UpdateStoriesTask"

.field private static final USERNAME_PARAM:Ljava/lang/String; = "username"

.field public static sPendingStoryViewRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lakm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStoryViewRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakm;",
            ">;"
        }
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpx;->sPendingStoryViewRecords:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 26
    invoke-direct {p0}, Lpk;-><init>()V

    .line 27
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    .line 28
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpx;->mUsername:Ljava/lang/String;

    .line 29
    iget-object v2, v1, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpx;->mStoryViewRecordList:Ljava/util/List;

    .line 33
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    iget-object v4, p0, Lpx;->mStoryViewRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v4, Lpx;->sPendingStoryViewRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 37
    :cond_0
    :try_start_1
    iget-object v0, v1, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 38
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/bq/update_stories"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 57
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, v0, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lpx;->mStoryViewRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakm;

    .line 62
    iget-object v3, v0, Lakm;->mId:Ljava/lang/String;

    .line 63
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    sget-object v0, Lpx;->sPendingStoryViewRecords:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "username"

    iget-object v2, p0, Lpx;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lpx;->mStoryViewRecordList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "friend_stories"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lpx;->mStoryViewRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakm;

    .line 74
    sget-object v2, Lpx;->sPendingStoryViewRecords:Ljava/util/Map;

    iget-object v0, v0, Lakm;->mId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "UpdateStoriesTask"

    return-object v0
.end method
