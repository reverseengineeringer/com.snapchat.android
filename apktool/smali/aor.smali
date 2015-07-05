.class public final Laor;
.super Lapf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapf",
        "<",
        "Lcom/snapchat/android/model/StoryCollection;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lauy;

.field private final c:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lauy;Lcom/squareup/otto/Bus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;",
            "Lauy;",
            "Lcom/squareup/otto/Bus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    const v0, 0x7f040075

    invoke-direct {p0, p1, v0, p2}, Lapf;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Laor;->a:Landroid/view/LayoutInflater;

    .line 34
    iput-object p3, p0, Laor;->b:Lauy;

    .line 35
    iput-object p4, p0, Laor;->c:Lcom/squareup/otto/Bus;

    .line 36
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Laor;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f040075

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v0, Laot;

    invoke-direct {v0, p2}, Laot;-><init>(Landroid/view/View;)V

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Laor;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 52
    iget-object v2, v1, Laot;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Laor;->b:Lauy;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->m()Lauz;

    move-result-object v4

    invoke-virtual {v2, v4}, Lauy;->a(Lauz;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, v1, Laot;->a:Landroid/widget/ImageView;

    const v4, 0x7f02027e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v4, v1, Laot;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Laot;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    new-instance v1, Laon;

    invoke-direct {v1, v0}, Laon;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-object p2

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laot;

    move-object v1, v0

    goto :goto_0

    .line 52
    :cond_1
    iget-object v4, v1, Laot;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    goto :goto_3
.end method
