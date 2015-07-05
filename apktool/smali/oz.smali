.class public final Loz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loz$b;,
        Loz$a;
    }
.end annotation


# static fields
.field private static final sInstance:Loz;


# instance fields
.field private mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Loz$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStudySettings:Lajt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Loz;

    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v1

    invoke-direct {v0, v1}, Loz;-><init>(Lajt;)V

    sput-object v0, Loz;->sInstance:Loz;

    return-void
.end method

.method private constructor <init>(Lajt;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Loz;->mStudySettings:Lajt;

    .line 34
    new-instance v0, Loz$b;

    const-string v1, "stories_delta_response"

    new-instance v2, Loz$a;

    const-string v3, "DELTA_RESPONSE"

    const-string v4, "FRIENDS_STORY_DELTA"

    const-string v5, "on"

    invoke-direct {v2, v3, v4, v5}, Loz$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Loz$b;-><init>(Ljava/lang/String;Loz$a;)V

    .line 39
    new-instance v1, Loz$b;

    const-string v2, "conversations_delta_response"

    new-instance v3, Loz$a;

    const-string v4, "DELTA_RESPONSE"

    const-string v5, "CONVERSATIONS_DELTA"

    const-string v6, "on"

    invoke-direct {v3, v4, v5, v6}, Loz$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Loz$b;-><init>(Ljava/lang/String;Loz$a;)V

    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Loz;->mFeatures:Ljava/util/Map;

    .line 45
    iget-object v2, p0, Loz;->mFeatures:Ljava/util/Map;

    const-string v3, "/loq/all_updates"

    const/4 v4, 0x2

    new-array v4, v4, [Loz$b;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v2, p0, Loz;->mFeatures:Ljava/util/Map;

    const-string v3, "/loq/conversations"

    new-array v4, v8, [Loz$b;

    aput-object v1, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Loz;->mFeatures:Ljava/util/Map;

    const-string v2, "/bq/stories"

    new-array v3, v8, [Loz$b;

    aput-object v0, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static a()Loz;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Loz;->sInstance:Loz;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 104
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 105
    iget-object v0, p0, Loz;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 106
    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loz$b;

    .line 108
    iget-object v1, p0, Loz;->mStudySettings:Lajt;

    iget-object v5, v0, Loz$b;->mABTestForFeature:Loz$a;

    if-nez v5, :cond_1

    iget-boolean v1, v0, Loz$b;->mOnByDefault:Z

    :goto_1
    if-eqz v1, :cond_0

    .line 109
    iget-object v0, v0, Loz$b;->mFeatureName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v5, v0, Loz$b;->mABTestForFeature:Loz$a;

    iget-object v5, v5, Loz$a;->studyId:Ljava/lang/String;

    iget-object v6, v0, Loz$b;->mABTestForFeature:Loz$a;

    iget-object v6, v6, Loz$a;->variable:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v5, v0, Loz$b;->mABTestForFeature:Loz$a;

    iget-object v5, v5, Loz$a;->onValue:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 113
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
