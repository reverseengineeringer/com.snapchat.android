.class Lbop;
.super Lbpi;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lbpi;-><init>()V

    .line 31
    iput-object p1, p0, Lbop;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lbpg;)Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "content"

    iget-object v1, p1, Lbpg;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lbpg;)Lbpi$a;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lbpi$a;

    invoke-virtual {p0, p1}, Lbop;->c(Lbpg;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lbpd$d;->b:Lbpd$d;

    invoke-direct {v0, v1, v2}, Lbpi$a;-><init>(Ljava/io/InputStream;Lbpd$d;)V

    return-object v0
.end method

.method final c(Lbpg;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lbop;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    iget-object v1, p1, Lbpg;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
