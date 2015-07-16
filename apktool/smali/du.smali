.class public final Ldu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation


# static fields
.field static final a:Lck$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 3458
    sget-object v0, Lcy;->a:Lck;

    const-string v1, "="

    new-instance v2, Lck$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lck$a;-><init>(Lck;Ljava/lang/String;B)V

    sput-object v2, Ldu;->a:Lck$a;

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 205
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lcx;->a(ILjava/lang/String;)I

    .line 206
    add-int/lit8 v0, p0, 0x1

    .line 211
    :goto_0
    return v0

    .line 208
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 209
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_0

    .line 211
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static a(Lef;)Lef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lef",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lef",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ldu$1;

    invoke-direct {v0, p0}, Ldu$1;-><init>(Lef;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3465
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcy;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3467
    sget-object v1, Ldu;->a:Lck$a;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lck$a;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    .line 3468
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3449
    if-ne p0, p1, :cond_0

    .line 3450
    const/4 v0, 0x1

    .line 3455
    :goto_0
    return v0

    .line 3451
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3452
    check-cast p1, Ljava/util/Map;

    .line 3453
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static c()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
