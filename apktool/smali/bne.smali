.class public final Lbne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbng;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbzx;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbzx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lbmw;

.field private final d:Lbnw;

.field private e:Lbnx;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lbzx;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    invoke-static {v0}, Lbmp;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbne;->a:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lbzx;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    .line 64
    invoke-static {v1}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    .line 65
    invoke-static {v2}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    .line 66
    invoke-static {v2}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    .line 67
    invoke-static {v2}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, Lbmp;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbne;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lbmw;Lbnw;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lbne;->c:Lbmw;

    .line 75
    iput-object p2, p0, Lbne;->d:Lbnw;

    .line 76
    return-void
.end method

.method private static a(Lblz;Lbzx;)Z
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lblz;->c:Lblz;

    if-ne p0, v0, :cond_0

    .line 225
    sget-object v0, Lbne;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lblz;->d:Lblz;

    if-ne p0, v0, :cond_1

    .line 227
    sget-object v0, Lbne;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Lbmc;)Lbmd;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lbna;

    iget-object v1, p1, Lbmc;->f:Lblu;

    iget-object v2, p0, Lbne;->e:Lbnx;

    iget-object v2, v2, Lbnx;->f:Lbnx$b;

    invoke-static {v2}, Lcad;->a(Lcaj;)Lbzw;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbna;-><init>(Lblu;Lbzw;)V

    return-object v0
.end method

.method public final a(Lbma;J)Lcai;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lbne;->e:Lbnx;

    invoke-virtual {v0}, Lbnx;->d()Lcai;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbne;->e:Lbnx;

    invoke-virtual {v0}, Lbnx;->d()Lcai;

    move-result-object v0

    invoke-interface {v0}, Lcai;->close()V

    .line 101
    return-void
.end method

.method public final a(Lbma;)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lbne;->e:Lbnx;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lbne;->c:Lbmw;

    invoke-virtual {v0}, Lbmw;->b()V

    .line 86
    iget-object v0, p0, Lbne;->c:Lbmw;

    invoke-virtual {v0}, Lbmw;->c()Z

    move-result v4

    .line 87
    iget-object v0, p0, Lbne;->c:Lbmw;

    iget-object v0, v0, Lbmw;->c:Lblo;

    iget-object v0, v0, Lblo;->g:Lblz;

    invoke-static {v0}, Lbnb;->a(Lblz;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v5, p0, Lbne;->d:Lbnw;

    iget-object v1, p0, Lbne;->d:Lbnw;

    .line 90
    iget-object v6, v1, Lbnw;->a:Lblz;

    iget-object v7, p1, Lbma;->c:Lblu;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, v7, Lblu;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lbnl;

    sget-object v3, Lbnl;->b:Lbzx;

    iget-object v9, p1, Lbma;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v9}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbnl;

    sget-object v3, Lbnl;->c:Lbzx;

    invoke-virtual {p1}, Lbma;->a()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lbnb;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lbma;->a()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lbmw;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lblz;->c:Lblz;

    if-ne v3, v6, :cond_2

    new-instance v3, Lbnl;

    sget-object v9, Lbnl;->g:Lbzx;

    invoke-direct {v3, v9, v0}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbnl;

    sget-object v3, Lbnl;->f:Lbzx;

    invoke-direct {v0, v3, v1}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Lbnl;

    sget-object v1, Lbnl;->d:Lbzx;

    invoke-virtual {p1}, Lbma;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v7, Lblu;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v10, v0, 0x2

    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_6

    invoke-virtual {v7, v3}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbzx;->a(Ljava/lang/String;)Lbzx;

    move-result-object v11

    invoke-virtual {v7, v3}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v11}, Lbne;->a(Lblz;Lbzx;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbnl;->b:Lbzx;

    invoke-virtual {v11, v0}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbnl;->c:Lbzx;

    invoke-virtual {v11, v0}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbnl;->d:Lbzx;

    invoke-virtual {v11, v0}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbnl;->e:Lbzx;

    invoke-virtual {v11, v0}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbnl;->f:Lbzx;

    invoke-virtual {v11, v0}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbnl;->g:Lbzx;

    invoke-virtual {v11, v0}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lbnl;

    invoke-direct {v0, v11, v12}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    sget-object v0, Lblz;->d:Lblz;

    if-ne v0, v6, :cond_3

    new-instance v0, Lbnl;

    sget-object v3, Lbnl;->e:Lbzx;

    invoke-direct {v0, v3, v1}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move v1, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnl;

    iget-object v0, v0, Lbnl;->h:Lbzx;

    invoke-virtual {v0, v11}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnl;

    iget-object v0, v0, Lbnl;->i:Lbzx;

    invoke-virtual {v0}, Lbzx;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Lbnl;

    invoke-direct {v12, v11, v0}, Lbnl;-><init>(Lbzx;Ljava/lang/String;)V

    invoke-interface {v8, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 89
    :cond_6
    invoke-virtual {v5, v8, v4}, Lbnw;->a(Ljava/util/List;Z)Lbnx;

    move-result-object v0

    iput-object v0, p0, Lbne;->e:Lbnx;

    .line 92
    iget-object v0, p0, Lbne;->e:Lbnx;

    iget-object v0, v0, Lbnx;->h:Lbnx$c;

    iget-object v1, p0, Lbne;->c:Lbmw;

    iget-object v1, v1, Lbmw;->b:Lbly;

    iget v1, v1, Lbly;->x:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcak;->a(JLjava/util/concurrent/TimeUnit;)Lcak;

    goto/16 :goto_0
.end method

.method public final a(Lbnc;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbne;->e:Lbnx;

    invoke-virtual {v0}, Lbnx;->d()Lcai;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbnc;->a(Lcai;)V

    .line 97
    return-void
.end method

.method public final b()Lbmc$a;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lbne;->e:Lbnx;

    invoke-virtual {v0}, Lbnx;->c()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lbne;->d:Lbnw;

    iget-object v7, v0, Lbnw;->a:Lblz;

    const/4 v2, 0x0

    const-string v1, "HTTP/1.1"

    new-instance v8, Lblu$a;

    invoke-direct {v8}, Lblu$a;-><init>()V

    sget-object v0, Lbmz;->d:Ljava/lang/String;

    invoke-virtual {v7}, Lblz;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lblu$a;->b(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move v5, v3

    :goto_0
    if-ge v5, v9, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnl;

    iget-object v10, v0, Lbnl;->h:Lbzx;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnl;

    iget-object v0, v0, Lbnl;->i:Lbzx;

    invoke-virtual {v0}, Lbzx;->a()Ljava/lang/String;

    move-result-object v11

    move-object v0, v1

    move v1, v3

    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lbnl;->a:Lbzx;

    invoke-virtual {v10, v12}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v13, v2

    move-object v2, v1

    move v1, v13

    goto :goto_1

    :cond_1
    sget-object v12, Lbnl;->g:Lbzx;

    invoke-virtual {v10, v12}, Lbzx;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-static {v7, v10}, Lbne;->a(Lblz;Lbzx;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10}, Lbzx;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v1}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbnf;->a(Ljava/lang/String;)Lbnf;

    move-result-object v0

    new-instance v1, Lbmc$a;

    invoke-direct {v1}, Lbmc$a;-><init>()V

    iput-object v7, v1, Lbmc$a;->b:Lblz;

    iget v2, v0, Lbnf;->b:I

    iput v2, v1, Lbmc$a;->c:I

    iget-object v0, v0, Lbnf;->c:Ljava/lang/String;

    iput-object v0, v1, Lbmc$a;->d:Ljava/lang/String;

    invoke-virtual {v8}, Lblu$a;->a()Lblu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbmc$a;->a(Lblu;)Lbmc$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method
