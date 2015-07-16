.class public final Lagy;
.super Laqb;
.source "SourceFile"

# interfaces
.implements Lbge$a;
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagy$a;,
        Lagy$b;,
        Lagy$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqb",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lbge$a",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;"
    }
.end annotation


# instance fields
.field protected a:Lban;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/snapchat/android/model/Friend$a;

.field private final g:Landroid/widget/Filter;

.field private final h:Lagy$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/model/Friend$a;Lagy$a;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/model/Friend$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lagy$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/model/Friend$a;",
            "Lagy$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    const v0, 0x7f040036

    invoke-direct {p0, p1, v0, p2}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lagy;)V

    .line 55
    iput-object p1, p0, Lagy;->b:Landroid/content/Context;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lagy;->c:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lagy;->d:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lagy;->e:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lagy;->f:Lcom/snapchat/android/model/Friend$a;

    .line 60
    new-instance v0, Laha;

    iget-object v1, p0, Lagy;->e:Ljava/util/List;

    iget-object v2, p0, Lagy;->a:Lban;

    invoke-direct {v0, v1, v2, p0}, Laha;-><init>(Ljava/util/List;Lban;Lbge$a;)V

    iput-object v0, p0, Lagy;->g:Landroid/widget/Filter;

    .line 61
    iput-object p4, p0, Lagy;->h:Lagy$a;

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    iget-object v0, p0, Lagy;->e:Ljava/util/List;

    iput-object v0, p0, Lagy;->d:Ljava/util/List;

    .line 128
    :goto_0
    iget-object v0, p0, Lagy;->h:Lagy$a;

    iget-object v1, p0, Lagy;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lagy$a;->a(Ljava/util/List;)V

    .line 129
    invoke-virtual {p0}, Lagy;->notifyDataSetChanged()V

    .line 130
    return-void

    .line 126
    :cond_0
    iput-object p1, p0, Lagy;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lagy;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lagy;->g:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lagy;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 88
    invoke-static {v0}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v1

    iget-object v2, p0, Lagy;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v2, Lagy$c;

    invoke-direct {v2, v3}, Lagy$c;-><init>(B)V

    .line 69
    iget-object v0, p0, Lagy;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f04004a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 70
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lagy$c;->a:Landroid/widget/TextView;

    .line 71
    iget-object v0, v2, Lagy$c;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lagy;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 77
    :goto_0
    iget-object v0, p0, Lagy;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 78
    invoke-static {v0}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lagy;->b:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, v1, Lagy$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-object p2

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagy$c;

    move-object v1, v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    iget-object v0, p0, Lagy;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v1, Lagy$b;

    invoke-direct {v1}, Lagy$b;-><init>()V

    .line 99
    const v0, 0x7f0a0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagy$b;->a:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lagy;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 106
    iget-object v2, v1, Lagy$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iput-object v0, v1, Lagy$b;->b:Lcom/snapchat/android/model/Friend;

    .line 108
    return-object p2

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagy$b;

    move-object v1, v0

    goto :goto_0
.end method
