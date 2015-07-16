.class public final Labj;
.super Lcom/snapchat/android/database/table/StorySnapTable;
.source "SourceFile"


# static fields
.field private static a:Labj;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Layv;

    invoke-direct {v0}, Layv;-><init>()V

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labj;-><init>(Layv;Lakr;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Layv;Lakr;)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lazh;->FRIEND_STORY_KEYS_AND_IVS:Lazf;

    invoke-direct {p0, p2, p1, v0}, Lcom/snapchat/android/database/table/StorySnapTable;-><init>(Lakr;Layv;Lazf;)V

    .line 29
    return-void
.end method

.method public static declared-synchronized a()Labj;
    .locals 2

    .prologue
    .line 32
    const-class v1, Labj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labj;->a:Labj;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Labj;

    invoke-direct {v0}, Labj;-><init>()V

    sput-object v0, Labj;->a:Labj;

    .line 35
    :cond_0
    sget-object v0, Labj;->a:Labj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ldt;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Layv;

    invoke-direct {v0}, Layv;-><init>()V

    sget-object v2, Lazh;->FRIEND_STORY_KEYS_AND_IVS:Lazf;

    invoke-virtual {v0, v1, v2}, Layv;->a(Ljava/util/List;Lazf;)V

    .line 52
    return-object v1
.end method

.method protected final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakk;->d(Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "FriendStorySnapTable"

    return-object v0
.end method
