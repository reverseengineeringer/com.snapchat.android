.class final Lavw$2;
.super Latv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lavw;

.field final synthetic val$item:Lavx;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$storySnaps:Ljava/util/List;


# direct methods
.method constructor <init>(Lavw;Landroid/content/Context;Ljava/util/List;Lavx;Ljava/lang/String;Ljava/util/List;Lavx;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lavw$2;->this$0:Lavw;

    iput-object p5, p0, Lavw$2;->val$key:Ljava/lang/String;

    iput-object p6, p0, Lavw$2;->val$storySnaps:Ljava/util/List;

    iput-object p7, p0, Lavw$2;->val$item:Lavx;

    invoke-direct {p0, p2, p3, p4}, Latv;-><init>(Landroid/content/Context;Ljava/util/List;Lavx;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 223
    iget-object v0, p0, Lavw$2;->this$0:Lavw;

    invoke-static {v0}, Lavw;->b(Lavw;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lavw$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lavw$2;->this$0:Lavw;

    invoke-static {v0}, Lavw;->b(Lavw;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lavw$2;->val$key:Ljava/lang/String;

    new-instance v2, Lavw$a;

    iget-object v3, p0, Lavw$2;->this$0:Lavw;

    iget-object v4, p0, Lavw$2;->val$storySnaps:Ljava/util/List;

    invoke-direct {v2, v3, p1, v4}, Lavw$a;-><init>(Lavw;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfc;

    iget-object v2, p0, Lavw$2;->val$item:Lavx;

    invoke-direct {v1, v2}, Lbfc;-><init>(Lavx;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
