.class public final Lafr;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafr$4;,
        Lafr$a;,
        Lafr$b;,
        Lafr$c;
    }
.end annotation


# instance fields
.field protected a:Lxx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lafv;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lagb;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/LayoutInflater;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lafr$a;

.field private final i:Laqi;

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lafr$a;Laqi;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lafr$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Laqi;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Lafr$a;",
            "Laqi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 98
    new-instance v0, Lagb;

    invoke-direct {v0}, Lagb;-><init>()V

    iput-object v0, p0, Lafr;->c:Lagb;

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lafr;->e:Landroid/view/LayoutInflater;

    .line 104
    iput-object p1, p0, Lafr;->d:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lafr;->f:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lafr;->g:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lafr;->g:Ljava/util/List;

    iget-object v1, p0, Lafr;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iput-object p3, p0, Lafr;->h:Lafr$a;

    .line 112
    iput-object p4, p0, Lafr;->i:Laqi;

    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lafr;->j:Landroid/os/Handler;

    .line 117
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lafr;)V

    .line 118
    return-void
.end method

.method private static a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 1
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 220
    instance-of v0, p0, Laki;

    if-eqz v0, :cond_0

    .line 221
    sget v0, Lafr$b;->a:I

    .line 237
    :goto_0
    return v0

    .line 222
    :cond_0
    instance-of v0, p0, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_1

    .line 223
    sget v0, Lafr$b;->d:I

    goto :goto_0

    .line 224
    :cond_1
    instance-of v0, p0, Lake;

    if-eqz v0, :cond_2

    .line 225
    sget v0, Lafr$b;->b:I

    goto :goto_0

    .line 226
    :cond_2
    instance-of v0, p0, Lakf;

    if-eqz v0, :cond_3

    .line 227
    sget v0, Lafr$b;->c:I

    goto :goto_0

    .line 228
    :cond_3
    instance-of v0, p0, Lakh;

    if-eqz v0, :cond_4

    .line 229
    sget v0, Lafr$b;->i:I

    goto :goto_0

    .line 230
    :cond_4
    instance-of v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_5

    .line 231
    sget v0, Lafr$b;->e:I

    goto :goto_0

    .line 232
    :cond_5
    instance-of v0, p0, Lakg;

    if-eqz v0, :cond_6

    .line 233
    sget v0, Lafr$b;->f:I

    goto :goto_0

    .line 234
    :cond_6
    instance-of v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_7

    .line 235
    sget v0, Lafr$b;->h:I

    goto :goto_0

    .line 237
    :cond_7
    sget v0, Lafr$b;->g:I

    goto :goto_0
.end method

.method static synthetic a(Lafr;)Lafr$a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lafr;->h:Lafr$a;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 877
    instance-of v0, p1, Lakj;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p2, Lafr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 893
    :goto_0
    iget-object v0, p2, Lafr$c;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 896
    instance-of v1, p1, Lako;

    if-eqz v1, :cond_4

    check-cast p1, Lako;

    invoke-interface {p1}, Lako;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 898
    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 899
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 907
    :goto_1
    iget-object v1, p2, Lafr$c;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    return-void

    .line 881
    :cond_0
    invoke-static {p1}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 882
    instance-of v0, p1, Lakg;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->N()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    :cond_1
    iget-object v0, p2, Lafr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 886
    :cond_2
    iget-object v0, p2, Lafr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 889
    :cond_3
    iget-object v0, p2, Lafr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 901
    :cond_4
    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 903
    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 838
    invoke-direct {p0, p1, p2}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 839
    instance-of v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->N()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    :cond_0
    iget-object v0, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_1
    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V
    .locals 6
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 796
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->al()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setVisibility(I)V

    .line 829
    :goto_0
    return-void

    .line 801
    :cond_0
    if-eqz p3, :cond_1

    .line 802
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->al()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    invoke-virtual {p2, v3}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setVisibility(I)V

    .line 805
    instance-of v0, p1, Lako;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lako;

    invoke-static {v0, p2}, Lasx;->b(Lako;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 807
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 824
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 825
    instance-of v0, p1, Lako;

    if-eqz v0, :cond_2

    check-cast p1, Lako;

    invoke-interface {p1}, Lako;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    const-string v0, "sans-serif-light"

    invoke-static {p2, v0}, Lbaj;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 828
    :cond_2
    invoke-static {}, Laxj;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laxj;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 811
    :cond_3
    iget-object v0, p0, Lafr;->j:Landroid/os/Handler;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lafr;->j:Landroid/os/Handler;

    new-instance v1, Lafr$3;

    invoke-direct {v1, p0, p1, p2}, Lafr$3;-><init>(Lafr;Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 828
    :cond_4
    iget-object v0, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0
.end method

.method private static b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 936
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p1, Lafr$c;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p1, Lafr$c;->t:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 855
    instance-of v0, p1, Lako;

    if-eqz v0, :cond_0

    check-cast p1, Lako;

    invoke-interface {p1}, Lako;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lafr;->d:Landroid/content/Context;

    const v1, 0x7f0d0031

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lafr;->d:Landroid/content/Context;

    const v1, 0x7f0d0032

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lafr;->g:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lafr;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 130
    iget-object v0, p0, Lafr;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    monitor-exit v1

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lafr;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    sget-object v1, Lafr$4;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t reach here. CHAT_UNKNOWN Should catch everything"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v2

    .line 256
    invoke-static {v2}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v5

    .line 257
    if-nez p2, :cond_1

    .line 258
    new-instance v1, Lafr$c;

    invoke-direct {v1}, Lafr$c;-><init>()V

    .line 259
    sget-object v0, Lafr$4;->a:[I

    add-int/lit8 v3, v5, -0x1

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :pswitch_0
    iget-object v0, p0, Lafr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040033

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 262
    const v0, 0x7f0a012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v1, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 263
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->t:Landroid/widget/ImageView;

    .line 264
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->m:Landroid/view/View;

    .line 265
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->j:Landroid/widget/TextView;

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lafr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040030

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 271
    const v0, 0x7f0a0135

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->i:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f0a0134

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->K:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->j:Landroid/widget/TextView;

    goto :goto_0

    .line 277
    :pswitch_2
    iget-object v0, p0, Lafr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040032

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 278
    const v0, 0x7f0a0149

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->h:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->t:Landroid/widget/ImageView;

    .line 280
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->m:Landroid/view/View;

    .line 281
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->j:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f0a0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lafr$c;->d:Landroid/view/ViewGroup;

    .line 284
    const v0, 0x7f0a0146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    iput-object v0, v1, Lafr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    .line 285
    const v0, 0x7f0a0147

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lafr$c;->o:Landroid/widget/ProgressBar;

    .line 286
    const v0, 0x7f0a0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->k:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f0a014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->l:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 291
    :pswitch_3
    iget-object v0, p0, Lafr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040031

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 292
    const v0, 0x7f0a012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v1, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 293
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->t:Landroid/widget/ImageView;

    .line 294
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->m:Landroid/view/View;

    .line 295
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->j:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0a0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lafr$c;->d:Landroid/view/ViewGroup;

    .line 298
    const v0, 0x7f0a0137

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lafr$c;->C:Landroid/view/ViewGroup;

    .line 299
    const v0, 0x7f0a0139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ImageResourceView;

    iput-object v0, v1, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    .line 300
    const v0, 0x7f0a013e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->p:Landroid/view/View;

    .line 301
    const v0, 0x7f0a013f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->q:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f0a0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->L:Landroid/view/View;

    .line 304
    iget-object v0, v1, Lafr$c;->L:Landroid/view/View;

    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 305
    const v0, 0x7f0a0142

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->M:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f0a0143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->N:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0a0145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->O:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f0a0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lafr$c;->P:Landroid/widget/ProgressBar;

    .line 309
    const v0, 0x7f0a0141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->Q:Landroid/widget/ImageView;

    .line 310
    const v0, 0x7f0a013a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, v1, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    .line 311
    const v0, 0x7f0a013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FitWidthImageView;

    iput-object v0, v1, Lafr$c;->A:Lcom/snapchat/android/ui/FitWidthImageView;

    .line 312
    const v0, 0x7f0a0138

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->B:Landroid/view/View;

    .line 313
    const v0, 0x7f0a013d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lafr$c;->D:Landroid/widget/ProgressBar;

    .line 314
    const v0, 0x7f0a013c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lafr$c;->E:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 317
    :pswitch_4
    iget-object v0, p0, Lafr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f04002f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 318
    const v0, 0x7f0a012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v1, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 319
    const v0, 0x7f0a0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->r:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f0a0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->s:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->t:Landroid/widget/ImageView;

    .line 322
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->m:Landroid/view/View;

    .line 323
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lafr$c;->j:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0a012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->u:Landroid/widget/ImageView;

    .line 326
    const v0, 0x7f0a012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->v:Landroid/widget/ImageView;

    .line 327
    const v0, 0x7f0a0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lafr$c;->w:Landroid/widget/ImageView;

    .line 328
    const v0, 0x7f0a0129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lafr$c;->g:Landroid/widget/LinearLayout;

    .line 329
    const v0, 0x7f0a0128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->f:Landroid/view/View;

    .line 330
    const v0, 0x7f0a012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lafr$c;->x:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 335
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 336
    iput-object p2, v1, Lafr$c;->b:Landroid/view/View;

    .line 337
    const v0, 0x7f0a0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lafr$c;->c:Landroid/view/View;

    .line 338
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v1

    .line 346
    :goto_1
    if-nez v4, :cond_3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHAT-LOG: Holder is null for position ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and ChatFeedItem ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v1, "ChatConversationAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafr$c;

    .line 341
    iget-object v1, v0, Lafr$c;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, v0, Lafr$c;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move-object v4, v0

    goto :goto_1

    .line 356
    :cond_3
    const/4 v0, 0x0

    .line 357
    iget-object v1, v4, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 359
    iget-object v0, v4, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lafr;->j:Landroid/os/Handler;

    iget-object v1, v4, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lafr;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lafr;->b:Ljava/util/Map;

    iget-object v1, v4, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafv;

    .line 364
    if-eqz v0, :cond_4

    .line 365
    invoke-interface {v0}, Lafv;->c()V

    .line 371
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lafr$c;->a(F)V

    iget-object v0, v4, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setLinkTextColor(I)V

    :cond_5
    iget-object v0, v4, Lafr$c;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, v4, Lafr$c;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_6
    invoke-virtual {v4}, Lafr$c;->a()V

    iget-object v0, v4, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_7
    iget-object v0, v4, Lafr$c;->B:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, v4, Lafr$c;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, v4, Lafr$c;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    iget-object v0, v4, Lafr$c;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_9
    iget-object v0, v4, Lafr$c;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lafr$c;->x:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_a
    iget-object v0, v4, Lafr$c;->L:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, v4, Lafr$c;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v4, Lafr$c;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lafr$c;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->L:Landroid/view/View;

    iget-object v1, v4, Lafr$c;->L:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080045

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v4, Lafr$c;->M:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->N:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->P:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTranslationY(F)V

    iget-object v0, v4, Lafr$c;->P:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->O:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->O:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v4, Lafr$c;->O:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lavh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v4, Lafr$c;->Q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    :cond_b
    const/4 v0, 0x1

    move v3, v0

    .line 375
    :goto_2
    iput-object v2, v4, Lafr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 376
    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 377
    instance-of v0, v2, Lake;

    if-eqz v0, :cond_11

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    :goto_3
    instance-of v0, v1, Lakj;

    if-eqz v0, :cond_12

    if-eqz v3, :cond_c

    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080010

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 378
    :cond_c
    :goto_4
    sget-object v0, Lafr$4;->a:[I

    add-int/lit8 v1, v5, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 408
    :cond_d
    :goto_5
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 409
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_e

    instance-of v3, v1, Lakf;

    if-nez v3, :cond_e

    instance-of v3, v2, Lakf;

    if-nez v3, :cond_e

    .line 412
    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 413
    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 415
    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    :cond_e
    :goto_6
    instance-of v1, v2, Lake;

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    instance-of v0, v0, Lakf;

    if-eqz v0, :cond_f

    .line 422
    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x41100000    # 9.0f

    iget-object v6, p0, Lafr;->d:Landroid/content/Context;

    invoke-static {v5, v6}, Lavh;->a(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 425
    :cond_f
    invoke-virtual {p0}, Lafr;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_10

    .line 426
    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, p0, Lafr;->d:Landroid/content/Context;

    invoke-static {v4, v5}, Lavh;->a(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 431
    :cond_10
    iget-object v0, p0, Lafr;->i:Laqi;

    invoke-interface {v0, p2}, Laqi;->d(Landroid/view/View;)V

    .line 433
    return-object p2

    .line 377
    :cond_11
    instance-of v0, v2, Lakf;

    if-eqz v0, :cond_3d

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    goto/16 :goto_3

    :cond_12
    instance-of v0, v1, Lako;

    if-eqz v0, :cond_14

    move-object v0, v1

    check-cast v0, Lako;

    invoke-interface {v0}, Lako;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, v1, Lakh;

    if-eqz v0, :cond_13

    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    iget-object v1, v4, Lafr$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080045

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_13
    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x7f080000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v4, Lafr$c;->f:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lafr$c;->f:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x7f080000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_14
    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, v1, Lakh;

    if-eqz v0, :cond_15

    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    iget-object v1, v4, Lafr$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080041

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_15
    iget-object v0, v4, Lafr$c;->f:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lafr$c;->f:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f08000f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :pswitch_5
    move-object v0, v2

    .line 380
    check-cast v0, Laki;

    iget-object v1, v4, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v1, v3}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Laki;->W()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    invoke-static {v0, v4}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    goto/16 :goto_5

    .line 383
    :pswitch_6
    if-eqz v3, :cond_16

    iget-object v0, v4, Lafr$c;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->K:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->K:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    iget-object v0, v4, Lafr$c;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 386
    :pswitch_7
    if-eqz v3, :cond_17

    iget-object v0, v4, Lafr$c;->K:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_17
    iget-object v0, v4, Lafr$c;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    instance-of v1, v1, Lakj;

    if-eqz v1, :cond_18

    iget-object v0, v4, Lafr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    const v3, 0x7f0c008a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lafr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lafr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    instance-of v0, v0, Lake;

    if-eqz v0, :cond_d

    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    iget-object v0, p0, Lafr;->d:Landroid/content/Context;

    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lafr$c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lafr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_1a
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lafr$c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lafr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :pswitch_8
    move-object v0, v2

    .line 389
    check-cast v0, Lcom/snapchat/android/model/Snap;

    if-eqz v3, :cond_1b

    iget-object v1, v4, Lafr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->k:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1b
    iget-object v1, v4, Lafr$c;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->W()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    invoke-static {v0, v4}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->N()Z

    move-result v1

    if-nez v1, :cond_1c

    instance-of v1, v0, Laje;

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Laje;

    invoke-virtual {v1}, Laje;->R()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    iget-object v1, v4, Lafr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->o:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_8
    iget-object v1, v4, Lafr$c;->k:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of v1, v0, Laje;

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, Laje;

    invoke-virtual {v1}, Laje;->G()D

    move-result-wide v6

    invoke-virtual {v1}, Laje;->D()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1d

    iget-object v3, v4, Lafr$c;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Laje;->G()D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->aq()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, v4, Lafr$c;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v1, v4, Lafr$c;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    const v5, 0x7f0c0095

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->O()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v4, Lafr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const v1, 0x7f020035

    const v3, 0x7f020035

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setIconResources(II)V

    goto/16 :goto_5

    :cond_1e
    iget-object v1, v4, Lafr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setDisplayedIcon(Lcom/snapchat/android/model/Snap;)V

    iget-object v1, v4, Lafr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->o:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1f
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v3

    invoke-static {v1, v3}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v4, Lafr$c;->l:Landroid/widget/TextView;

    iget-object v5, p0, Lafr;->d:Landroid/content/Context;

    const v6, 0x7f0c008e

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_20
    iget-object v1, v4, Lafr$c;->l:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :pswitch_9
    move-object v0, v2

    .line 392
    check-cast v0, Lakg;

    if-eqz v3, :cond_21

    iget-object v1, v4, Lafr$c;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->K:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_21
    iget-object v1, v4, Lafr$c;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Lakg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lakg;->W()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_a
    move-object v0, v2

    .line 395
    check-cast v0, Lakj;

    if-eqz v3, :cond_d

    iget-object v1, v4, Lafr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->k:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lakj;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v4, Lafr$c;->h:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v1, ""

    :goto_a
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, v4, Lafr$c;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lakj;->W()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-static {v0, v4}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    iget-object v0, v4, Lafr$c;->b:Landroid/view/View;

    iget-object v1, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_22
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_a

    :pswitch_b
    move-object v0, v2

    .line 398
    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v5, v4, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v5, v3}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v5, v4, Lafr$c;->j:Landroid/widget/TextView;

    iget-object v6, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->W()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lafr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v5}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    invoke-static {v0, v4}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    if-eqz v3, :cond_23

    iget-object v3, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    iget-object v3, v4, Lafr$c;->p:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/snapchat/android/ui/ImageResourceView;->setAlpha(F)V

    iget-object v3, v4, Lafr$c;->q:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_23
    iget-object v3, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setChatMedia(Lcom/snapchat/android/model/chat/ChatMedia;)V

    iget-object v0, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setMinimumHeight(I)V

    goto/16 :goto_5

    :pswitch_c
    move-object v0, v2

    .line 401
    check-cast v0, Lakh;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v5, v4, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v5, v3}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v5, v4, Lafr$c;->j:Landroid/widget/TextView;

    iget-object v6, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lakh;->W()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lafr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v5}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v5, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    iget-object v5, v4, Lafr$c;->L:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0, v4}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    invoke-static {v0, v4}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    iget-object v5, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v5, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setChatMedia(Lcom/snapchat/android/model/chat/ChatMedia;)V

    iget-object v5, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    invoke-virtual {v6, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setMinimumHeight(I)V

    iget-object v1, v4, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/snapchat/android/ui/TextureVideoView;->setShouldUseAsyncMediaPlayer(Z)V

    if-eqz v3, :cond_d

    iget-object v1, v4, Lafr$c;->p:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->q:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ImageResourceView;->setAlpha(F)V

    invoke-virtual {v0}, Lakh;->V()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lakh;->C()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->VIDEO_NO_SOUND:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_b
    iget-object v1, v4, Lafr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v3, Lafr$1;

    invoke-direct {v3, p0, v0}, Lafr$1;-><init>(Lafr;Z)V

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto/16 :goto_5

    :cond_24
    const/4 v0, 0x0

    goto :goto_b

    :pswitch_d
    move-object v0, v2

    .line 404
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v1, v4, Lafr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v1, v3}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v1, v4, Lafr$c;->r:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lafr$c;->s:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lafr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lata;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    const/4 v3, 0x0

    iget-object v1, v4, Lafr$c;->g:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, v4, Lafr$c;->f:Landroid/view/View;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->N()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_25
    const/16 v1, 0x8

    :goto_c
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->u:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->N()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v4, Lafr$c;->x:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v1, v3

    :goto_d
    iget-object v3, v4, Lafr$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v1, :cond_26

    iget-object v1, v4, Lafr$c;->g:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_26
    const/4 v1, 0x0

    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v3

    if-eqz v3, :cond_2b

    const v1, 0x7f020035

    move v3, v1

    :goto_e
    if-nez v3, :cond_2f

    iget-object v1, v4, Lafr$c;->u:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    iget-object v3, v4, Lafr$c;->r:Landroid/widget/TextView;

    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c007a

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v3, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v1, v3, :cond_39

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v5, 0x7f0c007e

    invoke-static {v3, v5, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v4, Lafr$c;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lafr$c;->s:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_12
    invoke-static {v0, v4}, Lafr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lafr$c;)V

    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v4, Lafr$c;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, Lafr$c;->w:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_27
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_28
    sget-object v1, Lafr$4;->b:[I

    iget-object v5, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_2

    :cond_29
    move-object v1, v3

    goto/16 :goto_d

    :pswitch_e
    iget-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v1, v5, :cond_2a

    iget-object v1, v4, Lafr$c;->x:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v1, v3

    goto/16 :goto_d

    :cond_2a
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lafr$2;

    invoke-direct {v1, p0, v0}, Lafr$2;-><init>(Lafr;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    goto/16 :goto_d

    :cond_2b
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Z()Z

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v3, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v5, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_3

    :goto_13
    move v3, v1

    goto/16 :goto_e

    :pswitch_f
    const v1, 0x7f02003b

    move v3, v1

    goto/16 :goto_e

    :pswitch_10
    const v1, 0x7f0200b4

    move v3, v1

    goto/16 :goto_e

    :pswitch_11
    const v1, 0x7f0200b5

    goto :goto_13

    :cond_2c
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v5, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_4

    :cond_2d
    :goto_14
    move v3, v1

    goto/16 :goto_e

    :pswitch_12
    iget-object v3, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-eq v3, v5, :cond_2d

    const v1, 0x7f0200b3

    move v3, v1

    goto/16 :goto_e

    :pswitch_13
    const v1, 0x7f0200b3

    move v3, v1

    goto/16 :goto_e

    :pswitch_14
    const v1, 0x7f0200b4

    move v3, v1

    goto/16 :goto_e

    :pswitch_15
    const v1, 0x7f0200b5

    goto :goto_14

    :cond_2e
    const v1, 0x7f0200b4

    move v3, v1

    goto/16 :goto_e

    :cond_2f
    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSparkled:Z

    if-nez v1, :cond_31

    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCanShowSparkle:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    :goto_15
    if-eqz v1, :cond_30

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSparkled:Z

    iget-object v1, v4, Lafr$c;->v:Landroid/widget/ImageView;

    iget-object v5, v4, Lafr$c;->w:Landroid/widget/ImageView;

    const v6, 0x7f0200b6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v6, 0x7f0200c3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    :cond_30
    iget-object v1, v4, Lafr$c;->x:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->u:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v4, Lafr$c;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_f

    :cond_31
    const/4 v1, 0x0

    goto :goto_15

    :cond_32
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c0080

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_33
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->N()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c021b

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_34
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Z()Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v5, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_5

    :cond_35
    :goto_16
    const/4 v1, 0x0

    goto/16 :goto_10

    :pswitch_16
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c0220

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :pswitch_17
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c021f

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_36
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v5, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_6

    goto :goto_16

    :pswitch_18
    iget-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v1, v5, :cond_37

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c007d

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_37
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c007f

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :pswitch_19
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c007c

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :pswitch_1a
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c007b

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :pswitch_1b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c01ea

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_38
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x0

    const v6, 0x7f0c0079

    invoke-static {v5, v6, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_39
    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_3a
    iget-object v1, v4, Lafr$c;->s:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_12

    .line 417
    :cond_3b
    iget-object v1, v4, Lafr$c;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_3c
    move v3, v1

    goto/16 :goto_e

    :cond_3d
    move-object v1, v2

    goto/16 :goto_3

    :cond_3e
    move v3, v0

    goto/16 :goto_2

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 378
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 404
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x5

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v6, p0, Lafr;->g:Ljava/util/List;

    monitor-enter v6

    .line 160
    :try_start_0
    iget-object v1, p0, Lafr;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 161
    iget-object v1, p0, Lafr;->g:Ljava/util/List;

    iget-object v2, p0, Lafr;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    const-string v1, "ChatConversationAdapter"

    const-string v2, "CHAT-LOG: ChatConversationAdapter notifyDataSetChanged %d items"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lafr;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v2, p0, Lafr;->g:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v0, Lakb;

    if-eqz v3, :cond_2

    .line 165
    :goto_2
    if-nez v0, :cond_4

    .line 166
    iget-object v1, p0, Lafr;->c:Lagb;

    new-instance v0, Lagb$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lagb$a;-><init>(Lagb;JJ)V

    iput-object v0, v1, Lagb;->c:Lagb$a;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lagb;->b:J

    iget-object v0, v1, Lagb;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 170
    :cond_0
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 173
    return-void

    .line 164
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 168
    :cond_4
    iget-object v1, p0, Lafr;->c:Lagb;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    iget-boolean v0, v1, Lagb;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, v1, Lagb;->b:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_5

    iput-wide v2, v1, Lagb;->b:J

    iget-object v7, v1, Lagb;->e:Ljava/util/PriorityQueue;

    new-instance v0, Lagb$a;

    invoke-direct/range {v0 .. v5}, Lagb$a;-><init>(Lagb;JJ)V

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1, v4, v5}, Lagb;->a(J)V

    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
