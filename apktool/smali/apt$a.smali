.class final Lapt$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field final synthetic d:Lapt;


# direct methods
.method public constructor <init>(Lapt;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lapt$a;->d:Lapt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lapt$a;->a:Landroid/view/View;

    .line 41
    const v0, 0x7f0a03e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapt$a;->b:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0a03e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapt$a;->c:Landroid/widget/ImageView;

    .line 43
    return-void
.end method
