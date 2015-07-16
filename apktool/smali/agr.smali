.class public final Lagr;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagr$4;,
        Lagr$a;,
        Lagr$b;,
        Lagr$c;
    }
.end annotation


# instance fields
.field protected a:Lyt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lagv;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lahb;

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

.field private final h:Lagr$a;

.field private final i:Larg;

.field private final j:Landroid/os/Handler;

.field private final k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lagr$a;Larg;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lagr$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Larg;
        .annotation build Lchc;
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
            "Lagr$a;",
            "Larg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 98
    new-instance v0, Lahb;

    invoke-direct {v0}, Lahb;-><init>()V

    iput-object v0, p0, Lagr;->c:Lahb;

    .line 106
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lagr;->e:Landroid/view/LayoutInflater;

    .line 107
    iput-object p1, p0, Lagr;->d:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lagr;->f:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lagr;->g:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lagr;->g:Ljava/util/List;

    iget-object v1, p0, Lagr;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iput-object p3, p0, Lagr;->h:Lagr$a;

    .line 115
    iput-object p4, p0, Lagr;->i:Larg;

    .line 117
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lagr;->j:Landroid/os/Handler;

    .line 120
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lagr;->k:J

    .line 122
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lagr;)V

    .line 123
    return-void
.end method

.method private static a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 1
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 225
    instance-of v0, p0, Lald;

    if-eqz v0, :cond_0

    .line 226
    sget v0, Lagr$b;->a:I

    .line 242
    :goto_0
    return v0

    .line 227
    :cond_0
    instance-of v0, p0, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_1

    .line 228
    sget v0, Lagr$b;->d:I

    goto :goto_0

    .line 229
    :cond_1
    instance-of v0, p0, Lakz;

    if-eqz v0, :cond_2

    .line 230
    sget v0, Lagr$b;->b:I

    goto :goto_0

    .line 231
    :cond_2
    instance-of v0, p0, Lala;

    if-eqz v0, :cond_3

    .line 232
    sget v0, Lagr$b;->c:I

    goto :goto_0

    .line 233
    :cond_3
    instance-of v0, p0, Lalc;

    if-eqz v0, :cond_4

    .line 234
    sget v0, Lagr$b;->i:I

    goto :goto_0

    .line 235
    :cond_4
    instance-of v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_5

    .line 236
    sget v0, Lagr$b;->e:I

    goto :goto_0

    .line 237
    :cond_5
    instance-of v0, p0, Lalb;

    if-eqz v0, :cond_6

    .line 238
    sget v0, Lagr$b;->f:I

    goto :goto_0

    .line 239
    :cond_6
    instance-of v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_7

    .line 240
    sget v0, Lagr$b;->h:I

    goto :goto_0

    .line 242
    :cond_7
    sget v0, Lagr$b;->g:I

    goto :goto_0
.end method

.method static synthetic a(Lagr;)Lagr$a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lagr;->h:Lagr$a;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 874
    instance-of v0, p1, Lale;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p2, Lagr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 890
    :goto_0
    iget-object v0, p2, Lagr$c;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 893
    instance-of v1, p1, Lalj;

    if-eqz v1, :cond_4

    check-cast p1, Lalj;

    invoke-interface {p1}, Lalj;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 895
    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 896
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 904
    :goto_1
    iget-object v1, p2, Lagr$c;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    return-void

    .line 878
    :cond_0
    invoke-static {p1}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    instance-of v0, p1, Lalb;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    :cond_1
    iget-object v0, p2, Lagr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 883
    :cond_2
    iget-object v0, p2, Lagr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 886
    :cond_3
    iget-object v0, p2, Lagr$c;->m:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 898
    :cond_4
    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 900
    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

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
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 835
    invoke-direct {p0, p1, p2}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 836
    instance-of v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    :cond_0
    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_1
    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V
    .locals 6
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 793
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setVisibility(I)V

    .line 826
    :goto_0
    return-void

    .line 798
    :cond_0
    if-eqz p3, :cond_1

    .line 799
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    invoke-virtual {p2, v3}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setVisibility(I)V

    .line 802
    instance-of v0, p1, Lalj;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lalj;

    invoke-static {v0, p2}, Latw;->b(Lalj;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 804
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 821
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 822
    instance-of v0, p1, Lalj;

    if-eqz v0, :cond_2

    check-cast p1, Lalj;

    invoke-interface {p1}, Lalj;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    const-string v0, "sans-serif-light"

    invoke-static {p2, v0}, Lbbj;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 825
    :cond_2
    invoke-static {}, Layh;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Layh;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 808
    :cond_3
    iget-object v0, p0, Lagr;->j:Landroid/os/Handler;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lagr;->j:Landroid/os/Handler;

    new-instance v1, Lagr$3;

    invoke-direct {v1, p0, p1, p2}, Lagr$3;-><init>(Lagr;Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 825
    :cond_4
    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0
.end method

.method private static b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 933
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p1, Lagr$c;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p1, Lagr$c;->t:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 852
    instance-of v0, p1, Lalj;

    if-eqz v0, :cond_0

    check-cast p1, Lalj;

    invoke-interface {p1}, Lalj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    const v1, 0x7f0d0031

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    const v1, 0x7f0d0032

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lagr;->g:Ljava/util/List;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lagr;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 135
    iget-object v0, p0, Lagr;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    monitor-exit v1

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 139
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
    .line 127
    iget-object v0, p0, Lagr;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    sget-object v1, Lagr$4;->a:[I

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
    .locals 12
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v2

    .line 261
    invoke-static {v2}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v5

    .line 262
    if-nez p2, :cond_1

    .line 263
    new-instance v1, Lagr$c;

    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Lagr$c;-><init>(Landroid/content/Context;)V

    .line 264
    sget-object v0, Lagr$4;->a:[I

    add-int/lit8 v3, v5, -0x1

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 266
    :pswitch_0
    iget-object v0, p0, Lagr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040034

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 267
    const v0, 0x7f0a012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v1, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 268
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->t:Landroid/widget/ImageView;

    .line 269
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->m:Landroid/view/View;

    .line 270
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->j:Landroid/widget/TextView;

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lagr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040031

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 276
    const v0, 0x7f0a0135

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->i:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0a0134

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->K:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->j:Landroid/widget/TextView;

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lagr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040033

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 283
    const v0, 0x7f0a0149

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->h:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->t:Landroid/widget/ImageView;

    .line 285
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->m:Landroid/view/View;

    .line 286
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->j:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f0a0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lagr$c;->d:Landroid/view/ViewGroup;

    .line 289
    const v0, 0x7f0a0146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    iput-object v0, v1, Lagr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    .line 290
    const v0, 0x7f0a0147

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lagr$c;->o:Landroid/widget/ProgressBar;

    .line 291
    const v0, 0x7f0a0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->k:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f0a014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->l:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 296
    :pswitch_3
    iget-object v0, p0, Lagr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040032

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 297
    const v0, 0x7f0a012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v1, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 298
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->t:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->m:Landroid/view/View;

    .line 300
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->j:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f0a0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lagr$c;->d:Landroid/view/ViewGroup;

    .line 303
    const v0, 0x7f0a0137

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lagr$c;->C:Landroid/view/ViewGroup;

    .line 304
    const v0, 0x7f0a0139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ImageResourceView;

    iput-object v0, v1, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    .line 305
    const v0, 0x7f0a013e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->p:Landroid/view/View;

    .line 306
    const v0, 0x7f0a013f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->q:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f0a0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->L:Landroid/view/View;

    .line 309
    iget-object v0, v1, Lagr$c;->L:Landroid/view/View;

    iget-object v3, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 310
    const v0, 0x7f0a0142

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->M:Landroid/widget/TextView;

    .line 311
    const v0, 0x7f0a0143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->N:Landroid/widget/TextView;

    .line 312
    const v0, 0x7f0a0145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->O:Landroid/widget/ImageView;

    .line 313
    const v0, 0x7f0a0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lagr$c;->P:Landroid/widget/ProgressBar;

    .line 314
    const v0, 0x7f0a0141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->Q:Landroid/widget/ImageView;

    .line 315
    const v0, 0x7f0a013a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, v1, Lagr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    .line 316
    const v0, 0x7f0a013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FitWidthImageView;

    iput-object v0, v1, Lagr$c;->A:Lcom/snapchat/android/ui/FitWidthImageView;

    .line 317
    const v0, 0x7f0a0138

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->B:Landroid/view/View;

    .line 318
    const v0, 0x7f0a013d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lagr$c;->D:Landroid/widget/ProgressBar;

    .line 319
    const v0, 0x7f0a013c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lagr$c;->E:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 322
    :pswitch_4
    iget-object v0, p0, Lagr;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040030

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 323
    const v0, 0x7f0a012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v1, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 324
    const v0, 0x7f0a0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->r:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0a0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->s:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f0a0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->t:Landroid/widget/ImageView;

    .line 327
    const v0, 0x7f0a012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->m:Landroid/view/View;

    .line 328
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagr$c;->j:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f0a012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->u:Landroid/widget/ImageView;

    .line 331
    const v0, 0x7f0a012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->v:Landroid/widget/ImageView;

    .line 332
    const v0, 0x7f0a0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagr$c;->w:Landroid/widget/ImageView;

    .line 333
    const v0, 0x7f0a0129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lagr$c;->g:Landroid/widget/LinearLayout;

    .line 334
    const v0, 0x7f0a0128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->f:Landroid/view/View;

    .line 335
    const v0, 0x7f0a012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lagr$c;->x:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 340
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 341
    iput-object p2, v1, Lagr$c;->b:Landroid/view/View;

    .line 342
    const v0, 0x7f0a0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagr$c;->c:Landroid/view/View;

    .line 343
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v1

    .line 351
    :goto_1
    if-nez v4, :cond_3

    .line 354
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

    .line 355
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagr$c;

    .line 346
    iget-object v1, v0, Lagr$c;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, v0, Lagr$c;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move-object v4, v0

    goto :goto_1

    .line 361
    :cond_3
    const/4 v0, 0x0

    .line 362
    iget-object v1, v4, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 364
    iget-object v0, v4, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lagr;->j:Landroid/os/Handler;

    iget-object v1, v4, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lagr;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lagr;->b:Ljava/util/Map;

    iget-object v1, v4, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagv;

    .line 369
    if-eqz v0, :cond_4

    .line 370
    invoke-interface {v0}, Lagv;->c()V

    .line 376
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lagr$c;->a(F)V

    iget-object v0, v4, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setLinkTextColor(I)V

    :cond_5
    iget-object v0, v4, Lagr$c;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, v4, Lagr$c;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_6
    invoke-virtual {v4}, Lagr$c;->a()V

    iget-object v0, v4, Lagr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lagr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_7
    iget-object v0, v4, Lagr$c;->B:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, v4, Lagr$c;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, v4, Lagr$c;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    iget-object v0, v4, Lagr$c;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_9
    iget-object v0, v4, Lagr$c;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lagr$c;->x:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_a
    iget-object v0, v4, Lagr$c;->L:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, v4, Lagr$c;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v4, Lagr$c;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lagr$c;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->L:Landroid/view/View;

    iget-object v1, v4, Lagr$c;->L:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080046

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v4, Lagr$c;->M:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->N:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->P:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTranslationY(F)V

    iget-object v0, v4, Lagr$c;->P:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->O:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->O:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v4, Lagr$c;->O:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lawf;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v4, Lagr$c;->Q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    :cond_b
    const/4 v0, 0x1

    move v3, v0

    .line 380
    :goto_2
    iput-object v2, v4, Lagr$c;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 381
    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 382
    instance-of v0, v2, Lakz;

    if-eqz v0, :cond_11

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    :goto_3
    instance-of v0, v1, Lale;

    if-eqz v0, :cond_12

    if-eqz v3, :cond_c

    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080010

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 383
    :cond_c
    :goto_4
    sget-object v0, Lagr$4;->a:[I

    add-int/lit8 v1, v5, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 413
    :cond_d
    :goto_5
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 414
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    .line 416
    if-eqz v1, :cond_e

    instance-of v3, v1, Lala;

    if-nez v3, :cond_e

    instance-of v3, v2, Lala;

    if-nez v3, :cond_e

    .line 417
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v6

    iget-wide v8, p0, Lagr;->k:J

    div-long/2addr v6, v8

    .line 418
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v8

    iget-wide v10, p0, Lagr;->k:J

    div-long/2addr v8, v10

    .line 419
    cmp-long v1, v8, v6

    if-nez v1, :cond_3b

    .line 420
    iget-object v1, v4, Lagr$c;->j:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    :cond_e
    :goto_6
    instance-of v1, v2, Lakz;

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    instance-of v0, v0, Lala;

    if-eqz v0, :cond_f

    .line 427
    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x41100000    # 9.0f

    iget-object v6, p0, Lagr;->d:Landroid/content/Context;

    invoke-static {v5, v6}, Lawf;->a(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 430
    :cond_f
    invoke-virtual {p0}, Lagr;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_10

    .line 431
    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, p0, Lagr;->d:Landroid/content/Context;

    invoke-static {v4, v5}, Lawf;->a(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 436
    :cond_10
    iget-object v0, p0, Lagr;->i:Larg;

    invoke-interface {v0, p2}, Larg;->d(Landroid/view/View;)V

    .line 437
    return-object p2

    .line 382
    :cond_11
    instance-of v0, v2, Lala;

    if-eqz v0, :cond_3d

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    goto/16 :goto_3

    :cond_12
    instance-of v0, v1, Lalj;

    if-eqz v0, :cond_14

    move-object v0, v1

    check-cast v0, Lalj;

    invoke-interface {v0}, Lalj;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, v1, Lalc;

    if-eqz v0, :cond_13

    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    iget-object v1, v4, Lagr$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080046

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_13
    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x7f080000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v4, Lagr$c;->f:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lagr$c;->f:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x7f080000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_14
    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, v1, Lalc;

    if-eqz v0, :cond_15

    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    iget-object v1, v4, Lagr$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080042

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_15
    iget-object v0, v4, Lagr$c;->f:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lagr$c;->f:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f08000f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :pswitch_5
    move-object v0, v2

    .line 385
    check-cast v0, Lald;

    iget-object v1, v4, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v1, v3}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v1, v4, Lagr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    invoke-static {v0, v4}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    goto/16 :goto_5

    .line 388
    :pswitch_6
    if-eqz v3, :cond_16

    iget-object v0, v4, Lagr$c;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->K:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->K:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    iget-object v0, v4, Lagr$c;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 391
    :pswitch_7
    if-eqz v3, :cond_17

    iget-object v0, v4, Lagr$c;->K:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_17
    iget-object v0, v4, Lagr$c;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    instance-of v1, v1, Lale;

    if-eqz v1, :cond_18

    iget-object v0, v4, Lagr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    const v3, 0x7f0c008a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lagr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lagr;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    instance-of v0, v0, Lakz;

    if-eqz v0, :cond_d

    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

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

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lagr$c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lagr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080048

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_1a
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    invoke-static {v0, v1}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lagr$c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lagr$c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :pswitch_8
    move-object v0, v2

    .line 394
    check-cast v0, Lcom/snapchat/android/model/Snap;

    if-eqz v3, :cond_1b

    iget-object v1, v4, Lagr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->k:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1b
    iget-object v1, v4, Lagr$c;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lagr$c;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lagr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    invoke-static {v0, v4}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->O()Z

    move-result v1

    if-nez v1, :cond_1c

    instance-of v1, v0, Laka;

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Laka;

    invoke-virtual {v1}, Laka;->S()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    iget-object v1, v4, Lagr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->o:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_8
    iget-object v1, v4, Lagr$c;->k:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of v1, v0, Laka;

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, Laka;

    invoke-virtual {v1}, Laka;->H()D

    move-result-wide v6

    invoke-virtual {v1}, Laka;->E()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1d

    iget-object v3, v4, Lagr$c;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Laka;->H()D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->ao()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, v4, Lagr$c;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v1, v4, Lagr$c;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lagr;->d:Landroid/content/Context;

    const v5, 0x7f0c0095

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->P()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v4, Lagr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const v1, 0x7f020035

    const v3, 0x7f020035

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setIconResources(II)V

    goto/16 :goto_5

    :cond_1e
    iget-object v1, v4, Lagr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setDisplayedIcon(Lcom/snapchat/android/model/Snap;)V

    iget-object v1, v4, Lagr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->o:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1f
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v3

    invoke-static {v1, v3}, Lauk;->e(Ljava/lang/String;Lakp;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v4, Lagr$c;->l:Landroid/widget/TextView;

    iget-object v5, p0, Lagr;->d:Landroid/content/Context;

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
    iget-object v1, v4, Lagr$c;->l:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :pswitch_9
    move-object v0, v2

    .line 397
    check-cast v0, Lalb;

    if-eqz v3, :cond_21

    iget-object v1, v4, Lagr$c;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->j:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->K:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_21
    iget-object v1, v4, Lagr$c;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Lalb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_a
    move-object v0, v2

    .line 400
    check-cast v0, Lale;

    if-eqz v3, :cond_d

    iget-object v1, v4, Lagr$c;->n:Lcom/snapchat/android/ui/ChatFragmentSnapIconView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ChatFragmentSnapIconView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->k:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lale;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v4, Lagr$c;->h:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v1, ""

    :goto_a
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lagr$c;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, v4, Lagr$c;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lagr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-static {v0, v4}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    iget-object v0, v4, Lagr$c;->b:Landroid/view/View;

    iget-object v1, p0, Lagr;->d:Landroid/content/Context;

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

    .line 403
    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v5, v4, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v5, v3}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v5, v4, Lagr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v5}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    invoke-static {v0, v4}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    if-eqz v3, :cond_23

    iget-object v3, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    iget-object v3, v4, Lagr$c;->p:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/snapchat/android/ui/ImageResourceView;->setAlpha(F)V

    iget-object v3, v4, Lagr$c;->q:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_23
    iget-object v3, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setChatMedia(Lcom/snapchat/android/model/chat/ChatMedia;)V

    iget-object v0, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setMinimumHeight(I)V

    goto/16 :goto_5

    :pswitch_c
    move-object v0, v2

    .line 406
    check-cast v0, Lalc;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v5, v4, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v5, v3}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v5, v4, Lagr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v5}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v5, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    iget-object v5, v4, Lagr$c;->L:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0, v4}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    invoke-static {v0, v4}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    iget-object v5, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v5, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setChatMedia(Lcom/snapchat/android/model/chat/ChatMedia;)V

    iget-object v5, p0, Lagr;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    invoke-virtual {v6, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setMinimumHeight(I)V

    iget-object v1, v4, Lagr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/snapchat/android/ui/TextureVideoView;->setShouldUseAsyncMediaPlayer(Z)V

    if-eqz v3, :cond_d

    iget-object v1, v4, Lagr$c;->p:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->q:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ImageResourceView;->setAlpha(F)V

    invoke-virtual {v0}, Lalc;->X()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lalc;->D()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->VIDEO_NO_SOUND:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_b
    iget-object v1, v4, Lagr$c;->z:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v3, Lagr$1;

    invoke-direct {v3, p0, v0}, Lagr$1;-><init>(Lagr;Z)V

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto/16 :goto_5

    :cond_24
    const/4 v0, 0x0

    goto :goto_b

    :pswitch_d
    move-object v0, v2

    .line 409
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v1, v4, Lagr$c;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, v0, v1, v3}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V

    iget-object v1, v4, Lagr$c;->r:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lagr$c;->s:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    iget-object v1, v4, Lagr$c;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    invoke-direct {p0, v0, v4}, Lagr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    const/4 v3, 0x0

    iget-object v1, v4, Lagr$c;->g:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, v4, Lagr$c;->f:Landroid/view/View;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->P()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_25
    const/16 v1, 0x8

    :goto_c
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->u:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v4, Lagr$c;->x:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v1, v3

    :goto_d
    iget-object v3, v4, Lagr$c;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v1, :cond_26

    iget-object v1, v4, Lagr$c;->g:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_26
    const/4 v1, 0x0

    invoke-static {v0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->P()Z

    move-result v3

    if-eqz v3, :cond_2b

    const v1, 0x7f020035

    move v3, v1

    :goto_e
    if-nez v3, :cond_2f

    iget-object v1, v4, Lagr$c;->u:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    iget-object v3, v4, Lagr$c;->r:Landroid/widget/TextView;

    invoke-static {v0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->p()Z

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v3, v5, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v4, Lagr$c;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lagr$c;->s:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_12
    invoke-static {v0, v4}, Lagr;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lagr$c;)V

    invoke-static {v0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v4, Lagr$c;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, Lagr$c;->w:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_27
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_28
    sget-object v1, Lagr$4;->b:[I

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

    iget-object v1, v4, Lagr$c;->x:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v1, v3

    goto/16 :goto_d

    :cond_2a
    invoke-static {}, Lakr;->ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lagr$2;

    invoke-direct {v1, p0, v0}, Lagr$2;-><init>(Lagr;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    goto/16 :goto_d

    :cond_2b
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()Z

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
    invoke-static {}, Lakr;->ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

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

    iget-object v1, v4, Lagr$c;->v:Landroid/widget/ImageView;

    iget-object v5, v4, Lagr$c;->w:Landroid/widget/ImageView;

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
    iget-object v1, v4, Lagr$c;->x:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->u:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v4, Lagr$c;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_f

    :cond_31
    const/4 v1, 0x0

    goto :goto_15

    :cond_32
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->P()Z

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_33
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_34
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()Z

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_36
    invoke-static {}, Lakr;->ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {v5, v6, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    :cond_39
    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_3a
    iget-object v1, v4, Lagr$c;->s:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_12

    .line 422
    :cond_3b
    iget-object v1, v4, Lagr$c;->j:Landroid/widget/TextView;

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

    .line 264
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

    .line 383
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

    .line 409
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
    .line 193
    const/4 v0, 0x5

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v6, p0, Lagr;->g:Ljava/util/List;

    monitor-enter v6

    .line 165
    :try_start_0
    iget-object v1, p0, Lagr;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 166
    iget-object v1, p0, Lagr;->g:Ljava/util/List;

    iget-object v2, p0, Lagr;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lagr;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 169
    iget-object v2, p0, Lagr;->g:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v3, v0, Lakw;

    if-eqz v3, :cond_2

    .line 170
    :goto_2
    if-nez v0, :cond_4

    .line 171
    iget-object v1, p0, Lagr;->c:Lahb;

    new-instance v0, Lahb$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lahb$a;-><init>(Lahb;JJ)V

    iput-object v0, v1, Lahb;->c:Lahb$a;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lahb;->b:J

    iget-object v0, v1, Lahb;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 175
    :cond_0
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 178
    return-void

    .line 169
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

    .line 173
    :cond_4
    iget-object v1, p0, Lagr;->c:Lahb;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    iget-boolean v0, v1, Lahb;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, v1, Lahb;->b:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_5

    iput-wide v2, v1, Lahb;->b:J

    iget-object v7, v1, Lahb;->e:Ljava/util/PriorityQueue;

    new-instance v0, Lahb$a;

    invoke-direct/range {v0 .. v5}, Lahb$a;-><init>(Lahb;JJ)V

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1, v4, v5}, Lahb;->a(J)V

    goto :goto_3

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
