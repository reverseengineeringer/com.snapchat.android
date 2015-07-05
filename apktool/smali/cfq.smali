.class final Lcfq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static j:Lcfq;

.field static k:Lcfq;

.field static l:Lcfq;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    new-instance v0, Lcfq;

    invoke-direct {v0}, Lcfq;-><init>()V

    .line 34
    sput-object v0, Lcfq;->j:Lcfq;

    iput-boolean v2, v0, Lcfq;->a:Z

    .line 35
    sget-object v0, Lcfq;->j:Lcfq;

    iput-boolean v1, v0, Lcfq;->b:Z

    .line 36
    sget-object v0, Lcfq;->j:Lcfq;

    iput-boolean v1, v0, Lcfq;->c:Z

    .line 37
    sget-object v0, Lcfq;->j:Lcfq;

    iput-boolean v1, v0, Lcfq;->d:Z

    .line 38
    sget-object v0, Lcfq;->j:Lcfq;

    iput-boolean v2, v0, Lcfq;->e:Z

    .line 40
    sget-object v0, Lcfq;->j:Lcfq;

    iput-boolean v1, v0, Lcfq;->f:Z

    .line 41
    sget-object v0, Lcfq;->j:Lcfq;

    iput-boolean v1, v0, Lcfq;->g:Z

    .line 43
    sget-object v0, Lcfq;->j:Lcfq;

    iput v1, v0, Lcfq;->i:I

    .line 48
    new-instance v0, Lcfq;

    invoke-direct {v0}, Lcfq;-><init>()V

    .line 49
    sput-object v0, Lcfq;->k:Lcfq;

    iput-boolean v2, v0, Lcfq;->a:Z

    .line 50
    sget-object v0, Lcfq;->k:Lcfq;

    iput-boolean v2, v0, Lcfq;->b:Z

    .line 51
    sget-object v0, Lcfq;->k:Lcfq;

    iput-boolean v1, v0, Lcfq;->c:Z

    .line 52
    sget-object v0, Lcfq;->k:Lcfq;

    iput-boolean v1, v0, Lcfq;->d:Z

    .line 53
    sget-object v0, Lcfq;->k:Lcfq;

    iput-boolean v1, v0, Lcfq;->e:Z

    .line 55
    sget-object v0, Lcfq;->j:Lcfq;

    iput v2, v0, Lcfq;->i:I

    .line 60
    new-instance v0, Lcfq;

    invoke-direct {v0}, Lcfq;-><init>()V

    .line 61
    sput-object v0, Lcfq;->l:Lcfq;

    iput-boolean v1, v0, Lcfq;->a:Z

    .line 62
    sget-object v0, Lcfq;->l:Lcfq;

    iput-boolean v2, v0, Lcfq;->b:Z

    .line 63
    sget-object v0, Lcfq;->l:Lcfq;

    iput-boolean v1, v0, Lcfq;->c:Z

    .line 64
    sget-object v0, Lcfq;->l:Lcfq;

    iput-boolean v2, v0, Lcfq;->d:Z

    .line 65
    sget-object v0, Lcfq;->l:Lcfq;

    iput-boolean v1, v0, Lcfq;->e:Z

    .line 66
    sget-object v0, Lcfq;->l:Lcfq;

    iput-boolean v1, v0, Lcfq;->h:Z

    .line 68
    sget-object v0, Lcfq;->l:Lcfq;

    const/4 v1, 0x2

    iput v1, v0, Lcfq;->i:I

    .line 69
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcfq;->a:Z

    .line 21
    iput-boolean v0, p0, Lcfq;->b:Z

    .line 22
    iput-boolean v1, p0, Lcfq;->c:Z

    .line 23
    iput-boolean v1, p0, Lcfq;->d:Z

    .line 24
    iput-boolean v1, p0, Lcfq;->e:Z

    .line 26
    iput-boolean v0, p0, Lcfq;->f:Z

    .line 27
    iput-boolean v0, p0, Lcfq;->g:Z

    .line 28
    iput-boolean v0, p0, Lcfq;->h:Z

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 73
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcfq;->a:Z

    invoke-virtual {p0, p1, v0, v1}, Lcfq;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x24

    const/16 v2, 0x2e

    .line 91
    if-nez p1, :cond_0

    const-string v0, "ANONYMOUS"

    .line 99
    :goto_0
    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lcfq;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    if-eqz p3, :cond_3

    .line 97
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 113
    if-lez v0, :cond_0

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lcfq;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method
