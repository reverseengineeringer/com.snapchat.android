.class public Lapq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/ProgressBar;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lapq;->d:Ljava/lang/String;

    .line 23
    const v0, 0x7f0a0268

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapq;->a:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f0a026a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapq;->b:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a0269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lapq;->c:Landroid/widget/ProgressBar;

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lapq;->d:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lapq;->a:Landroid/widget/ImageView;

    .line 32
    iput-object p3, p0, Lapq;->b:Landroid/widget/TextView;

    .line 33
    iput-object p4, p0, Lapq;->c:Landroid/widget/ProgressBar;

    .line 34
    return-void
.end method
