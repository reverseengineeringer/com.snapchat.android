.class final Lbos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field final b:Lcax;

.field private final c:Lcbd;


# direct methods
.method public constructor <init>(Lcax;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lbos$1;

    invoke-direct {v0, p0, p1}, Lbos$1;-><init>(Lbos;Lcbk;)V

    .line 65
    new-instance v1, Lbos$2;

    invoke-direct {v1, p0}, Lbos$2;-><init>(Lbos;)V

    .line 77
    new-instance v2, Lcbd;

    invoke-direct {v2, v0, v1}, Lcbd;-><init>(Lcbk;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lbos;->c:Lcbd;

    .line 78
    iget-object v0, p0, Lbos;->c:Lcbd;

    invoke-static {v0}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v0

    iput-object v0, p0, Lbos;->b:Lcax;

    .line 79
    return-void
.end method

.method private a()Lcay;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lbos;->b:Lcax;

    invoke-interface {v0}, Lcax;->h()I

    move-result v0

    .line 102
    iget-object v1, p0, Lbos;->b:Lcax;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcax;->c(J)Lcay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lbom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lbos;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lbos;->a:I

    .line 84
    iget-object v0, p0, Lbos;->b:Lcax;

    invoke-interface {v0}, Lcax;->h()I

    move-result v1

    .line 85
    if-gez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numberOfPairs < 0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/16 v0, 0x400

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numberOfPairs > 1024: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 90
    invoke-direct {p0}, Lbos;->a()Lcay;

    move-result-object v3

    invoke-virtual {v3}, Lcay;->c()Lcay;

    move-result-object v3

    .line 91
    invoke-direct {p0}, Lbos;->a()Lcay;

    move-result-object v4

    .line 92
    iget-object v5, v3, Lcay;->c:[B

    array-length v5, v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "name.size == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v5, Lbom;

    invoke-direct {v5, v3, v4}, Lbom;-><init>(Lcay;Lcay;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    iget v0, p0, Lbos;->a:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lbos;->c:Lcbd;

    invoke-virtual {v0}, Lcbd;->b()Z

    iget v0, p0, Lbos;->a:I

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "compressedLimit > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbos;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_4
    return-object v2
.end method
