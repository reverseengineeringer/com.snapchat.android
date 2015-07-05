.class final Lblk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lblv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lblk;

.field private final b:I

.field private final c:Lbma;

.field private final d:Z


# direct methods
.method constructor <init>(Lblk;ILbma;Z)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lblk$a;->a:Lblk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lblk$a;->b:I

    .line 209
    iput-object p3, p0, Lblk$a;->c:Lbma;

    .line 210
    iput-boolean p4, p0, Lblk$a;->d:Z

    .line 211
    return-void
.end method


# virtual methods
.method public final a(Lbma;)Lbmc;
    .locals 4

    .prologue
    .line 222
    iget v0, p0, Lblk$a;->b:I

    iget-object v1, p0, Lblk$a;->a:Lblk;

    iget-object v1, v1, Lblk;->a:Lbly;

    iget-object v1, v1, Lbly;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    new-instance v0, Lblk$a;

    iget-object v1, p0, Lblk$a;->a:Lblk;

    iget v2, p0, Lblk$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lblk$a;->d:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lblk$a;-><init>(Lblk;ILbma;Z)V

    .line 225
    iget-object v0, p0, Lblk$a;->a:Lblk;

    iget-object v0, v0, Lblk;->a:Lbly;

    iget-object v0, v0, Lbly;->h:Ljava/util/List;

    iget v1, p0, Lblk$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblv;

    invoke-interface {v0}, Lblv;->a()Lbmc;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lblk$a;->a:Lblk;

    iget-boolean v1, p0, Lblk$a;->d:Z

    invoke-virtual {v0, p1, v1}, Lblk;->a(Lbma;Z)Lbmc;

    move-result-object v0

    goto :goto_0
.end method
