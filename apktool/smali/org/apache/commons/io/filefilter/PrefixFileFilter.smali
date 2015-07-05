.class public Lorg/apache/commons/io/filefilter/PrefixFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;

.field private final prefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The prefix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 76
    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :cond_1
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/io/IOCase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of prefixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 139
    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :cond_1
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 140
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    .line 90
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array of prefixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :cond_1
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 111
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 152
    iget-object v6, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    const/4 v0, 0x1

    .line 156
    :cond_0
    return v0

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 169
    iget-object v5, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v5, p2, v4}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_0
    return v0

    .line 168
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 188
    if-lez v0, :cond_0

    .line 189
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
