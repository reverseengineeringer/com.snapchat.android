.class public final Lcik;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcik;


# instance fields
.field public a:Lcil;

.field private c:Lcil;

.field private d:Lcil;

.field private e:Lcil;

.field private f:Lcil;


# direct methods
.method protected constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcil;

    const/4 v1, 0x6

    new-array v1, v1, [Lcij;

    sget-object v2, Lciv;->a:Lciv;

    aput-object v2, v1, v4

    sget-object v2, Lciz;->a:Lciz;

    aput-object v2, v1, v5

    sget-object v2, Lcii;->a:Lcii;

    aput-object v2, v1, v6

    sget-object v2, Lcim;->a:Lcim;

    aput-object v2, v1, v7

    sget-object v2, Lciq;->a:Lciq;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcir;->a:Lcir;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcil;-><init>([Lcij;)V

    iput-object v0, p0, Lcik;->a:Lcil;

    .line 116
    new-instance v0, Lcil;

    const/4 v1, 0x7

    new-array v1, v1, [Lcij;

    sget-object v2, Lcix;->a:Lcix;

    aput-object v2, v1, v4

    sget-object v2, Lciv;->a:Lciv;

    aput-object v2, v1, v5

    sget-object v2, Lciz;->a:Lciz;

    aput-object v2, v1, v6

    sget-object v2, Lcii;->a:Lcii;

    aput-object v2, v1, v7

    sget-object v2, Lcim;->a:Lcim;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lciq;->a:Lciq;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcir;->a:Lcir;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcil;-><init>([Lcij;)V

    iput-object v0, p0, Lcik;->c:Lcil;

    .line 126
    new-instance v0, Lcil;

    const/4 v1, 0x5

    new-array v1, v1, [Lcij;

    sget-object v2, Lciu;->a:Lciu;

    aput-object v2, v1, v4

    sget-object v2, Lciw;->a:Lciw;

    aput-object v2, v1, v5

    sget-object v2, Lciz;->a:Lciz;

    aput-object v2, v1, v6

    sget-object v2, Lciq;->a:Lciq;

    aput-object v2, v1, v7

    sget-object v2, Lcir;->a:Lcir;

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lcil;-><init>([Lcij;)V

    iput-object v0, p0, Lcik;->d:Lcil;

    .line 134
    new-instance v0, Lcil;

    const/4 v1, 0x5

    new-array v1, v1, [Lcij;

    sget-object v2, Lciu;->a:Lciu;

    aput-object v2, v1, v4

    sget-object v2, Lciy;->a:Lciy;

    aput-object v2, v1, v5

    sget-object v2, Lciw;->a:Lciw;

    aput-object v2, v1, v6

    sget-object v2, Lciz;->a:Lciz;

    aput-object v2, v1, v7

    sget-object v2, Lcir;->a:Lcir;

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lcil;-><init>([Lcij;)V

    iput-object v0, p0, Lcik;->e:Lcil;

    .line 142
    new-instance v0, Lcil;

    new-array v1, v7, [Lcij;

    sget-object v2, Lciw;->a:Lciw;

    aput-object v2, v1, v4

    sget-object v2, Lciz;->a:Lciz;

    aput-object v2, v1, v5

    sget-object v2, Lcir;->a:Lcir;

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcil;-><init>([Lcij;)V

    iput-object v0, p0, Lcik;->f:Lcil;

    .line 147
    return-void
.end method

.method public static a()Lcik;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcik;->b:Lcik;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcik;

    invoke-direct {v0}, Lcik;-><init>()V

    sput-object v0, Lcik;->b:Lcik;

    .line 92
    :cond_0
    sget-object v0, Lcik;->b:Lcik;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConverterManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcik;->a:Lcil;

    iget-object v1, v1, Lcil;->a:[Lcij;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instant,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcik;->c:Lcil;

    iget-object v1, v1, Lcil;->a:[Lcij;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " partial,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcik;->d:Lcil;

    iget-object v1, v1, Lcil;->a:[Lcij;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcik;->e:Lcil;

    iget-object v1, v1, Lcil;->a:[Lcij;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " period,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcik;->f:Lcil;

    iget-object v1, v1, Lcil;->a:[Lcij;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interval]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
