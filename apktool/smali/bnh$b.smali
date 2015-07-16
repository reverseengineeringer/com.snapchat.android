.class final Lbnh$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Lbnh$a;

.field g:J

.field final synthetic h:Lbnh;


# direct methods
.method private constructor <init>(Lbnh;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 945
    iput-object p1, p0, Lbnh$b;->h:Lbnh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p2, p0, Lbnh$b;->a:Ljava/lang/String;

    .line 948
    invoke-static {p1}, Lbnh;->h(Lbnh;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lbnh$b;->b:[J

    .line 949
    invoke-static {p1}, Lbnh;->h(Lbnh;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lbnh$b;->c:[Ljava/io/File;

    .line 950
    invoke-static {p1}, Lbnh;->h(Lbnh;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lbnh$b;->d:[Ljava/io/File;

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 954
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 955
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lbnh;->h(Lbnh;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 956
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    iget-object v3, p0, Lbnh$b;->c:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lbnh;->j(Lbnh;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 958
    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget-object v3, p0, Lbnh$b;->d:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lbnh;->j(Lbnh;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 960
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lbnh;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0, p1, p2}, Lbnh$b;-><init>(Lbnh;Ljava/lang/String;)V

    return-void
.end method

.method private static b([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 987
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()Lbnh$c;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 996
    iget-object v1, p0, Lbnh$b;->h:Lbnh;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 998
    :cond_0
    iget-object v1, p0, Lbnh$b;->h:Lbnh;

    invoke-static {v1}, Lbnh;->h(Lbnh;)I

    move-result v1

    new-array v6, v1, [Lcbk;

    .line 999
    iget-object v1, p0, Lbnh$b;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    move v1, v0

    .line 1001
    :goto_0
    :try_start_0
    iget-object v2, p0, Lbnh$b;->h:Lbnh;

    invoke-static {v2}, Lbnh;->h(Lbnh;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1002
    iget-object v2, p0, Lbnh$b;->h:Lbnh;

    invoke-static {v2}, Lbnh;->i(Lbnh;)Lboi;

    move-result-object v2

    iget-object v3, p0, Lbnh$b;->c:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lboi;->a(Ljava/io/File;)Lcbk;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    new-instance v1, Lbnh$c;

    iget-object v2, p0, Lbnh$b;->h:Lbnh;

    iget-object v3, p0, Lbnh$b;->a:Ljava/lang/String;

    iget-wide v4, p0, Lbnh$b;->g:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lbnh$c;-><init>(Lbnh;Ljava/lang/String;J[Lcbk;[JB)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :goto_1
    return-object v1

    .line 1007
    :goto_2
    iget-object v1, p0, Lbnh$b;->h:Lbnh;

    invoke-static {v1}, Lbnh;->h(Lbnh;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1008
    aget-object v1, v6, v0

    if-eqz v1, :cond_2

    .line 1009
    aget-object v1, v6, v0

    invoke-static {v1}, Lbnq;->a(Ljava/io/Closeable;)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1014
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1007
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method final a(Lcaw;)V
    .locals 6

    .prologue
    .line 981
    iget-object v1, p0, Lbnh$b;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 982
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lcaw;->g(I)Lcaw;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lcaw;->j(J)Lcaw;

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_0
    return-void
.end method

.method final a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 966
    array-length v0, p1

    iget-object v1, p0, Lbnh$b;->h:Lbnh;

    invoke-static {v1}, Lbnh;->h(Lbnh;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 967
    invoke-static {p1}, Lbnh$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 971
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 972
    iget-object v1, p0, Lbnh$b;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    :catch_0
    move-exception v0

    invoke-static {p1}, Lbnh$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 976
    :cond_1
    return-void
.end method
