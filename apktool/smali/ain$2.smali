.class final Lain$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lain;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lain;


# direct methods
.method constructor <init>(Lain;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lain$2;->a:Lain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    iget-object v0, p0, Lain$2;->a:Lain;

    invoke-static {}, Lbhp;->b()V

    iget-object v0, v0, Lain;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lail;

    invoke-static {}, Lbhp;->b()V

    iput-boolean v5, v0, Lail;->e:Z

    iget-object v3, v0, Lail;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v1, v0, Lail;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lail;->a:Ljava/lang/String;

    const-string v4, "passive"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, v0, Lail;->b:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, v0, Lail;->d:Z

    :cond_0
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, v0, Lail;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, v0, Lail;->d:Z

    goto :goto_1

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lail;->d:Z

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :cond_1
    return-void
.end method
