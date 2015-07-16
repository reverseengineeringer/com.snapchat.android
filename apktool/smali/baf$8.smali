.class final Lbaf$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->b(Landroid/app/Activity;Lbau;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaf;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screenShot:Landroid/graphics/Bitmap;

.field final synthetic val$shakeReporter:Lbau;


# direct methods
.method constructor <init>(Lbaf;Landroid/app/Activity;Lbau;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lbaf$8;->this$0:Lbaf;

    iput-object p2, p0, Lbaf$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lbaf$8;->val$shakeReporter:Lbau;

    iput-object p4, p0, Lbaf$8;->val$screenShot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lbaf$8;->this$0:Lbaf;

    iget-object v1, p0, Lbaf$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lbaf$8;->val$shakeReporter:Lbau;

    iget-object v3, p0, Lbaf$8;->val$screenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lbaf;->a(Landroid/app/Activity;Lbau;Landroid/graphics/Bitmap;)V

    .line 278
    return-void
.end method
