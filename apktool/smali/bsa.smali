.class public final Lbsa;
.super Ljava/lang/Object;

# interfaces
.implements Lbrv;


# instance fields
.field private a:Lbrv;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbrv;Lbsc;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbsa;->a:Lbrv;

    .line 14
    iget-object v0, p2, Lbsc;->k:Ljava/lang/String;

    iput-object v0, p0, Lbsa;->b:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbsa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->d()I

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lbud;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbsa;->a:Lbrv;

    invoke-interface {v0}, Lbrv;->i()Lbud;

    move-result-object v0

    return-object v0
.end method
