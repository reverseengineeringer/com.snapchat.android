.class final Lasw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasw;->b(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lasw;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lasw;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lasw$1;->this$0:Lasw;

    iput-object p2, p0, Lasw$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lasw$1;->this$0:Lasw;

    iget-object v1, p0, Lasw$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lasw;->a(Landroid/graphics/Bitmap;)V

    .line 184
    return-void
.end method
