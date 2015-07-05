.class public final Lasp;
.super Lasn;
.source "SourceFile"


# instance fields
.field public final k:Landroid/widget/CheckBox;

.field private final l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lasn;-><init>(Lafa;Landroid/view/View;)V

    .line 29
    const v0, 0x7f0a033f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lasp;->k:Landroid/widget/CheckBox;

    .line 30
    const v0, 0x7f0a0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lasp;->l:Landroid/view/View;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    invoke-super {p0}, Lasn;->q()V

    .line 41
    iget-object v0, p0, Lasp;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lasp;->b(I)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lasp;->c(I)V

    .line 44
    iget-object v0, p0, Lasp;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lasp;->k:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lasp;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setScaleX(F)V

    iget-object v0, p0, Lasp;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setScaleY(F)V

    .line 45
    invoke-virtual {p0}, Lasp;->v()V

    .line 46
    invoke-virtual {p0}, Lasp;->w()V

    .line 47
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lasp;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lasp;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method
