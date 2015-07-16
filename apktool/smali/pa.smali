.class public final Lpa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Loz;

.field public f:Loz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lpa;->b:I

    .line 20
    iput v0, p0, Lpa;->c:I

    .line 21
    iput v0, p0, Lpa;->d:I

    .line 22
    new-instance v0, Loz;

    invoke-direct {v0}, Loz;-><init>()V

    iput-object v0, p0, Lpa;->e:Loz;

    .line 23
    new-instance v0, Loz;

    invoke-direct {v0}, Loz;-><init>()V

    iput-object v0, p0, Lpa;->f:Loz;

    return-void
.end method


# virtual methods
.method public final a(Lasm;Loz;)V
    .locals 4
    .param p1    # Lasm;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Loz;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Lasm;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p2, Loz;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    instance-of v3, p1, Lata;

    if-eqz v3, :cond_1

    iget v0, p0, Lpa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpa;->d:I

    move-object v0, p1

    check-cast v0, Lata;

    iget-object v0, v0, Lata;->b:Lajr;

    iget-object v0, v0, Lajr;->mFilterId:Ljava/lang/String;

    :cond_1
    iput-object v0, p2, Loz;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lasm;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Loz;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lasm;->b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    iput-object v0, p2, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 107
    iget-object v0, p2, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    sget-object v3, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->GEOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 108
    :goto_1
    iget v3, p0, Lpa;->a:I

    if-nez v3, :cond_3

    .line 109
    :goto_2
    iget-object v2, p2, Loz;->a:Ljava/lang/String;

    iget-object v3, p2, Loz;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 107
    goto :goto_1

    :cond_3
    move v1, v2

    .line 108
    goto :goto_2
.end method
