.class public final Laoe;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqb",
        "<",
        "Lajy;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Laas;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Laoe$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Laoe$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lajy;",
            ">;",
            "Laoe$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    const v0, 0x7f040088

    invoke-direct {p0, p1, v0, p2}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Laoe;)V

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Laoe;->c:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Laoe;->b:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Laoe;->d:Laoe$a;

    .line 48
    return-void
.end method

.method static synthetic a(Laoe;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laoe;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;Lajy;)V
    .locals 2

    .prologue
    .line 106
    instance-of v0, p2, Lajw;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Laoe;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Laoe;->d:Laoe$a;

    invoke-interface {v0, p2}, Laoe$a;->a(Lajy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Laoe;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Laoe;Landroid/view/View;Lajy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Laoe;->a(Landroid/view/View;Lajy;)V

    return-void
.end method

.method static synthetic b(Laoe;)Laoe$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laoe;->d:Laoe$a;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v0, p0, Laoe;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040088

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Laoe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    .line 61
    if-eqz v0, :cond_2

    .line 62
    const v1, 0x7f0a0151

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lajy;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Laoe;->d:Laoe$a;

    invoke-interface {v3, v0}, Laoe$a;->a(Lajy;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 63
    const v1, 0x7f0a0194

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Laoe;->d:Laoe$a;

    invoke-interface {v2, v0}, Laoe$a;->a(Lajy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Laoe$1;

    invoke-direct {v2, p0, v0, v1, p2}, Laoe$1;-><init>(Laoe;Lajy;Landroid/widget/CheckBox;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Laoe$2;

    invoke-direct {v2, p0, v1}, Laoe$2;-><init>(Laoe;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0, p2, v0}, Laoe;->a(Landroid/view/View;Lajy;)V

    .line 66
    :cond_2
    return-object p2
.end method
