.class public final Laft;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laft$a;
    }
.end annotation


# instance fields
.field final a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

.field private final b:Lpm;

.field private final c:Lalt;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lpm;->a()Lpm;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    invoke-direct {v1}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;-><init>()V

    invoke-static {}, Lalt;->a()Lalt;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laft;-><init>(Lpm;Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;Lalt;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Lpm;Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;Lalt;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Laft;->b:Lpm;

    .line 42
    iput-object p2, p0, Laft;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    .line 43
    iput-object p3, p0, Laft;->c:Lalt;

    .line 44
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)Lcom/snapchat/android/discover/ui/media/VideoProperties;
    .locals 14
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbkz;",
            ">;)",
            "Lcom/snapchat/android/discover/ui/media/VideoProperties;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    new-instance v0, Laft$a;

    invoke-direct {v0}, Laft$a;-><init>()V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    move-object v1, v4

    .line 94
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 95
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkz;

    .line 96
    invoke-virtual {v0}, Lbkz;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v5, "MP4"

    invoke-virtual {v0}, Lbkz;->f()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 102
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbkz;->b()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lbkz;->c()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Lbkz;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lbkz;->c()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Laft;->b:Lpm;

    iget v7, v7, Lpm;->mMaxVideoHeight:I

    iget-object v10, p0, Laft;->b:Lpm;

    iget v10, v10, Lpm;->mMaxVideoWidth:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v10, p0, Laft;->b:Lpm;

    iget v10, v10, Lpm;->mMaxVideoHeight:I

    iget-object v11, p0, Laft;->b:Lpm;

    iget v11, v11, Lpm;->mMaxVideoWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-gt v5, v7, :cond_1

    if-gt v6, v10, :cond_1

    move v5, v8

    :goto_1
    if-eqz v5, :cond_7

    iget-object v5, p0, Laft;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;

    iget-object v5, v5, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lakn;

    const-string v6, "STREAMING"

    const-string v7, "BANDWIDTH_USAGE_FACTOR"

    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v5, v6, v7, v10}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    iget-object v10, p0, Laft;->c:Lalt;

    invoke-virtual {v10}, Lalt;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lalt;->a(Ljava/lang/String;)Lamf;

    move-result-object v6

    invoke-virtual {v6}, Lamf;->a()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-eqz v11, :cond_2

    :goto_2
    long-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Lbkz;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v5, :cond_4

    move v5, v8

    :goto_3
    if-eqz v5, :cond_7

    .line 94
    :cond_0
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    move v5, v3

    .line 102
    goto :goto_1

    :cond_2
    iget-object v6, v10, Lalt;->a:Lama;

    invoke-virtual {v6}, Lama;->e()Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/32 v6, 0x2dc6c0

    goto :goto_2

    :cond_3
    const-wide/32 v6, 0x927c0

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    .line 109
    :cond_5
    if-eqz v1, :cond_6

    .line 110
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v3

    .line 111
    new-instance v4, Lcom/snapchat/android/discover/ui/media/VideoProperties;

    invoke-virtual {v1}, Lbkz;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;->MP4:Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;

    invoke-virtual {v1}, Lbkz;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lbkz;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/snapchat/android/discover/ui/media/VideoProperties;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/ui/media/VideoProperties$Protocol;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 114
    :cond_6
    return-object v4

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method
