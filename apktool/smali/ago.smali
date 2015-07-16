.class public Lago;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lago$b;,
        Lago$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lago$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lago$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lago$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lago$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x9

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong number of images: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    iput-object p1, p0, Lago;->b:Landroid/content/Context;

    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lago;->c:Landroid/view/LayoutInflater;

    .line 49
    iput-object p3, p0, Lago;->d:Lago$a;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lago;->a:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    .line 53
    iget-object v2, p0, Lago;->a:Ljava/util/List;

    new-instance v3, Lago$b;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v3, p0, v0}, Lago$b;-><init>(Lago;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 55
    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;Lago$b;)V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p2, Lago$b;->a:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lago;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lago;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v0, p0, Lago;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Failed to inflate captcha_item"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iget-object v0, p0, Lago;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lago$b;

    .line 77
    const v1, 0x7f0a00b0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    iget-object v2, v0, Lago$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-direct {p0, p2, v0}, Lago;->a(Landroid/view/View;Lago$b;)V

    .line 82
    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lago;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lago$b;

    .line 88
    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v1, v0, Lago$b;->a:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lago$b;->a:Z

    .line 91
    invoke-direct {p0, p2, v0}, Lago;->a(Landroid/view/View;Lago$b;)V

    .line 93
    iget-object v0, p0, Lago;->d:Lago$a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lago;->d:Lago$a;

    iget-object v0, p0, Lago;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lago$b;

    iget-boolean v0, v0, Lago$b;->a:Z

    if-eqz v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    .line 90
    goto :goto_1

    .line 94
    :cond_4
    invoke-interface {v1, v2}, Lago$a;->a(I)V

    goto :goto_0
.end method
