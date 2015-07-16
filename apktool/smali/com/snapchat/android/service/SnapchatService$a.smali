.class final Lcom/snapchat/android/service/SnapchatService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/service/SnapchatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/service/SnapchatService;

.field private final b:Lanh;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/service/SnapchatService;Lanh;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatService$a;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p2, p0, Lcom/snapchat/android/service/SnapchatService$a;->b:Lanh;

    .line 382
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$a;->b:Lanh;

    invoke-interface {v0}, Lanh;->b()V

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$a;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v0}, Lcom/snapchat/android/service/SnapchatService;->c(Lcom/snapchat/android/service/SnapchatService;)Laph;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$a;->b:Lanh;

    iget-object v2, v0, Laph;->d:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Laph;->d:Landroid/util/SparseArray;

    invoke-static {v1}, Laph;->b(Lanh;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapg;

    invoke-interface {v0, v1}, Lapg;->a(Lanh;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$a;->a:Lcom/snapchat/android/service/SnapchatService;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$a;->b:Lanh;

    invoke-static {v0, v1}, Lcom/snapchat/android/service/SnapchatService;->a(Lcom/snapchat/android/service/SnapchatService;Lanh;)V

    .line 390
    return-void
.end method
