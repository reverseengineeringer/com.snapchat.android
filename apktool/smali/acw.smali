.class public final Lacw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lacw;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lacx;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lbgk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lacw;

    invoke-direct {v0}, Lacw;-><init>()V

    sput-object v0, Lacw;->b:Lacw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-direct {p0, v0}, Lacw;-><init>(Lbgk;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Lbgk;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacw;->a:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lacw;->c:Lbgk;

    .line 44
    return-void
.end method

.method public static a()Lacw;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lacw;->b:Lacw;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lacw;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;

    .line 59
    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->a:Ljava/lang/String;

    iget-object v4, v1, Lacx;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    :cond_1
    new-instance v1, Lacx;

    iget-object v3, v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lacx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lacw;->a:Ljava/util/Map;

    iget-object v4, v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    new-instance v3, Lcgg;

    iget-wide v4, v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->c:J

    invoke-direct {v3, v4, v5}, Lcgg;-><init>(J)V

    invoke-virtual {v1, v3}, Lacx;->a(Lcgg;)V

    goto :goto_1

    .line 67
    :cond_3
    iget-object v0, p0, Lacw;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lacx;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lacw;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacx;

    return-object v0
.end method
