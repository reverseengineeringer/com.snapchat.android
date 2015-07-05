.class final Lauy$2;
.super Lasw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauy;->a(Landroid/content/Context;Lauz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lauy;

.field final synthetic val$item:Lauz;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$storySnaps:Ljava/util/List;


# direct methods
.method constructor <init>(Lauy;Landroid/content/Context;Ljava/util/List;Lauz;Ljava/lang/String;Ljava/util/List;Lauz;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lauy$2;->this$0:Lauy;

    iput-object p5, p0, Lauy$2;->val$key:Ljava/lang/String;

    iput-object p6, p0, Lauy$2;->val$storySnaps:Ljava/util/List;

    iput-object p7, p0, Lauy$2;->val$item:Lauz;

    invoke-direct {p0, p2, p3, p4}, Lasw;-><init>(Landroid/content/Context;Ljava/util/List;Lauz;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 175
    iget-object v0, p0, Lauy$2;->this$0:Lauy;

    invoke-static {v0}, Lauy;->b(Lauy;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lauy$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lauy$2;->this$0:Lauy;

    invoke-static {v0}, Lauy;->b(Lauy;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lauy$2;->val$key:Ljava/lang/String;

    new-instance v2, Lauy$a;

    iget-object v3, p0, Lauy$2;->this$0:Lauy;

    iget-object v4, p0, Lauy$2;->val$storySnaps:Ljava/util/List;

    invoke-direct {v2, v3, p1, v4}, Lauy$a;-><init>(Lauy;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbed;

    iget-object v2, p0, Lauy$2;->val$item:Lauz;

    invoke-direct {v1, v2}, Lbed;-><init>(Lauz;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
