.class public Latn;
.super Landroid/support/v7/widget/RecyclerView$s;
.source "SourceFile"


# instance fields
.field public final V:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Latn;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$s;-><init>(Landroid/view/View;)V

    .line 24
    iput-object p2, p0, Latn;->V:Landroid/widget/TextView;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Latn;->V:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Latn;->V:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    return-void
.end method
