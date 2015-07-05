.class public final Lbmz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lbmz$1;

    invoke-direct {v0}, Lbmz$1;-><init>()V

    sput-object v0, Lbmz;->e:Ljava/util/Comparator;

    .line 40
    invoke-static {}, Lbmn;->a()Lbmn;

    invoke-static {}, Lbmn;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbmz;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lbmz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbmz;->b:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lbmz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbmz;->c:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lbmz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbmz;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lblu;)J
    .locals 2

    .prologue
    .line 70
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lblu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbmz;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lbma;)J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lbma;->c:Lblu;

    invoke-static {v0}, Lbmz;->a(Lblu;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lbmc;)J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lbmc;->f:Lblu;

    invoke-static {v0}, Lbmz;->a(Lblu;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lblh;Lbmc;Ljava/net/Proxy;)Lbma;
    .locals 2

    .prologue
    .line 260
    iget v0, p1, Lbmc;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    .line 261
    invoke-interface {p0, p2, p1}, Lblh;->b(Ljava/net/Proxy;Lbmc;)Lbma;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p2, p1}, Lblh;->a(Ljava/net/Proxy;Lbmc;)Lbma;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lblu;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lblu;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lblm;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 217
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v0, p0, Lblu;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v8, v0, 0x2

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_1

    .line 219
    invoke-virtual {p0, v6}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0, v6}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 224
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 226
    const-string v2, " "

    invoke-static {v0, v1, v2}, Lbmt;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 229
    invoke-static {v0, v2}, Lbmt;->a(Ljava/lang/String;I)I

    move-result v2

    .line 235
    const/4 v1, 0x1

    const-string v3, "realm=\""

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    add-int/lit8 v1, v2, 0x7

    .line 241
    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lbmt;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 242
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 243
    add-int/lit8 v1, v2, 0x1

    .line 244
    const-string v2, ","

    invoke-static {v0, v1, v2}, Lbmt;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 246
    invoke-static {v0, v1}, Lbmt;->a(Ljava/lang/String;I)I

    move-result v1

    .line 247
    new-instance v2, Lblm;

    invoke-direct {v2, v9, v3}, Lblm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 250
    :cond_1
    return-object v7
.end method

.method public static a(Lbma$a;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbma$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    const-string v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lbma$a;->d:Lblu$a;

    invoke-virtual {v2, v1, v0}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_4

    if-lez v3, :cond_3

    const-string v2, "; "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_5
    return-void
.end method

.method public static a(Lbmc;Lblu;Lbma;)Z
    .locals 4

    .prologue
    .line 138
    invoke-static {p0}, Lbmz;->d(Lbmc;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-virtual {p1, v0}, Lblu;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p2, Lbma;->c:Lblu;

    invoke-virtual {v3, v0}, Lblu;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lbmp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 197
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 74
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-wide v0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static b(Lblu;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lblu;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Lbmz;->e:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 90
    const/4 v0, 0x0

    iget-object v1, p0, Lblu;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v3, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 91
    invoke-virtual {p0, v1}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {p0, v1}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lbmc;)Z
    .locals 2

    .prologue
    .line 149
    invoke-static {p0}, Lbmz;->d(Lbmc;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Lbmc;)Lblu;
    .locals 7

    .prologue
    .line 174
    invoke-static {p0}, Lbmz;->d(Lbmc;)Ljava/util/Set;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lblu$a;

    invoke-direct {v0}, Lblu$a;-><init>()V

    invoke-virtual {v0}, Lblu$a;->a()Lblu;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lbmc;->h:Lbmc;

    iget-object v0, v0, Lbmc;->a:Lbma;

    iget-object v2, v0, Lbma;->c:Lblu;

    .line 182
    new-instance v3, Lblu$a;

    invoke-direct {v3}, Lblu$a;-><init>()V

    .line 183
    const/4 v0, 0x0

    iget-object v4, v2, Lblu;->a:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    :goto_1
    if-ge v0, v4, :cond_2

    .line 184
    invoke-virtual {v2, v0}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    invoke-virtual {v2, v0}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 183
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v3}, Lblu$a;->a()Lblu;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Lbmc;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmc;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 154
    iget-object v4, p0, Lbmc;->f:Lblu;

    .line 155
    iget-object v1, v4, Lblu;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v5, v1, 0x2

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    .line 156
    const-string v3, "Vary"

    invoke-virtual {v4, v1}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {v4, v1}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    new-instance v0, Ljava/util/TreeSet;

    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 162
    :cond_0
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v8, v6, v3

    .line 163
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_2
    return-object v0
.end method
