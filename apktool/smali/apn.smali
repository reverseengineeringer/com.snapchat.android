.class public final Lapn;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqb",
        "<",
        "Lcom/snapchat/android/model/StoryCollection;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lavw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lavw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;",
            "Lavw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-direct {p0, p1, p2, p3, v0}, Lapn;-><init>(Landroid/content/Context;Ljava/util/List;Lavw;Landroid/view/LayoutInflater;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lavw;Landroid/view/LayoutInflater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;",
            "Lavw;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    const v0, 0x7f040076

    invoke-direct {p0, p1, v0, p2}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    iput-object p4, p0, Lapn;->a:Landroid/view/LayoutInflater;

    .line 42
    iput-object p3, p0, Lapn;->b:Lavw;

    .line 43
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f02027e

    const/16 v6, 0x8

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    invoke-virtual {p0, p1}, Lapn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 49
    invoke-virtual {p0}, Lapn;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lapr;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    iget-object v1, p0, Lapn;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040083

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v1, Lapr;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lapr;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v2, v1, Lapr;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lapn;->b:Lavw;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->p()Lavx;

    move-result-object v7

    invoke-virtual {v2, v7}, Lavw;->a(Lavx;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lapr;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Z

    move-result v7

    iget-object v8, v1, Lapr;->a:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Lapr;->b:Landroid/widget/TextView;

    if-eqz v7, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v1, Lapr;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    :goto_5
    new-instance v1, Lapj;

    int-to-long v2, p1

    invoke-direct {v1, v0, v2, v3}, Lapj;-><init>(Lcom/snapchat/android/model/StoryCollection;J)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-object p2

    .line 56
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapr;

    goto :goto_0

    .line 58
    :cond_2
    iget-object v7, v1, Lapr;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    move v1, v6

    goto :goto_4

    .line 61
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lapq;

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lapr;

    if-eqz v1, :cond_9

    .line 63
    :cond_7
    iget-object v1, p0, Lapn;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040076

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v1, Lapq;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lapq;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_6
    iget-object v2, v1, Lapq;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lapn;->b:Lavw;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->p()Lavx;

    move-result-object v7

    invoke-virtual {v2, v7}, Lavw;->a(Lavx;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lapq;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    iget-object v2, v1, Lapq;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Z

    move-result v7

    if-eqz v7, :cond_8

    move v4, v3

    :cond_8
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Lapq;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->i()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v1, Lapq;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_9
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_5

    .line 67
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapq;

    goto :goto_6

    .line 69
    :cond_a
    iget-object v7, v1, Lapq;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_b
    move v5, v6

    goto :goto_8

    :cond_c
    const v3, 0x3ecccccd    # 0.4f

    goto :goto_9
.end method
