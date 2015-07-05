.class public final Lbrb;
.super Lba;


# instance fields
.field i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lba;-><init>()V

    .line 28
    const-string v0, "https://api.crittercism.com"

    iput-object v0, p0, Lbrb;->i:Ljava/lang/String;

    .line 30
    const-string v0, "https://apm.crittercism.com"

    iput-object v0, p0, Lbrb;->j:Ljava/lang/String;

    .line 32
    const-string v0, "524c99a04002057fcd000001"

    iput-object v0, p0, Lbrb;->k:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lba;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lba;-><init>(Lba;)V

    .line 28
    const-string v0, "https://api.crittercism.com"

    iput-object v0, p0, Lbrb;->i:Ljava/lang/String;

    .line 30
    const-string v0, "https://apm.crittercism.com"

    iput-object v0, p0, Lbrb;->j:Ljava/lang/String;

    .line 32
    const-string v0, "524c99a04002057fcd000001"

    iput-object v0, p0, Lbrb;->k:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lba;->a()Ljava/util/List;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lbrb;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 96
    instance-of v0, p1, Lbrb;

    if-nez v0, :cond_0

    move v0, v1

    .line 103
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 100
    check-cast v0, Lbrb;

    .line 103
    invoke-super {p0, p1}, Lba;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbrb;->i:Ljava/lang/String;

    iget-object v3, v0, Lbrb;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lbrb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbrb;->j:Ljava/lang/String;

    iget-object v3, v0, Lbrb;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lbrb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbrb;->k:Ljava/lang/String;

    iget-object v0, v0, Lbrb;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Lbrb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lba;->hashCode()I

    move-result v0

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-object v1, p0, Lbrb;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-object v1, p0, Lbrb;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v1, p0, Lbrb;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    return v0
.end method
