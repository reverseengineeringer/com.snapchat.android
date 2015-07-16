.class final Lbml$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbmw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbml;

.field private final b:I

.field private final c:Lbnb;

.field private final d:Z


# direct methods
.method constructor <init>(Lbml;ILbnb;Z)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lbml$a;->a:Lbml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lbml$a;->b:I

    .line 209
    iput-object p3, p0, Lbml$a;->c:Lbnb;

    .line 210
    iput-boolean p4, p0, Lbml$a;->d:Z

    .line 211
    return-void
.end method


# virtual methods
.method public final a(Lbnb;)Lbnd;
    .locals 4

    .prologue
    .line 222
    iget v0, p0, Lbml$a;->b:I

    iget-object v1, p0, Lbml$a;->a:Lbml;

    iget-object v1, v1, Lbml;->a:Lbmz;

    iget-object v1, v1, Lbmz;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 224
    new-instance v0, Lbml$a;

    iget-object v1, p0, Lbml$a;->a:Lbml;

    iget v2, p0, Lbml$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lbml$a;->d:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lbml$a;-><init>(Lbml;ILbnb;Z)V

    .line 225
    iget-object v0, p0, Lbml$a;->a:Lbml;

    iget-object v0, v0, Lbml;->a:Lbmz;

    iget-object v0, v0, Lbmz;->h:Ljava/util/List;

    iget v1, p0, Lbml$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmw;

    invoke-interface {v0}, Lbmw;->a()Lbnd;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbml$a;->a:Lbml;

    iget-boolean v1, p0, Lbml$a;->d:Z

    invoke-virtual {v0, p1, v1}, Lbml;->a(Lbnb;Z)Lbnd;

    move-result-object v0

    goto :goto_0
.end method
