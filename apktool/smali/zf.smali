.class public final Lzf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field private final d:Z

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Lbjq;Z)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p2, p0, Lzf;->d:Z

    .line 23
    invoke-virtual {p1}, Lbjq;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzf;->a:I

    .line 24
    invoke-virtual {p1}, Lbjq;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbjq;->f()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzf;->e:I

    .line 26
    invoke-virtual {p1}, Lbjq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbjq;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lzf;->f:I

    .line 28
    invoke-virtual {p1}, Lbjq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lbjq;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lzf;->b:I

    .line 30
    if-eqz p2, :cond_3

    iget v0, p0, Lzf;->f:I

    :goto_3
    iput v0, p0, Lzf;->c:I

    .line 31
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lbjq;->c()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 28
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 30
    :cond_3
    iget v0, p0, Lzf;->e:I

    goto :goto_3
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lci;->a(Ljava/lang/Class;)Lci$a;

    move-result-object v0

    const-string v1, "isResume"

    iget-boolean v2, p0, Lzf;->d:Z

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    const-string v1, "interval"

    iget v2, p0, Lzf;->a:I

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;I)Lci$a;

    move-result-object v0

    const-string v1, "minSnapsAfterAd"

    iget v2, p0, Lzf;->b:I

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;I)Lci$a;

    move-result-object v0

    const-string v1, "firstAllowedIndex"

    iget v2, p0, Lzf;->c:I

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;I)Lci$a;

    move-result-object v0

    invoke-virtual {v0}, Lci$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
