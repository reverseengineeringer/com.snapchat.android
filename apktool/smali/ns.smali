.class public final Lns;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lns$1;
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

.method public static a(Laji;)Lhv;
    .locals 4
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->INFOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-static {p0, v1}, Lns;->a(Laji;Lcom/snapchat/android/ui/swipefilters/FilterPageType;)Loz;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 57
    iget-object v2, v1, Loz;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lhv;->SPEED:Lhv;

    goto :goto_0

    :sswitch_0
    const-string v3, "Speed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "Weather"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "Time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    sget-object v0, Lhv;->WEATHER:Lhv;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lhv;->TIMESTAMP:Lhv;

    goto :goto_0

    nop

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

.method private static a(Laji;Lcom/snapchat/android/ui/swipefilters/FilterPageType;)Loz;
    .locals 1
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/ui/swipefilters/FilterPageType;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    iget-object v0, v0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    iget-object v0, v0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    iget-object v0, v0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    iget-object v0, v0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Laji;Ljava/util/Map;)V
    .locals 1
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laji;",
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

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    invoke-static {v0, p1}, Lns;->a(Loz;Ljava/util/Map;)V

    .line 44
    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    invoke-static {v0, p1}, Lns;->a(Loz;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static a(Loz;Ljava/util/Map;)V
    .locals 2
    .param p0    # Loz;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loz;",
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

    iget-object v0, p0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :cond_1
    sget-object v0, Lns$1;->$SwitchMap$com$snapchat$android$ui$swipefilters$FilterPageType:[I

    iget-object v1, p0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No metric set for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 127
    :pswitch_1
    const-string v0, "filter_info"

    iget-object v1, p0, Loz;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :pswitch_2
    const-string v0, "filter_visual"

    iget-object v1, p0, Loz;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Laji;)Lhx;
    .locals 4
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->BACKGROUNDFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    invoke-static {p0, v1}, Lns;->a(Laji;Lcom/snapchat/android/ui/swipefilters/FilterPageType;)Loz;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 71
    iget-object v2, v1, Loz;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lhx;->GRAYSCALE:Lhx;

    goto :goto_0

    :sswitch_0
    const-string v3, "Greyscale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "Instasnap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "Miss Etikate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    sget-object v0, Lhx;->INSTASNAP:Lhx;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lhx;->MISS_ETIKATE:Lhx;

    goto :goto_0

    nop

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
