.class final Lazg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lazg;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$originalCacheEnabledValues:Ljava/util/Map;

.field final synthetic val$screenView:Landroid/view/View;

.field final synthetic val$shakeReporter:Lazv;


# direct methods
.method constructor <init>(Lazg;Landroid/view/View;Ljava/util/Map;Landroid/app/Activity;Lazv;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lazg$6;->this$0:Lazg;

    iput-object p2, p0, Lazg$6;->val$screenView:Landroid/view/View;

    iput-object p3, p0, Lazg$6;->val$originalCacheEnabledValues:Ljava/util/Map;

    iput-object p4, p0, Lazg$6;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lazg$6;->val$shakeReporter:Lazv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lazg$6;->this$0:Lazg;

    iget-object v0, p0, Lazg$6;->val$screenView:Landroid/view/View;

    const-class v2, Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v1, v0, v2}, Lazg;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/cameraview/CameraView;

    const-class v2, Landroid/view/TextureView;

    invoke-virtual {v1, v0, v2}, Lazg;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    :goto_0
    iget-object v1, p0, Lazg$6;->this$0:Lazg;

    iget-object v2, p0, Lazg$6;->val$screenView:Landroid/view/View;

    iget-object v3, p0, Lazg$6;->val$originalCacheEnabledValues:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lazg;->b(Landroid/view/View;Ljava/util/Map;)V

    .line 135
    iget-object v1, p0, Lazg$6;->this$0:Lazg;

    iget-object v2, p0, Lazg$6;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lazg$6;->val$shakeReporter:Lazv;

    invoke-virtual {v1, v2, v3, v0}, Lazg;->b(Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
