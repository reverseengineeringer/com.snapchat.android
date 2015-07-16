.class final Lavw$3;
.super Laag;
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

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$item:Lavx;


# direct methods
.method constructor <init>(Lavw;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lavx;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lavw$3;->this$0:Lavw;

    iput-object p5, p0, Lavw$3;->val$cacheKey:Ljava/lang/String;

    iput-object p6, p0, Lavw$3;->val$item:Lavx;

    invoke-direct {p0, p2, p3, p4}, Laag;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 259
    iget-object v0, p0, Lavw$3;->this$0:Lavw;

    invoke-static {v0}, Lavw;->b(Lavw;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lavw$3;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lavw$3;->this$0:Lavw;

    invoke-static {v0}, Lavw;->b(Lavw;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lavw$3;->val$cacheKey:Ljava/lang/String;

    new-instance v2, Lavw$a;

    iget-object v3, p0, Lavw$3;->this$0:Lavw;

    invoke-direct {v2, v3, p1}, Lavw$a;-><init>(Lavw;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfc;

    iget-object v2, p0, Lavw$3;->val$item:Lavx;

    invoke-direct {v1, v2}, Lbfc;-><init>(Lavx;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
