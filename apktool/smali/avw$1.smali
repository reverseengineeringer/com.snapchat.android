.class final Lavw$1;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavw;-><init>(Lawo;)V
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
        "Lavw$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lavw;


# direct methods
.method constructor <init>(Lavw;I)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lavw$1;->this$0:Lavw;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved$7ef8fcad(ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 112
    check-cast p2, Lavw$a;

    iget-object v0, p0, Lavw$1;->this$0:Lavw;

    invoke-static {v0}, Lavw;->a(Lavw;)Lawo;

    move-result-object v0

    iget-object v1, p2, Lavw$a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lawo;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final synthetic sizeOf$2838e5a0(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 112
    check-cast p1, Lavw$a;

    iget-object v0, p1, Lavw$a;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lavp;->f(Landroid/graphics/Bitmap;)I

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
