.class final Lawo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawo;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lawo;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lawo;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lawo$1;->this$0:Lawo;

    iput-object p2, p0, Lawo$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lawo$1;->this$0:Lawo;

    iget-object v1, p0, Lawo$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lbhp;->b()V

    iget-object v2, v0, Lawo;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lawo;->mBitmapCache:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lawo;->mBitmapCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
