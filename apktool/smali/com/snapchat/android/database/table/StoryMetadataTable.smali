.class public final Lcom/snapchat/android/database/table/StoryMetadataTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;,
        Lcom/snapchat/android/database/table/StoryMetadataTable$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/database/table/StoryMetadataTable$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/database/table/StoryMetadataTable;


# instance fields
.field private final b:Lajq;

.field private final c:Latt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/database/table/StoryMetadataTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/StoryMetadataTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable;->a:Lcom/snapchat/android/database/table/StoryMetadataTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    new-instance v1, Latt;

    invoke-direct {v1}, Latt;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/database/table/StoryMetadataTable;-><init>(Lajq;Latt;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Lajq;Latt;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->b:Lajq;

    .line 81
    iput-object p2, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Latt;

    .line 82
    return-void
.end method

.method public static a()Lcom/snapchat/android/database/table/StoryMetadataTable;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable;->a:Lcom/snapchat/android/database/table/StoryMetadataTable;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 29
    check-cast p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->b:Lbjr;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Latt;

    iget-object v1, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->b:Lbjr;

    const-class v2, Lbjr;

    invoke-virtual {v0, v1, v2}, Latt;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Laad;

    invoke-direct {v1}, Laad;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->ID:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    iget-object v3, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v2, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->SERIALIZED_AD_METADATA:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v1, v2, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->AD_INTERVAL_INDEX:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    iget v2, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->c:I

    invoke-virtual {v1, v0, v2}, Laad;->a(Lzw;I)Laad;

    iget-object v0, v1, Laad;->a:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 29
    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->ID:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->SERIALIZED_AD_METADATA:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->AD_INTERVAL_INDEX:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Latt;

    const-class v4, Lbjr;

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5}, Latt;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    invoke-direct {v1, v2, v0, v3}, Lcom/snapchat/android/database/table/StoryMetadataTable$a;-><init>(Ljava/lang/String;Lbjr;I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
            "Lcom/snapchat/android/database/table/StoryMetadataTable$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->b:Lajq;

    invoke-virtual {v0}, Lajq;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 153
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->s()Lbjr;

    move-result-object v3

    .line 154
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->d()I

    move-result v4

    .line 155
    if-eqz v3, :cond_0

    .line 156
    new-instance v5, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3, v4}, Lcom/snapchat/android/database/table/StoryMetadataTable$a;-><init>(Ljava/lang/String;Lbjr;I)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    return-object v1
.end method

.method public final b(Lajv;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/database/table/StoryMetadataTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    .line 167
    iget-object v2, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->b:Lajq;

    iget-object v3, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_0

    .line 169
    iget-object v3, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->b:Lbjr;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/StoryCollection;->a(Lbjr;)V

    .line 170
    iget v0, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->c:I

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    goto :goto_0

    .line 172
    :cond_0
    const-string v2, "StoryMetadataTable"

    const-string v3, "Skipping application of ad metadata for %s since it could not be found."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->a:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->values()[Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "StoryMetadata"

    return-object v0
.end method
