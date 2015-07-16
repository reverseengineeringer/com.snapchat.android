.class public final Ley$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lew;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ley$a;

.field final synthetic d:J

.field final synthetic e:Ley;


# direct methods
.method public constructor <init>(Ley;Ljava/lang/CharSequence;Ljava/lang/String;Ley$a;)V
    .locals 2

    .prologue
    .line 2835
    iput-object p1, p0, Ley$2;->e:Ley;

    iput-object p2, p0, Ley$2;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Ley$2;->b:Ljava/lang/String;

    iput-object p4, p0, Ley$2;->c:Ley$a;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ley$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2838
    new-instance v1, Lex;

    iget-object v2, p0, Ley$2;->e:Ley;

    iget-object v3, p0, Ley$2;->a:Ljava/lang/CharSequence;

    iget-object v4, p0, Ley$2;->b:Ljava/lang/String;

    iget-object v5, p0, Ley$2;->c:Ley$a;

    iget-wide v6, p0, Ley$2;->d:J

    invoke-direct/range {v1 .. v7}, Lex;-><init>(Ley;Ljava/lang/CharSequence;Ljava/lang/String;Ley$a;J)V

    return-object v1
.end method
