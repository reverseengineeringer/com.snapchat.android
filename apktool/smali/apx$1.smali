.class final Lapx$1;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved$7ef8fcad(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-static {}, Lapx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lawo;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected final synthetic sizeOf$2838e5a0(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 54
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lavp;->f(Landroid/graphics/Bitmap;)I

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
