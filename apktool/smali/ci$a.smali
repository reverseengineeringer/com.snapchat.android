.class public final Lci$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lci$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lci$a$a;

.field private c:Lci$a$a;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lci$a$a;

    invoke-direct {v0, v1}, Lci$a$a;-><init>(B)V

    iput-object v0, p0, Lci$a;->b:Lci$a$a;

    .line 156
    iget-object v0, p0, Lci$a;->b:Lci$a$a;

    iput-object v0, p0, Lci$a;->c:Lci$a$a;

    .line 157
    iput-boolean v1, p0, Lci$a;->d:Z

    .line 163
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lci$a;->a:Ljava/lang/String;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lci$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lci$a;
    .locals 1

    .prologue
    .line 235
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lci$a;
    .locals 2

    .prologue
    .line 245
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 378
    new-instance v1, Lci$a$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lci$a$a;-><init>(B)V

    iget-object v0, p0, Lci$a;->c:Lci$a$a;

    iput-object v1, v0, Lci$a$a;->c:Lci$a$a;

    iput-object v1, p0, Lci$a;->c:Lci$a$a;

    .line 379
    iput-object p2, v1, Lci$a$a;->b:Ljava/lang/Object;

    .line 380
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lci$a$a;->a:Ljava/lang/String;

    .line 381
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lci$a;
    .locals 1

    .prologue
    .line 195
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 346
    iget-boolean v2, p0, Lci$a;->d:Z

    .line 347
    const-string v1, ""

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lci$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    iget-object v0, p0, Lci$a;->b:Lci$a$a;

    iget-object v0, v0, Lci$a$a;->c:Lci$a$a;

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 352
    if-eqz v2, :cond_0

    iget-object v4, v1, Lci$a$a;->b:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 353
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v0, ", "

    .line 356
    iget-object v4, v1, Lci$a$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 357
    iget-object v4, v1, Lci$a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    :cond_1
    iget-object v4, v1, Lci$a$a;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    iget-object v1, v1, Lci$a$a;->c:Lci$a$a;

    goto :goto_0

    .line 362
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
