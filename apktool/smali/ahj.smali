.class public final Lahj;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqb",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lauu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauu",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lauu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lauu",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    const v0, 0x7f040039

    invoke-direct {p0, p1, v0, p2}, Laqb;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    iput-object p1, p0, Lahj;->a:Landroid/content/Context;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lahj;->b:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lahj;->c:Lauu;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;Lauu;)Lahj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lauu",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)",
            "Lahj;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lahj;

    invoke-direct {v0, p0, p1}, Lahj;-><init>(Landroid/content/Context;Lauu;)V

    .line 35
    iput-object v0, p1, Lauu;->mAdapter:Landroid/widget/BaseAdapter;

    .line 36
    return-object v0
.end method

.method static synthetic a(Lahj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lahj;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lahj;Lahj$a;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mBeingCleared:Z

    invoke-direct {p0, v0, p1, p2}, Lahj;->a(ZLahj$a;Lcom/snapchat/android/model/chat/ChatConversation;)V

    iget-object v0, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->L()V

    new-instance v0, Ltr;

    invoke-direct {v0, p2}, Ltr;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0}, Ltr;->execute()V

    return-void
.end method

.method private a(ZLahj$a;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p2, Lahj$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0c022c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p2, Lahj$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p2, Lahj$a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->y()J

    move-result-wide v0

    .line 113
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 114
    iget-object v2, p2, Lahj$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lahj;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Latz;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    iget-object v0, p2, Lahj$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p2, Lahj$a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p2, Lahj$a;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lahj;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lahj;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v1, Lahj$a;

    invoke-direct {v1, p0, v3}, Lahj$a;-><init>(Lahj;B)V

    .line 51
    iget-object v0, p0, Lahj;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f040039

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 52
    const v0, 0x7f0a015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lahj$a;->a:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a015b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lahj$a;->b:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0a015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lahj$a;->c:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0a015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lahj$a;->d:Landroid/widget/ProgressBar;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lahj;->c:Lauu;

    invoke-virtual {v0, p1}, Lauu;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 62
    iget-object v2, v1, Lahj$a;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lzi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-boolean v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mBeingCleared:Z

    invoke-direct {p0, v2, v1, v0}, Lahj;->a(ZLahj$a;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 66
    iget-object v2, v1, Lahj$a;->c:Landroid/widget/ImageView;

    new-instance v3, Lahj$1;

    invoke-direct {v3, p0, v1, v0}, Lahj$1;-><init>(Lahj;Lahj$a;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahj$a;

    move-object v1, v0

    goto :goto_0
.end method
