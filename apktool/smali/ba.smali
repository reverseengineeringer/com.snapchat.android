.class public Lba;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field h:Ljava/util/List;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lba;->a:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lba;->b:Z

    .line 21
    iput-boolean v1, p0, Lba;->c:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->d:Z

    .line 23
    iput-boolean v1, p0, Lba;->e:Z

    .line 24
    invoke-static {}, Lba;->b()Z

    move-result v0

    iput-boolean v0, p0, Lba;->f:Z

    .line 25
    const-string v0, "com.crittercism/dumps"

    iput-object v0, p0, Lba;->g:Ljava/lang/String;

    .line 26
    const-string v0, "Developer Reply"

    iput-object v0, p0, Lba;->i:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lba;->j:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lba;->k:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lba;->h:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Lba;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lba;->a:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lba;->b:Z

    .line 21
    iput-boolean v1, p0, Lba;->c:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->d:Z

    .line 23
    iput-boolean v1, p0, Lba;->e:Z

    .line 24
    invoke-static {}, Lba;->b()Z

    move-result v0

    iput-boolean v0, p0, Lba;->f:Z

    .line 25
    const-string v0, "com.crittercism/dumps"

    iput-object v0, p0, Lba;->g:Ljava/lang/String;

    .line 26
    const-string v0, "Developer Reply"

    iput-object v0, p0, Lba;->i:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lba;->j:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lba;->k:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lba;->h:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lba;->a:Ljava/lang/String;

    iput-object v0, p0, Lba;->a:Ljava/lang/String;

    .line 58
    iget-boolean v0, p1, Lba;->b:Z

    iput-boolean v0, p0, Lba;->b:Z

    .line 59
    iget-boolean v0, p1, Lba;->c:Z

    iput-boolean v0, p0, Lba;->c:Z

    .line 60
    iget-boolean v0, p1, Lba;->d:Z

    iput-boolean v0, p0, Lba;->d:Z

    .line 61
    iget-boolean v0, p1, Lba;->e:Z

    iput-boolean v0, p0, Lba;->e:Z

    .line 62
    iget-boolean v0, p1, Lba;->f:Z

    iput-boolean v0, p0, Lba;->f:Z

    .line 63
    iget-object v0, p1, Lba;->g:Ljava/lang/String;

    iput-object v0, p0, Lba;->g:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lba;->i:Ljava/lang/String;

    iput-object v0, p0, Lba;->i:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lba;->k:Ljava/util/List;

    iget-object v1, p0, Lba;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lba;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_0
    iget-object v0, p1, Lba;->h:Ljava/util/List;

    iget-object v1, p0, Lba;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lba;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_1
    iget-object v0, p1, Lba;->j:Ljava/lang/String;

    iput-object v0, p0, Lba;->j:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 210
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    if-nez p0, :cond_1

    .line 159
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final b()Z
    .locals 2

    .prologue
    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lba;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    instance-of v1, p1, Lba;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    check-cast p1, Lba;

    .line 142
    iget-boolean v1, p0, Lba;->b:Z

    iget-boolean v2, p1, Lba;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lba;->e:Z

    iget-boolean v2, p1, Lba;->e:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lba;->d:Z

    iget-boolean v2, p1, Lba;->d:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lba;->f:Z

    iget-boolean v2, p1, Lba;->f:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lba;->c:Z

    iget-boolean v2, p1, Lba;->c:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lba;->a:Ljava/lang/String;

    iget-object v2, p1, Lba;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lba;->i:Ljava/lang/String;

    iget-object v2, p1, Lba;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lba;->g:Ljava/lang/String;

    iget-object v2, p1, Lba;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lba;->k:Ljava/util/List;

    iget-object v2, p1, Lba;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lba;->h:Ljava/util/List;

    iget-object v2, p1, Lba;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lba;->j:Ljava/lang/String;

    iget-object v2, p1, Lba;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lba;->a:Ljava/lang/String;

    invoke-static {v0}, Lba;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget-object v3, p0, Lba;->i:Ljava/lang/String;

    invoke-static {v3}, Lba;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-object v3, p0, Lba;->g:Ljava/lang/String;

    invoke-static {v3}, Lba;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-object v3, p0, Lba;->j:Ljava/lang/String;

    invoke-static {v3}, Lba;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    iget-object v3, p0, Lba;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    .line 183
    iget-object v3, p0, Lba;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    .line 185
    iget-boolean v0, p0, Lba;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    .line 188
    shl-int/lit8 v4, v0, 0x1

    .line 189
    iget-boolean v0, p0, Lba;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 190
    shl-int/lit8 v4, v0, 0x1

    .line 191
    iget-boolean v0, p0, Lba;->d:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 192
    shl-int/lit8 v4, v0, 0x1

    .line 193
    iget-boolean v0, p0, Lba;->f:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 194
    shl-int/lit8 v0, v0, 0x1

    .line 195
    iget-boolean v4, p0, Lba;->c:Z

    if-eqz v4, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 197
    mul-int/lit8 v1, v3, 0x1f

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 200
    return v0

    :cond_0
    move v0, v2

    .line 185
    goto :goto_0

    :cond_1
    move v0, v2

    .line 189
    goto :goto_1

    :cond_2
    move v0, v2

    .line 191
    goto :goto_2

    :cond_3
    move v0, v2

    .line 193
    goto :goto_3

    :cond_4
    move v1, v2

    .line 195
    goto :goto_4
.end method
