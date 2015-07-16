.class public final Lamc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lamc;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lamc;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lamc;->e:Ljava/lang/String;

    .line 22
    iput p4, p0, Lamc;->d:I

    .line 23
    iput-wide p5, p0, Lamc;->c:J

    .line 24
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    invoke-static {p0}, Lcl;->a(Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "contentKey"

    iget-object v2, p0, Lamc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "requestId"

    iget-object v2, p0, Lamc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lamc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "sizeBytes"

    iget v2, p0, Lamc;->d:I

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;I)Lcl$a;

    move-result-object v0

    const-string v1, "expiration"

    iget-wide v2, p0, Lamc;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcl$a;->a(Ljava/lang/String;J)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
