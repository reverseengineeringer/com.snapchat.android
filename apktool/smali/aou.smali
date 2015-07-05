.class public final Laou;
.super Lapf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laou$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapf",
        "<",
        "Lbjj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lapf;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Laou;->a:Landroid/content/Context;

    .line 31
    const v0, 0x7f0400bc

    iput v0, p0, Laou;->b:I

    .line 32
    return-void
.end method

.method static synthetic a(Laou;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Laou;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    if-nez p2, :cond_1

    .line 56
    invoke-virtual {p0}, Laou;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    iget v1, p0, Laou;->b:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Laou$a;

    invoke-direct {v0, p0, p2}, Laou$a;-><init>(Laou;Landroid/view/View;)V

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Laou;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjj;

    .line 66
    invoke-virtual {v0}, Lbjj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v3

    invoke-static {v2, v3}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, v1, Laou$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0}, Lbjj;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, v1, Laou$a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Laou;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v1, v1, Laou$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :cond_0
    new-instance v1, Laou$1;

    invoke-direct {v1, p0, v0}, Laou$1;-><init>(Laou;Lbjj;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object p2

    .line 61
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laou$a;

    .line 62
    iget-object v1, v0, Laou$a;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Laou$a;->b:Landroid/widget/TextView;

    iget-object v2, v0, Laou$a;->d:Laou;

    iget-object v2, v2, Laou;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Laou$a;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, v0

    goto :goto_0
.end method
