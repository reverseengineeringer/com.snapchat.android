.class final Lbaf$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaf;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$originalCacheEnabledValues:Ljava/util/Map;

.field final synthetic val$screenView:Landroid/view/View;

.field final synthetic val$shakeReporter:Lbau;


# direct methods
.method constructor <init>(Lbaf;Landroid/view/View;Ljava/util/Map;Landroid/app/Activity;Lbau;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lbaf$7;->this$0:Lbaf;

    iput-object p2, p0, Lbaf$7;->val$screenView:Landroid/view/View;

    iput-object p3, p0, Lbaf$7;->val$originalCacheEnabledValues:Ljava/util/Map;

    iput-object p4, p0, Lbaf$7;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lbaf$7;->val$shakeReporter:Lbau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lbaf$7;->val$screenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lbaf$7;->val$screenView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lbaf$7;->val$screenView:Landroid/view/View;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Laue;->a(II[Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lbaf$7;->this$0:Lbaf;

    iget-object v2, p0, Lbaf$7;->val$screenView:Landroid/view/View;

    iget-object v3, p0, Lbaf$7;->val$originalCacheEnabledValues:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lbaf;->b(Landroid/view/View;Ljava/util/Map;)V

    .line 146
    iget-object v1, p0, Lbaf$7;->this$0:Lbaf;

    iget-object v2, p0, Lbaf$7;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lbaf$7;->val$shakeReporter:Lbau;

    invoke-virtual {v1, v2, v3, v0}, Lbaf;->b(Landroid/app/Activity;Lbau;Landroid/graphics/Bitmap;)V

    .line 147
    return-void
.end method
