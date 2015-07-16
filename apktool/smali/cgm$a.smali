.class final Lcgm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcfl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcfo;

.field c:Lcgi;

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcfo;Lcgi;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcgm$a;->a:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcgm$a;->b:Lcfo;

    .line 32
    iput-object p4, p0, Lcgm$a;->c:Lcgi;

    .line 33
    iput p1, p0, Lcgm$a;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    sget-object v1, Lcgr;->k:Lcgr;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcgm$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcgr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcgm$a;->b:Lcfo;

    check-cast v0, Lcgp;

    invoke-virtual {v0, v1}, Lcgp;->b(Lcgr;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
