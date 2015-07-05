.class final Llv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llv;


# direct methods
.method constructor <init>(Llv;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Llv$1;->a:Llv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final onLowMemory()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v0, "ApplicationMemoryMonitor"

    const-string v1, "onLowMemory"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Llv$1;->a:Llv;

    iget-object v0, v0, Llv;->a:Lavq;

    iget-object v1, v0, Lavq;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lavq;->mMonitor:Lawg;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lawg;->a(I)V

    const-string v2, "BitmapPool"

    const-string v3, "Clearing bitmap pool"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lavq;->mBitmapCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Lapb;->a(Z)V

    .line 66
    iget-object v0, p0, Llv$1;->a:Llv;

    iget-object v0, v0, Llv;->b:Laeo;

    invoke-virtual {v0}, Laeo;->evictAll()V

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 39
    const-string v1, "ApplicationMemoryMonitor"

    const-string v2, "onTrimMemory %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sparse-switch p1, :sswitch_data_1

    .line 54
    :goto_1
    return-void

    .line 39
    :sswitch_0
    const-string v0, "TRIM_MEMORY_BACKGROUND"

    goto :goto_0

    :sswitch_1
    const-string v0, "TRIM_MEMORY_COMPLETE"

    goto :goto_0

    :sswitch_2
    const-string v0, "TRIM_MEMORY_MODERATE"

    goto :goto_0

    :sswitch_3
    const-string v0, "TRIM_MEMORY_RUNNING_CRITICAL"

    goto :goto_0

    :sswitch_4
    const-string v0, "TRIM_MEMORY_RUNNING_LOW"

    goto :goto_0

    :sswitch_5
    const-string v0, "TRIM_MEMORY_RUNNING_MODERATE"

    goto :goto_0

    :sswitch_6
    const-string v0, "TRIM_MEMORY_UI_HIDDEN"

    goto :goto_0

    .line 42
    :sswitch_7
    iget-object v0, p0, Llv$1;->a:Llv;

    iget-object v0, v0, Llv;->a:Lavq;

    invoke-virtual {v0, v5}, Lavq;->a(I)V

    goto :goto_1

    .line 46
    :sswitch_8
    iget-object v0, p0, Llv$1;->a:Llv;

    iget-object v0, v0, Llv;->a:Lavq;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lavq;->a(I)V

    iget-object v0, p0, Llv$1;->a:Llv;

    iget-object v0, v0, Llv;->b:Laeo;

    invoke-virtual {v0}, Laeo;->evictAll()V

    goto :goto_1

    .line 50
    :sswitch_9
    iget-object v0, p0, Llv$1;->a:Llv;

    iget-object v0, v0, Llv;->a:Lavq;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lavq;->a(I)V

    iget-object v0, p0, Llv$1;->a:Llv;

    iget-object v0, v0, Llv;->b:Laeo;

    invoke-virtual {v0}, Laeo;->evictAll()V

    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0xa -> :sswitch_4
        0xf -> :sswitch_3
        0x14 -> :sswitch_6
        0x28 -> :sswitch_0
        0x3c -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 40
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_7
        0xa -> :sswitch_8
        0xf -> :sswitch_9
    .end sparse-switch
.end method
