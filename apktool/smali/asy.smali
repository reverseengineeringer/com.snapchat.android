.class public final Lasy;
.super Latb;
.source "SourceFile"


# instance fields
.field private final b:Lart;


# direct methods
.method public constructor <init>(Lart;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Latb;-><init>()V

    .line 15
    iput-object p1, p0, Lasy;->b:Lart;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "Battery"

    return-object v0
.end method

.method public final a(ILandroid/content/Context;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lasy;->b:Lart;

    iget-object v0, v0, Lart;->a:Landroid/view/View;

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/high16 v1, 0x42640000    # 57.0f

    invoke-static {v1, p2}, Lawf;->a(FLandroid/content/Context;)F

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lasy;->b:Lart;

    iget-object v0, v0, Lart;->a:Landroid/view/View;

    return-object v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lasy;->b:Lart;

    iget-object v1, v0, Lart;->b:Lapz;

    const v2, 0x7f04000a

    iget-object v3, v0, Lart;->a:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lapz;->a(ILandroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lart;->a:Landroid/view/View;

    .line 28
    return-void
.end method
