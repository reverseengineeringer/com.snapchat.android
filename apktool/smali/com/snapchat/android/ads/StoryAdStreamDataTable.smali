.class public final Lcom/snapchat/android/ads/StoryAdStreamDataTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;,
        Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/snapchat/android/ads/StoryAdStreamDataTable;


# instance fields
.field private final NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mAdStreamManager:Lmv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;

    invoke-direct {v0}, Lcom/snapchat/android/ads/StoryAdStreamDataTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->INSTANCE:Lcom/snapchat/android/ads/StoryAdStreamDataTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lmv;->a()Lmv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ads/StoryAdStreamDataTable;-><init>(Lmv;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Lmv;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 25
    const-string v0, "StoryAdStreamDataTable"

    iput-object v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "StoryAdStreamData"

    iput-object v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->NAME:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->mAdStreamManager:Lmv;

    .line 55
    return-void
.end method

.method public static a()Lcom/snapchat/android/ads/StoryAdStreamDataTable;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->INSTANCE:Lcom/snapchat/android/ads/StoryAdStreamDataTable;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 24
    check-cast p1, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laad;

    invoke-direct {v0}, Laad;-><init>()V

    sget-object v1, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->STREAM_KEY:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    iget-object v2, p1, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;->streamKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v1, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->NEXT_UNVIEWED_POSITION:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    iget v2, p1, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;->nextUnviewedPosition:I

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;I)Laad;

    iget-object v0, v0, Laad;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->STREAM_KEY:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->NEXT_UNVIEWED_POSITION:Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->mAdStreamManager:Lmv;

    iget-object v3, v0, Lmv;->mStreams:Ljava/util/Map;

    .line 123
    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmr;

    .line 126
    if-eqz v1, :cond_0

    .line 127
    new-instance v5, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;

    invoke-virtual {v1}, Lmr;->a()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    return-object v2
.end method

.method public final b(Lajv;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-static {}, Ldl;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;

    .line 149
    iget v3, v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;->nextUnviewedPosition:I

    invoke-static {v3}, Lmr;->a(I)Lmr;

    move-result-object v3

    .line 150
    iget-object v0, v0, Lcom/snapchat/android/ads/StoryAdStreamDataTable$a;->streamKey:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ads/StoryAdStreamDataTable;->mAdStreamManager:Lmv;

    iput-object v1, v0, Lmv;->mStreams:Ljava/util/Map;

    .line 154
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;->values()[Lcom/snapchat/android/ads/StoryAdStreamDataTable$StoryAdStreamDataTableSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "StoryAdStreamData"

    return-object v0
.end method
