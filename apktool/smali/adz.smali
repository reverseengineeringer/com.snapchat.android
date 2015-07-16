.class public final Ladz;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqb",
        "<",
        "Lcom/snapchat/android/discover/model/ChannelPage;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laes;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Landroid/view/View$OnClickListener;

.field private final c:Lafh;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lafh;",
            "Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ladz;-><init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Ljava/util/List;Landroid/view/LayoutInflater;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lafh;",
            "Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    const v0, 0x7f040028

    invoke-direct {p0, p1, v0, p4}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ladz;->a:Ljava/util/Map;

    .line 106
    new-instance v0, Ladz$1;

    invoke-direct {v0, p0}, Ladz$1;-><init>(Ladz;)V

    iput-object v0, p0, Ladz;->b:Landroid/view/View$OnClickListener;

    .line 58
    iput-object p5, p0, Ladz;->d:Landroid/view/LayoutInflater;

    .line 59
    iput-object p2, p0, Ladz;->c:Lafh;

    .line 60
    iput-object p3, p0, Ladz;->e:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 61
    return-void
.end method

.method static synthetic a(Ladz;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ladz;->e:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    return-object v0
.end method

.method static synthetic b(Ladz;)Lafh;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ladz;->c:Lafh;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v2, 0x7f0a0109

    .line 66
    if-nez p2, :cond_2

    .line 67
    iget-object v0, p0, Ladz;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040028

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 69
    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v0

    .line 73
    :goto_0
    const v0, 0x7f0a0001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->setTag(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p0, p1}, Ladz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 76
    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v3, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/ChannelView;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ladz;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Ladz;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laes;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Laes;->a:Z

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    .line 77
    :goto_2
    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setChannelPage(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 78
    iget-object v0, p0, Ladz;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-object p2

    .line 71
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    move-object v2, v0

    goto :goto_0

    .line 76
    :cond_3
    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v4}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    goto :goto_2
.end method
