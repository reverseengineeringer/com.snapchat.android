.class final Lbfy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfy;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbfy;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbfy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lbfy$3;->this$0:Lbfy;

    iput-object p2, p0, Lbfy$3;->val$username:Ljava/lang/String;

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
    iget-object v0, p0, Lbfy$3;->this$0:Lbfy;

    iget-object v1, v0, Lbfy;->mProfileImagesCacheMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    if-nez p1, :cond_0

    .line 200
    :try_start_0
    iget-object v0, p0, Lbfy$3;->this$0:Lbfy;

    invoke-static {v0}, Lbfy;->b(Lbfy;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v2, p0, Lbfy$3;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    monitor-exit v1

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lbfy$3;->this$0:Lbfy;

    invoke-static {v0}, Lbfy;->b(Lbfy;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v2, p0, Lbfy$3;->val$username:Ljava/lang/String;

    new-instance v3, Lbfy$a;

    iget-object v4, p0, Lbfy$3;->this$0:Lbfy;

    invoke-direct {v3, v4, p1}, Lbfy$a;-><init>(Lbfy;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfy$a;

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
    iget-object v3, p0, Lbfy$3;->this$0:Lbfy;

    invoke-static {v3}, Lbfy;->c(Lbfy;)Lavq;

    move-result-object v3

    invoke-virtual {v3, v0}, Lavq;->a(Landroid/graphics/Bitmap;)V

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
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbbn;

    iget-object v3, p0, Lbfy$3;->val$username:Ljava/lang/String;

    invoke-direct {v2, v3}, Lbbn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
