.class final Lbgy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgy;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbgy;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbgy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lbgy$3;->this$0:Lbgy;

    iput-object p2, p0, Lbgy$3;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lbgy$3;->this$0:Lbgy;

    iget-object v1, v0, Lbgy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    if-nez p1, :cond_0

    .line 200
    :try_start_0
    iget-object v0, p0, Lbgy$3;->this$0:Lbgy;

    invoke-static {v0}, Lbgy;->b(Lbgy;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v2, p0, Lbgy$3;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v1

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lbgy$3;->this$0:Lbgy;

    invoke-static {v0}, Lbgy;->b(Lbgy;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v2, p0, Lbgy$3;->val$username:Ljava/lang/String;

    new-instance v3, Lbgy$a;

    iget-object v4, p0, Lbgy$3;->this$0:Lbgy;

    invoke-direct {v3, v4, p1}, Lbgy$a;-><init>(Lbgy;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgy$a;

    .line 205
    if-eqz v0, :cond_1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 207
    iget-object v3, p0, Lbgy$3;->this$0:Lbgy;

    invoke-static {v3}, Lbgy;->c(Lbgy;)Lawo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lawo;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 210
    :cond_1
    :try_start_1
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbcn;

    iget-object v3, p0, Lbgy$3;->val$username:Ljava/lang/String;

    invoke-direct {v2, v3}, Lbcn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
