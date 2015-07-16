.class public final Laew;
.super Laez;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laew$1;
    }
.end annotation


# instance fields
.field private final d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/ImageView;

.field private f:Lawn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laey;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lawn;

    invoke-direct {v1, p1}, Lawn;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Laew;-><init>(Landroid/view/LayoutInflater;Laey;Lawn;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/view/LayoutInflater;Laey;Lawn;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p2}, Laez;-><init>(Laey;)V

    .line 42
    iput-object p1, p0, Laew;->d:Landroid/view/LayoutInflater;

    .line 43
    iput-object p3, p0, Laew;->f:Lawn;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Laeb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laji;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Laew;->e:Landroid/widget/ImageView;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Laew;->c:Laey;

    invoke-virtual {v0, p1, p2, p3}, Laey;->a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-super {p0, p1, p2, p3}, Laez;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    .line 49
    iget-object v0, p0, Laew;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laew;->a:Landroid/view/View;

    .line 50
    iget-object v0, p0, Laew;->a:Landroid/view/View;

    const v1, 0x7f0a01f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Laew;->b:Landroid/widget/FrameLayout;

    .line 51
    iget-object v0, p0, Laew;->a:Landroid/view/View;

    const v1, 0x7f0a01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laew;->e:Landroid/widget/ImageView;

    .line 54
    sget-object v0, Laew$1;->a:[I

    iget-object v1, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->d:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    const/16 v0, 0xa

    move v1, v0

    .line 65
    :goto_0
    iget-object v0, p0, Laew;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    iget-object v1, p0, Laew;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lawv$a;

    invoke-direct {v1}, Lawv$a;-><init>()V

    iget-object v2, p0, Laew;->e:Landroid/widget/ImageView;

    iput-object v2, v1, Lawv$a;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lawv$a;->a(Ljava/lang/String;)Lawv$a;

    move-result-object v0

    iput-boolean v3, v0, Lawv$a;->mRequireExactDimensions:Z

    invoke-virtual {v0}, Lawv$a;->a()Lawv;

    move-result-object v0

    .line 75
    iget-object v1, p0, Laew;->f:Lawn;

    const/4 v2, 0x0

    new-array v2, v2, [Laww;

    invoke-virtual {v1, v0, v2}, Lawn;->a(Lawv;[Laww;)V

    .line 77
    return v3

    .line 56
    :pswitch_0
    const/16 v0, 0xc

    move v1, v0

    .line 57
    goto :goto_0

    .line 59
    :pswitch_1
    const/16 v0, 0xf

    move v1, v0

    .line 60
    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Laez;->c()V

    .line 90
    iget-object v0, p0, Laew;->f:Lawn;

    iget-object v1, p0, Laew;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lawn;->a(Landroid/widget/ImageView;)V

    .line 91
    return-void
.end method
