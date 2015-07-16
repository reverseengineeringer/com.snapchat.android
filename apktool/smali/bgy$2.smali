.class final Lbgy$2;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgy;-><init>(Lawo;Laxn;)V
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
        "Lbgy$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbgy;


# direct methods
.method constructor <init>(Lbgy;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lbgy$2;->this$0:Lbgy;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic sizeOf$2838e5a0(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 98
    check-cast p1, Lbgy$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lbgy$a;->mBitmapList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lbgy$a;->mBitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lavp;->f(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
