.class public final Loj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Loi;

.field public f:Loi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Loj;->b:I

    .line 20
    iput v0, p0, Loj;->c:I

    .line 21
    iput v0, p0, Loj;->d:I

    .line 22
    new-instance v0, Loi;

    invoke-direct {v0}, Loi;-><init>()V

    iput-object v0, p0, Loj;->e:Loi;

    .line 23
    new-instance v0, Loi;

    invoke-direct {v0}, Loi;-><init>()V

    iput-object v0, p0, Loj;->f:Loi;

    return-void
.end method


# virtual methods
.method public final a(Larn;Loi;)V
    .locals 4
    .param p1    # Larn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Loi;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Larn;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p2, Loi;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    instance-of v3, p1, Lasb;

    if-eqz v3, :cond_1

    iget v0, p0, Loj;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loj;->d:I

    move-object v0, p1

    check-cast v0, Lasb;

    iget-object v0, v0, Lasb;->b:Laiv;

    iget-object v0, v0, Laiv;->mFilterId:Ljava/lang/String;

    :cond_1
    iput-object v0, p2, Loi;->b:Ljava/lang/String;

    invoke-virtual {p1}, Larn;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Loi;->a:Ljava/lang/String;

    invoke-virtual {p1}, Larn;->b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    iput-object v0, p2, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 107
    iget-object v0, p2, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    sget-object v3, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->GEOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 108
    :goto_1
    iget v3, p0, Loj;->a:I

    if-nez v3, :cond_3

    .line 109
    :goto_2
    iget-object v2, p2, Loi;->a:Ljava/lang/String;

    iget-object v3, p2, Loi;->b:Ljava/lang/String;

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
