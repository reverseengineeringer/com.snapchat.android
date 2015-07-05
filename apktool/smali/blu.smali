.class public final Lblu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblu$a;
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lblu$a;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lblu$a;->a:Ljava/util/List;

    iget-object v1, p1, Lblu$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lblu;->a:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lblu$a;B)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lblu;-><init>(Lblu$a;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lblu;->a:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Lblu;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    .line 154
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 155
    aget-object v3, v0, v1

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 160
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 161
    aget-object v3, v0, v1

    .line 162
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v0, v4

    .line 163
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_3

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 168
    :cond_4
    new-instance v1, Lblu;

    invoke-direct {v1, v0}, Lblu;-><init>([Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    mul-int/lit8 v0, p1, 0x2

    .line 81
    if-ltz v0, :cond_0

    iget-object v1, p0, Lblu;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lblu;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lblu;->a:[Ljava/lang/String;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 99
    const/4 v0, 0x0

    iget-object v2, p0, Lblu;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lblu$a;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lblu$a;

    invoke-direct {v0}, Lblu$a;-><init>()V

    .line 121
    iget-object v1, v0, Lblu$a;->a:Ljava/util/List;

    iget-object v2, p0, Lblu;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 90
    if-ltz v0, :cond_0

    iget-object v1, p0, Lblu;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lblu;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lblu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    invoke-static {v0}, Lbmv;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x0

    iget-object v2, p0, Lblu;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_2

    .line 109
    invoke-virtual {p0, v1}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    :cond_0
    invoke-virtual {p0, v1}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    if-eqz v0, :cond_3

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 116
    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const/4 v0, 0x0

    iget-object v2, p0, Lblu;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
