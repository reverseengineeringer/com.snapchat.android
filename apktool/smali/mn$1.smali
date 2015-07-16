.class final Lmn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmn;


# direct methods
.method constructor <init>(Lmn;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lmn$1;->a:Lmn;

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
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lmn$1;->a:Lmn;

    iget-object v0, v0, Lmn;->a:Lawo;

    iget-object v1, v0, Lawo;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lawo;->mMonitor:Laxe;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Laxe;->a(I)V

    iget-object v0, v0, Lawo;->mBitmapCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Lapx;->a(Z)V

    .line 66
    iget-object v0, p0, Lmn$1;->a:Lmn;

    iget-object v0, v0, Lmn;->b:Lafo;

    invoke-virtual {v0}, Lafo;->evictAll()V

    .line 67
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    aput-object v0, v1, v2

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
    iget-object v0, p0, Lmn$1;->a:Lmn;

    iget-object v0, v0, Lmn;->a:Lawo;

    invoke-virtual {v0, v3}, Lawo;->a(I)V

    goto :goto_1

    .line 46
    :sswitch_8
    iget-object v0, p0, Lmn$1;->a:Lmn;

    iget-object v0, v0, Lmn;->a:Lawo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lawo;->a(I)V

    iget-object v0, p0, Lmn$1;->a:Lmn;

    iget-object v0, v0, Lmn;->b:Lafo;

    invoke-virtual {v0}, Lafo;->evictAll()V

    goto :goto_1

    .line 50
    :sswitch_9
    iget-object v0, p0, Lmn$1;->a:Lmn;

    iget-object v0, v0, Lmn;->a:Lawo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lawo;->a(I)V

    iget-object v0, p0, Lmn$1;->a:Lmn;

    iget-object v0, v0, Lmn;->b:Lafo;

    invoke-virtual {v0}, Lafo;->evictAll()V

    goto :goto_1

    .line 39
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
