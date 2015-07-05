.class final Lauy$1;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauy;-><init>(Lajq;Lavq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lauy$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lauy;


# direct methods
.method constructor <init>(Lauy;I)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lauy$1;->this$0:Lauy;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved$7ef8fcad(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 104
    check-cast p2, Lauy$a;

    iget-object v0, p0, Lauy$1;->this$0:Lauy;

    invoke-static {v0}, Lauy;->a(Lauy;)Lavq;

    move-result-object v0

    iget-object v1, p2, Lauy$a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lavq;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final synthetic sizeOf$2838e5a0(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 104
    check-cast p1, Lauy$a;

    iget-object v0, p1, Lauy$a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Laur;->f(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
