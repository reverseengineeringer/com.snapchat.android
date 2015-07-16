.class final Latv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latv;->b(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Latv;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Latv;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Latv$2;->this$0:Latv;

    iput-object p2, p0, Latv$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Latv$2;->this$0:Latv;

    iget-object v1, p0, Latv$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Latv;->a(Landroid/graphics/Bitmap;)V

    .line 182
    return-void
.end method
