.class final Lajv$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lajv;


# direct methods
.method constructor <init>(Lajv;)V
    .locals 0

    .prologue
    .line 1424
    iput-object p1, p0, Lajv$5;->this$0:Lajv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1426
    invoke-static {}, Lajv;->z()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1427
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1428
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->getTable()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/DbTable;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1429
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->getTable()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable;->k()V

    .line 1427
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1431
    :cond_0
    const-string v5, "User"

    const-string v6, "DB-LOG: Not deleting %s table because not user-specific"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->getTable()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
