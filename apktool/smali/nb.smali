.class public final Lnb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterMetricsProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Laim;)Lhm;
    .locals 5
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 50
    const-string v1, "FilterMetricsProvider"

    const-string v3, "Snapbryo was null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->INFOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-static {p0, v1}, Lnb;->a(Laim;Lcom/snapchat/android/ui/swipefilters/FilterPageType;)Loi;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 57
    iget-object v3, v1, Loi;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "FilterMetricsProvider"

    const-string v3, "Conversion to FilterInfoType available"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "Speed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v4, "Weather"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "Time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_0
    sget-object v0, Lhm;->SPEED:Lhm;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lhm;->WEATHER:Lhm;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lhm;->TIMESTAMP:Lhm;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x53db302c -> :sswitch_1
        0x27c6ed -> :sswitch_2
        0x4c61027 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Laim;Lcom/snapchat/android/ui/swipefilters/FilterPageType;)Loi;
    .locals 1
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/ui/swipefilters/FilterPageType;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    iget-object v0, v0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    iget-object v0, v0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    iget-object v0, v0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    iget-object v0, v0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Laim;Ljava/util/Map;)V
    .locals 3
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laim;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const-string v0, "FilterMetricsProvider"

    const-string v1, "Snapbryo was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    invoke-static {v0, p1}, Lnb;->a(Loi;Ljava/util/Map;)V

    .line 44
    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    invoke-static {v0, p1}, Lnb;->a(Loi;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static a(Loi;Ljava/util/Map;)V
    .locals 3
    .param p0    # Loi;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loi;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p0, :cond_0

    iget-object v0, p0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :cond_1
    sget-object v0, Lnb$1;->$SwitchMap$com$snapchat$android$ui$swipefilters$FilterPageType:[I

    iget-object v1, p0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    const-string v0, "FilterMetricsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No metric set for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :pswitch_1
    const-string v0, "filter_info"

    iget-object v1, p0, Loi;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :pswitch_2
    const-string v0, "filter_visual"

    iget-object v1, p0, Loi;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Laim;)Lho;
    .locals 5
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 63
    if-nez p0, :cond_1

    .line 64
    const-string v1, "FilterMetricsProvider"

    const-string v3, "Snapbryo was null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->BACKGROUNDFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-static {p0, v1}, Lnb;->a(Laim;Lcom/snapchat/android/ui/swipefilters/FilterPageType;)Loi;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 71
    iget-object v3, v1, Loi;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "FilterMetricsProvider"

    const-string v3, "Conversion to FilterVisualType available"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "Greyscale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v4, "Instasnap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "Miss Etikate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_0
    sget-object v0, Lho;->GRAYSCALE:Lho;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lho;->INSTASNAP:Lho;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lho;->MISS_ETIKATE:Lho;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3be8c443 -> :sswitch_2
        0x151391ab -> :sswitch_0
        0x79308d05 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
