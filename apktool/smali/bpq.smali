.class Lbpq;
.super Lbqj;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lbqj;-><init>()V

    .line 31
    iput-object p1, p0, Lbpq;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lbqh;)Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "content"

    iget-object v1, p1, Lbqh;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lbqh;)Lbqj$a;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lbqj$a;

    invoke-virtual {p0, p1}, Lbpq;->c(Lbqh;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lbqe$d;->b:Lbqe$d;

    invoke-direct {v0, v1, v2}, Lbqj$a;-><init>(Ljava/io/InputStream;Lbqe$d;)V

    return-object v0
.end method

.method final c(Lbqh;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lbpq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    iget-object v1, p1, Lbqh;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
