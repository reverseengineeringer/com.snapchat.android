.class final Lajv$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lajv;->a(Lajv$b;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lajv;

.field final synthetic val$inurface:Lajv$b;

.field final synthetic val$tablesToUpdate:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;


# direct methods
.method constructor <init>(Lajv;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;Lajv$b;)V
    .locals 0

    .prologue
    .line 1462
    iput-object p1, p0, Lajv$6;->this$0:Lajv;

    iput-object p2, p0, Lajv$6;->val$tablesToUpdate:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    iput-object p3, p0, Lajv$6;->val$inurface:Lajv$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 1464
    iget-object v1, p0, Lajv$6;->this$0:Lajv;

    iget-object v2, p0, Lajv$6;->val$tablesToUpdate:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v3, Lajv;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    :goto_0
    iget-object v0, p0, Lajv$6;->val$inurface:Lajv$b;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lajv$6;->val$inurface:Lajv$b;

    invoke-interface {v0}, Lajv$b;->D_()V

    .line 1468
    :cond_0
    return-void

    .line 1464
    :cond_1
    :try_start_1
    array-length v4, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->getTable()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v5

    sget-object v6, Lajv;->sInstance:Lajv;

    invoke-virtual {v5, v6}, Lcom/snapchat/android/database/table/DbTable;->c(Lajv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lajv;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;)V

    iget-object v0, v1, Lajv;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v0}, Layg;->b()Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
