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
.field private final b:Lakk;

.field private final c:Laur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/database/table/StoryMetadataTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/StoryMetadataTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable;->a:Lcom/snapchat/android/database/table/StoryMetadataTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    new-instance v1, Laur;

    invoke-direct {v1}, Laur;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/database/table/StoryMetadataTable;-><init>(Lakk;Laur;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Lakk;Laur;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->b:Lakk;

    .line 85
    iput-object p2, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Laur;

    .line 86
    return-void
.end method

.method public static a()Lcom/snapchat/android/database/table/StoryMetadataTable;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable;->a:Lcom/snapchat/android/database/table/StoryMetadataTable;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 30
    check-cast p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->b:Lbks;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->c:Lbkn;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->b:Lbks;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Laur;

    iget-object v1, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->b:Lbks;

    const-class v2, Lbks;

    invoke-virtual {v0, v1, v2}, Laur;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->c:Lbkn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Laur;

    iget-object v2, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->c:Lbkn;

    const-class v3, Lbkn;

    invoke-virtual {v1, v2, v3}, Laur;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Labc;

    invoke-direct {v2}, Labc;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->ID:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    iget-object v4, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v3, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->SERIALIZED_AD_METADATA:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v2, v3, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->AD_INTERVAL_INDEX:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    iget v3, p1, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->d:I

    invoke-virtual {v2, v0, v3}, Labc;->a(Laav;I)Labc;

    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->THUMBNAILS:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v2, v0, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    iget-object v0, v2, Labc;->a:Landroid/content/ContentValues;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 30
    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->ID:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->SERIALIZED_AD_METADATA:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->AD_INTERVAL_INDEX:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v1, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->THUMBNAILS:Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Laur;

    const-class v6, Lbks;

    invoke-virtual {v1, v0, v6, v7}, Laur;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbks;

    move-object v1, v0

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->c:Laur;

    const-class v6, Lbkn;

    invoke-virtual {v0, v5, v6, v7}, Laur;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkn;

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v2, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/snapchat/android/database/table/StoryMetadataTable$a;-><init>(Ljava/lang/String;Lbks;Lbkn;I)V

    :cond_0
    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/database/table/StoryMetadataTable$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->b:Lakk;

    invoke-virtual {v0}, Lakk;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 171
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->k()Lbks;

    move-result-object v3

    .line 172
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->b()I

    move-result v4

    .line 173
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->j()Lbkn;

    move-result-object v5

    .line 174
    if-nez v3, :cond_1

    if-eqz v5, :cond_0

    .line 175
    :cond_1
    new-instance v6, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v3, v5, v4}, Lcom/snapchat/android/database/table/StoryMetadataTable$a;-><init>(Ljava/lang/String;Lbks;Lbkn;I)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_2
    return-object v1
.end method

.method public final b(Lakp;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/database/table/StoryMetadataTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;

    .line 187
    iget-object v2, p0, Lcom/snapchat/android/database/table/StoryMetadataTable;->b:Lakk;

    iget-object v3, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    .line 189
    iget-object v3, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->b:Lbks;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/StoryCollection;->a(Lbks;)V

    .line 190
    iget v3, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->d:I

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/StoryCollection;->a(I)V

    .line 191
    iget-object v0, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->c:Lbkn;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/StoryCollection;->a(Lbkn;)V

    goto :goto_0

    .line 193
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/snapchat/android/database/table/StoryMetadataTable$a;->a:Ljava/lang/String;

    aput-object v0, v2, v3

    goto :goto_0

    .line 198
    :cond_1
    return-void
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;->values()[Lcom/snapchat/android/database/table/StoryMetadataTable$StoryMetadataTableSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "StoryMetadata"

    return-object v0
.end method
