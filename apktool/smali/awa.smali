.class public final Lawa;
.super Lawb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lawb;-><init>(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    invoke-direct {v1, p1}, Lbca;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method
