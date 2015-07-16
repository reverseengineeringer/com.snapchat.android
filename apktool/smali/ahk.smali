.class public final Lahk;
.super Laqb;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahk$b;,
        Lahk$c;,
        Lahk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqb",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

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

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/snapchat/android/model/Friend$a;

.field private g:Landroid/widget/Filter;

.field private h:Lahk$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/model/Friend$a;Lahk$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/model/Friend$a;",
            "Lahk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    const v0, 0x7f040045

    invoke-direct {p0, p1, v0, p2}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    iput-object p2, p0, Lahk;->b:Ljava/util/List;

    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lahk;->d:Ljava/util/List;

    .line 55
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    invoke-virtual {v0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lahk;->c:Ljava/util/List;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lahk;->e:Landroid/view/LayoutInflater;

    .line 57
    iput-object p1, p0, Lahk;->a:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lahk;->f:Lcom/snapchat/android/model/Friend$a;

    .line 59
    iput-object p4, p0, Lahk;->h:Lahk$a;

    .line 60
    return-void
.end method

.method static synthetic a(Lahk;)Lahk$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lahk;->h:Lahk$a;

    return-object v0
.end method

.method static synthetic a(Lahk;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lahk;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lahk;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lahk;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lahk;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lahk;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lahk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lahk;->g:Landroid/widget/Filter;

    if-nez v0, :cond_0

    new-instance v0, Lahk$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lahk$b;-><init>(Lahk;B)V

    iput-object v0, p0, Lahk;->g:Landroid/widget/Filter;

    .line 65
    :cond_0
    iget-object v0, p0, Lahk;->g:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getHeaderId(I)J
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lahk;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 179
    invoke-static {v0}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v1

    iget-object v2, p0, Lahk;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    new-instance v1, Lahk$c;

    invoke-direct {v1, p0}, Lahk$c;-><init>(Lahk;)V

    .line 159
    iget-object v0, p0, Lahk;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f04006a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 160
    const v0, 0x7f0a007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lahk$c;->a:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lahk;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 167
    invoke-static {v0}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    .line 168
    iget-object v3, p0, Lahk;->a:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, v1, Lahk$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object p2

    .line 163
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahk$c;

    move-object v1, v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    .line 82
    if-nez p2, :cond_0

    .line 83
    iget-object v0, p0, Lahk;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f040045

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    :cond_0
    iget-object v0, p0, Lahk;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 87
    if-eqz v0, :cond_2

    .line 88
    const v1, 0x7f0a0151

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    :goto_0
    const v1, 0x7f0a0194

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lahk;->h:Lahk$a;

    invoke-interface {v2, v0}, Lahk$a;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    new-instance v2, Lahk$1;

    invoke-direct {v2, p0, v0}, Lahk$1;-><init>(Lahk;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    :cond_2
    iget-object v1, p0, Lahk;->h:Lahk$a;

    invoke-interface {v1, v0}, Lahk$a;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    const v0, 0x7f080050

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    :goto_2
    return-object p2

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lahk;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0172

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 95
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method
