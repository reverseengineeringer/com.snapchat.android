.class final Lazg$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazg;->b(Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lazg;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screenShot:Landroid/graphics/Bitmap;

.field final synthetic val$shakeReporter:Lazv;


# direct methods
.method constructor <init>(Lazg;Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lazg$8;->this$0:Lazg;

    iput-object p2, p0, Lazg$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lazg$8;->val$shakeReporter:Lazv;

    iput-object p4, p0, Lazg$8;->val$screenShot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lazg$8;->this$0:Lazg;

    iget-object v1, p0, Lazg$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lazg$8;->val$shakeReporter:Lazv;

    iget-object v3, p0, Lazg$8;->val$screenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lazg;->a(Landroid/app/Activity;Lazv;Landroid/graphics/Bitmap;)V

    .line 278
    return-void
.end method
