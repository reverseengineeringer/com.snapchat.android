.class public final Laak;
.super Lcom/snapchat/android/database/table/StorySnapTable;
.source "SourceFile"


# static fields
.field private static a:Laak;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Laxx;

    invoke-direct {v0}, Laxx;-><init>()V

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laak;-><init>(Laxx;Lajx;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Laxx;Lajx;)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Layj;->FRIEND_STORY_KEYS_AND_IVS:Layh;

    invoke-direct {p0, p2, p1, v0}, Lcom/snapchat/android/database/table/StorySnapTable;-><init>(Lajx;Laxx;Layh;)V

    .line 29
    return-void
.end method

.method public static declared-synchronized a()Laak;
    .locals 2

    .prologue
    .line 32
    const-class v1, Laak;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laak;->a:Laak;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Laak;

    invoke-direct {v0}, Laak;-><init>()V

    sput-object v0, Laak;->a:Laak;

    .line 35
    :cond_0
    sget-object v0, Laak;->a:Laak;
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
.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->n()Ljava/util/List;

    move-result-object v0

    .line 51
    new-instance v1, Laxx;

    invoke-direct {v1}, Laxx;-><init>()V

    sget-object v2, Layj;->FRIEND_STORY_KEYS_AND_IVS:Layh;

    invoke-virtual {v1, v0, v2}, Laxx;->a(Ljava/util/List;Layh;)V

    .line 52
    return-object v0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lajq;->d(Ljava/util/List;)V

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
