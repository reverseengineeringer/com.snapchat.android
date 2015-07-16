.class public final Lacd;
.super Lcom/snapchat/android/database/table/FriendTable;
.source "SourceFile"


# static fields
.field private static a:Lacd;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lacd;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lacd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lacd;->a:Lacd;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lacd;

    invoke-direct {v0}, Lacd;-><init>()V

    sput-object v0, Lacd;->a:Lacd;

    .line 19
    :cond_0
    sget-object v0, Lacd;->a:Lacd;
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
    invoke-virtual {p1}, Lakp;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {}, Lacd;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lacd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lakp;->b(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "SuggestedFriendsTable"

    return-object v0
.end method
