.class public final Lacy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacy$1;
    }
.end annotation


# static fields
.field private static final d:Lacy;


# instance fields
.field public final a:Laej;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lade;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Laed;

.field private final e:Lcom/squareup/otto/Bus;

.field private final f:Lalw;

.field private g:Ladf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lacy;

    invoke-direct {v0}, Lacy;-><init>()V

    sput-object v0, Lacy;->d:Lacy;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Laej;->a()Laej;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ladh;

    invoke-direct {v0}, Ladh;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ladi;

    invoke-direct {v0}, Ladi;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ladg;

    invoke-direct {v0}, Ladg;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laed;->a()Laed;

    move-result-object v3

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lacy;-><init>(Laej;Ljava/util/List;Laed;Lcom/squareup/otto/Bus;Lalw;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Laej;Ljava/util/List;Laed;Lcom/squareup/otto/Bus;Lalw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laej;",
            "Ljava/util/List",
            "<",
            "Lade;",
            ">;",
            "Laed;",
            "Lcom/squareup/otto/Bus;",
            "Lalw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ladf;

    invoke-direct {v0}, Ladf;-><init>()V

    iput-object v0, p0, Lacy;->g:Ladf;

    .line 65
    iput-object p2, p0, Lacy;->b:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lacy;->a:Laej;

    .line 67
    iput-object p3, p0, Lacy;->c:Laed;

    .line 68
    iput-object p4, p0, Lacy;->e:Lcom/squareup/otto/Bus;

    .line 69
    iput-object p5, p0, Lacy;->f:Lalw;

    .line 70
    return-void
.end method

.method public static a()Lacy;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lacy;->d:Lacy;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 189
    new-instance v0, Lacu;

    invoke-direct {v0, p0}, Lacu;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lacu;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lacy;->g:Ladf;

    iget-object v0, v0, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ladf;

    iget-object v1, p0, Lacy;->g:Ladf;

    iget-object v1, v1, Ladf;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-direct {v0, v1, p2}, Ladf;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 102
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lacy;->g:Ladf;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    .line 103
    iput-object v0, p0, Lacy;->g:Ladf;

    .line 105
    iget-object v0, p0, Lacy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lade;

    .line 106
    iget-object v2, p0, Lacy;->g:Ladf;

    invoke-interface {v0, v2}, Lade;->a(Ladf;)V

    goto :goto_1

    .line 100
    :cond_0
    new-instance v0, Ladf;

    invoke-direct {v0, p1, p2}, Ladf;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lacy;->f:Lalw;

    invoke-virtual {v0}, Lalw;->b()Lalv;

    move-result-object v0

    .line 114
    if-eqz p2, :cond_4

    .line 116
    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lalv;->a(Ljava/lang/String;)Lalv;

    move-result-object v0

    iget-object v1, p2, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lalv;->a(Ljava/lang/String;)Lalv;

    move-result-object v0

    .line 125
    :goto_2
    iget-object v1, p0, Lacy;->f:Lalw;

    invoke-virtual {v1, v0}, Lalw;->a(Lalv;)V

    .line 126
    if-eqz p2, :cond_2

    .line 127
    iget-object v0, p0, Lacy;->f:Lalw;

    iget-object v0, v0, Lalw;->a:Lamd;

    const-string v1, "DISCOVER"

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lamd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    if-eqz p1, :cond_3

    .line 131
    iget-object v0, p0, Lacy;->f:Lalw;

    iget-object v0, v0, Lalw;->a:Lamd;

    const-string v1, "DISCOVER"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lamd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_3
    iget-object v0, p0, Lacy;->a:Laej;

    invoke-virtual {v0}, Laej;->c()V

    .line 136
    return-void

    .line 117
    :cond_4
    if-eqz p1, :cond_5

    .line 120
    iget-object v1, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lalv;->a(Ljava/lang/String;)Lalv;

    move-result-object v0

    goto :goto_2

    .line 123
    :cond_5
    new-instance v0, Lalv;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "DISCOVER"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lalv;-><init>([Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lacy;->e:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lacy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lade;

    .line 80
    invoke-interface {v0}, Lade;->a()V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lacy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lade;

    .line 154
    invoke-interface {v0}, Lade;->c()V

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public final onUserLoadedEvent(Lbfq;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lacy;->a:Laej;

    invoke-virtual {v0}, Laej;->e()V

    .line 236
    iget-object v0, p0, Lacy;->a:Laej;

    invoke-virtual {v0}, Laej;->b()V

    .line 237
    return-void
.end method
