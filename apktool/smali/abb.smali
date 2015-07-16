.class public final Labb;
.super Lcom/snapchat/android/database/table/FriendTable;
.source "SourceFile"


# static fields
.field private static a:Labb;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Labb;
    .locals 2

    .prologue
    .line 16
    const-class v1, Labb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labb;->a:Labb;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Labb;

    invoke-direct {v0}, Labb;-><init>()V

    sput-object v0, Labb;->a:Labb;

    .line 19
    :cond_0
    sget-object v0, Labb;->a:Labb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lakp;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {}, Labb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p1, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v0, p1, Lakp;->mContactsOnSnapchatSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 37
    iget-object v0, p1, Lakp;->mContactsOnSnapchatSet:Ljava/util/Set;

    iget-object v1, p1, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "ContactsOnSnapchatTable"

    return-object v0
.end method
