.class final Lcif$c;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcif;

.field private final b:Z


# direct methods
.method constructor <init>(Lcif;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcif$c;->a:Lcif;

    .line 352
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 353
    iput-boolean p3, p0, Lcif$c;->b:Z

    .line 354
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x55

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 358
    const-string v1, "The"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 360
    if-eqz v1, :cond_0

    .line 361
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    :cond_0
    const-string v1, " instant is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-static {}, Lckc$a;->b()Lcjw;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcif$c;->a:Lcif;

    iget-object v2, v2, Lchj;->a:Lcgf;

    invoke-virtual {v1, v2}, Lcjw;->a(Lcgf;)Lcjw;

    move-result-object v1

    .line 368
    iget-boolean v2, p0, Lcif$c;->b:Z

    if-eqz v2, :cond_1

    .line 369
    const-string v2, "below the supported minimum of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    iget-object v2, p0, Lcif$c;->a:Lcif;

    iget-object v2, v2, Lcif;->E:Lcgg;

    iget-wide v2, v2, Lchg;->a:J

    invoke-virtual {v1, v0, v2, v3, v4}, Lcjw;->a(Ljava/lang/StringBuffer;JLcgf;)V

    .line 376
    :goto_0
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    iget-object v1, p0, Lcif$c;->a:Lcif;

    iget-object v1, v1, Lchj;->a:Lcgf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 378
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 372
    :cond_1
    const-string v2, "above the supported maximum of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    iget-object v2, p0, Lcif$c;->a:Lcif;

    iget-object v2, v2, Lcif;->F:Lcgg;

    iget-wide v2, v2, Lchg;->a:J

    invoke-virtual {v1, v0, v2, v3, v4}, Lcjw;->a(Ljava/lang/StringBuffer;JLcgf;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IllegalArgumentException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcif$c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
